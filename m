Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E7A3002B7
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 23:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765408974; cv=none; b=MyoKYcIOaYmPD/Qqoy0LEXC+ywprn8E0uj5hvpci8rtka3UKRRch424AqP3VdmpA4eJRD1usUPu0cqaY7XfpEmXNfz7mJ9HXqB8ZpkVOYb5Rr/veTjJKctuoKTvX1Xz+7H+hgniwI1DcalExTWIfQkUiYONRw9g3qGnuxedN8jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765408974; c=relaxed/simple;
	bh=Rm+YZ8ixgdV55XlHZNB4puXjT+6BQCtuVYAp+4L9t9U=;
	h=To:Subject:From:Message-Id:Date; b=lVnRfuQOli6+j4aczke8SQLr5pyGBIAt4P7NnUMrl6/zq3Fu2xE5aT5kMfUX79nWphjGsNcfEDvPfHuZ/o08qqoBZqGnVR2YZfPE17aztOAaklrgzORGMYHzNmowcqg9fx+A27p+XtYR1khXiRKsWq1pewzvYybpsi0aDjsI/08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gYatvgX4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gYatvgX4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC4CC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 23:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765408973;
	bh=Rm+YZ8ixgdV55XlHZNB4puXjT+6BQCtuVYAp+4L9t9U=;
	h=To:Subject:From:Date:From;
	b=gYatvgX4H2U2Nf3US4p75+GEFCKgRNm7Jkm6Q1WuTspl9s8Y5urGRWHpOSGCkHPv7
	 s2s1UVGKau8DZ1/iRHVxhEvE87rT8/ILMcNT202y9S08MNfA08drxQc7N8ZthDs9D2
	 i5zW53zug+BulJNA5S401OTFQ6lTCobAGnSjpXXXVaYe9etB3zs7IQCrDusR6lFh2T
	 R8sXzB4+kZLLBW7vVkYgHOm/EtURT2/beNxgCutkkQwh+T+bg3UFhgH7ZSGwJuMapk
	 cE9souqefIsFE8OttWlSb3XLDIEm3eyFHVuDNuHlYdvtagWTorddlwuiEfmpA2S/za
	 TTj65IdXuT0Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 997F0D3C932
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 23:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176540897361.1531.2244347953417026779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35cd50cd624090e266e040f5bae0efadec77ac84f9f91f254e4004fa4aaa0131
Date: Wed, 10 Dec 2025 23:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765408973
