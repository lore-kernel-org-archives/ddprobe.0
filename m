Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E84157487
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734533154; cv=none; b=Y36SIc4Vdu43Zr0kAVJPH2tAu7YZYTTjAITO05Y12lZM/WzvA1Q0gdqZZMLNuoO4R1rj3RTfFWOF2YNofdl+UcurRVyG0rVCBwTORCfhWGl0HvUxg+n+D4mxqbjTHuvAnJkJH/WGBvlp1o5tGDZSGQmc1unjudWKI3ZyrweM+zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734533154; c=relaxed/simple;
	bh=vXveqggcRz1YCA/pxNqy5EHbNuEv1qQ4a4alDfHVFd8=;
	h=To:Subject:From:Message-Id:Date; b=iw0/ij0kHF5Zbr6XAET+zza35yb81qNcCOSgUO19jswRyQG3OMTG+Irx9VY/h5VR/GXKzGlVr6qQgwWfKGO5L74q4XzxckIVzuuNAN9jyhqMik1YehmOUlCjwxGFkshTXGRGqvLa4Nf/DW3KCw92YtKe7ibLaNZkJ8pBrmQDNAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PuALLKkl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PuALLKkl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0611C4CED4
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734533153;
	bh=vXveqggcRz1YCA/pxNqy5EHbNuEv1qQ4a4alDfHVFd8=;
	h=To:Subject:From:Date:From;
	b=PuALLKklhsmGn6JHFwyZ34jRLtoItQwtTojYG/nb6wmYa+2vZDGlRR/ZXUZZekYjb
	 Wbv20bmjGx4seUJh6JXbHy2et6OMyjktSzxoEe/XZrm7UBiQ8cxrjpo1e4m8vLONV2
	 UfsgmQjgJBjnooVtsW0373UepqmU08cCSk2G6P6PDb/JUvI/cX0XpIY/u/pe/E2Ebr
	 2l7UevfS97AgJELzFQSgl6CuB4ZVF9rsM298nH6qrwEnL/ZBDLnFd7W3vHtygiH6es
	 MEOgeK1zG9XoUwndgjT7QpgvzXJPnyf2N74XtxBkzaH71NE8eZIDK29IQCIdpBTZhI
	 u86IqYMPK9ktg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B1FE77187
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173453315361.23164.16099345292795500649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04e400ece2b90934220e21f689565ff3e447ad552960cb189479e004d8349aa3
Date: Wed, 18 Dec 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734533153
