Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31447239570
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759407594; cv=none; b=IiNluU32TBgSdeOJotBthXWwREoxsQ80eCrNji6WmcXiXqZZRcvava5W6fmVER0bnJ4MGDNGOYeHcLdZ1IUCilxPoov9Xl/jzJmcFH7wY0JyWgpm/b7U3GGMjAZ7Y2knj4S/Xu2hNmitjyU/WEpjbR93Gs33FziJvEttP5SJ95g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759407594; c=relaxed/simple;
	bh=G7vHtx94fWweb0/GmVY0l+pA5c2eEpzVxlM7oKwsS10=;
	h=To:Subject:From:Message-Id:Date; b=akiNdTyIhSHGJKX8d8s55rfOXJYnNESzzTL8Oxkm1BaLAxFOIJVlc62+cIUmh5wSkJJlm2XTj8creMrhfAO2R/nG6BtPBhRpngkeob0GPdh4O6L68yhlkJUuONDfV1rnBe248hK04bPbaBUWplyWVsQCW7ywWhCcGxbY8giuNDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ujO2bDe1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ujO2bDe1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B1AC4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759407593;
	bh=G7vHtx94fWweb0/GmVY0l+pA5c2eEpzVxlM7oKwsS10=;
	h=To:Subject:From:Date:From;
	b=ujO2bDe1UK3skmoczheb2ABKX2vd7webnJLNnfCppdfImnwJ/SDdEl3uP092jaHvU
	 ko+LTtaD2fos5O3SScp38bGFA1eDfKYFnfpvFohdgKlnb9Xpa9mauj0LLNlnCRRSbY
	 r9aVlH2Bimj/kL8D6PDXOJ96lgiCoZKXZXo7wbrR31L1/Pjljowne2Y4aKNycLjS0L
	 ul3+uEzAMSTA5xANDwCYWNlh9xvF+UhgCpa+Rmv1tcVYXtX+s436G3+4tdJglXzDMo
	 NfV7VDCjCZsvFOKYGZJRcSWqTVWj3i50HXujmO+tqMrl9YfA2TGU4+0srMmfKiDIxG
	 VuJ5irH0L5Mzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C61CAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175940759358.30533.2782730547729884644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0428428cd4b0878c33f5602de4245f86bb590d6bec938317de29a6e6bd94f74
Date: Thu, 02 Oct 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759407593
