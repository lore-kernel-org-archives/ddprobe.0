Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C76D13191C0
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762189193; cv=none; b=HArnm0GFkhvPlczNKJdc16pD/2Ycl6l2Ey9p5aCjymouNVLPRnyniSEShOYn2uti58FJWo+W6bj+7MUS2/O+oRPGv9RnqtuvLqIkeWGnv4UESmOZCZSsi0dZ24p5ExKn94f6/zL34pvCovLkInbK7cFtaqe9JZK9sYXymVk59Xo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762189193; c=relaxed/simple;
	bh=i2i9Y3JIA5q/LZDaq29W5ET28nwf8my4hHTjuOBWrLk=;
	h=To:Subject:From:Message-Id:Date; b=eCYHvnV65q4ytFZgakh+JU8TfOIC6LpZi0+KypFgFMJzjZzahnzykKM5qG3025qC/SVAPAU0opgOT0wRyAF86plY1iniGz6a67Hha+RREDY1tBepsTIghhjDBlMkWU8YDcn6DO5s1cg6fJqwTtHfxi44JHcIKEhJiAMB55jtt50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PN1h3yRv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PN1h3yRv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D862C4CEFD
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762189193;
	bh=i2i9Y3JIA5q/LZDaq29W5ET28nwf8my4hHTjuOBWrLk=;
	h=To:Subject:From:Date:From;
	b=PN1h3yRvsh3czBH3OwVbyfM+trdpZ2g62+7GE3veDIZvfNfJl5Ut0pmD6su+Ugtpv
	 FrJFf4VIspXgePL+AWw74mp+7juVGjI/40Hv8u1qbEEwBMK2zQM/Dmfh8vOXb7D2nI
	 R3srxzCMJf9Ytj5TuXroVMD1H/BBz5NA1xYoCSZpQZ0sIW7qlbiugkzgHoKlkx3HVB
	 nj2PNM2Zk3kX1k/nqXkqZf7dmhwoIUCa4nFL63vdxYLnIaaxqBGa90SKMuP1u/Su0K
	 wUPDbm9awSKAGBvxKzjX2T1CKtDcwOU42DgsuCtaJ153EpbMRI09I3Pf2JpogMC/Mv
	 5co7+tmN6EtxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900FECCFA03
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176218919358.4306.11553320913001699198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63a1ff51d6ed3439da0133c46dd16a0efd13c58c96c9165156577bfdf4300621
Date: Mon, 03 Nov 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762189193
