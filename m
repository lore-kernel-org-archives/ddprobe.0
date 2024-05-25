Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FD68138E
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 22:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716675263; cv=none; b=JtmQzYQpAQVTPLRiEznsyl3EWXHxcb2tOX9b1KrpW6ndDqwVVuD+E0/if175LreLdMQjeNzpKHCw2bz/neqqqdLtWSGs99pU6g06t8l86oCM5vQawmPoUwn81zG6QpCy4m8JET9drrKnqUIu4gIj/Vb9NF0aCRNUaZFgUZW48HQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716675263; c=relaxed/simple;
	bh=Qg05d1kWxDQVRhn7RM+wZJ9atGjofE81XK6LUfON9+s=;
	h=To:Subject:From:Message-Id:Date; b=rPPAAEsdyRlRuk8tspXtLZaKouBC/z27JHF/GDH3zA/e7KFWfRoohotdVi/WWGe44gnYlmtBa/B7oemV8Vh7K3bRV9actCVj39auy1vUoY5j2m9VKWq7xeiUUsHuU90WjeG2kspDzMD+vrFDU3WBlWb3EuW+fPKb1qOnGnnodhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WBjcO5EV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WBjcO5EV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAABDC2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 22:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716675262;
	bh=Qg05d1kWxDQVRhn7RM+wZJ9atGjofE81XK6LUfON9+s=;
	h=To:Subject:From:Date:From;
	b=WBjcO5EVtbYScgvzNsQbsnH+J18mPTWzL3zRAtOtY2WQ1yyQ3vylQbVejlHL6qegj
	 ARcJXVVg4dzJLnmtttXgGTvnb+NWXZO704j13AIUNoSgSosg3G3PEZHH0u994lzsu0
	 lgjotay5b9s3kxql9Pn7av8LGwCj4cvLwQAvQ9hEdB4UPENefUmqa21YhloDIEVVmQ
	 +sRuSigYNipRbRfkgNPbiywLkpdUIJnA/uxnZ3woDAkcsOCkAboVnznZwPoud3r6gF
	 HmZu3CyzSjrbM61jodxesRG4wrUZX95fzRDq6Mof55HMAkmK3TQFpuOF84tTypynp4
	 4BeIoDPkaEO2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7188C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 22:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171667526277.29468.16323356855708730545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c82d184274f70de55c01109304ef839a0ca641f108719a91830ff92db14d4514
Date: Sat, 25 May 2024 22:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716675262
