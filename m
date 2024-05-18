Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43B7815AF1
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 14:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716043943; cv=none; b=TR5pKuCMx1YK+MjctxLB8a/XLnUSFf3fI1mAZfIpShThX4p9NFQQML7x7UrQxgCP50dZJC0o8m6EX/RPOY55WAwiKpg7NIxPsUSQqHH99Rz1TTZudx2ndDl5oL/Msr9+6cT6uptEOWWbjzFVADx/YPKTZz4ZuCFL1HjUaP+b/w8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716043943; c=relaxed/simple;
	bh=h8IM2NcicAVCY+FTcevnpVMbMvHNsvRgmwKYP1jXKV8=;
	h=To:Subject:From:Message-Id:Date; b=aH7J0ef1o+4OLBBoKLMVnt6ajfFEcTv0MSJy5oUHC5OM+fynAKJ/bUBvrse2hUiyZAIBdwJEB2BZa569VRGfehzF8xhcsQc7aDw/Pkg/9JEVG2QZjJwacRFbeWG30PutvC6SjEi3goqK/1kknXzrM+oKxOVCrdyot/W4dqOJzY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XOzjkgUn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XOzjkgUn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D652CC113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 14:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716043942;
	bh=h8IM2NcicAVCY+FTcevnpVMbMvHNsvRgmwKYP1jXKV8=;
	h=To:Subject:From:Date:From;
	b=XOzjkgUnkszRJSjPmk0efRFe+U3uDFL1w5GJmy3MH4/sTqmy3hys1JhIqovMI8wkz
	 KPekPdRD38O3STqubWIH+0Fzjx47ntglj/IyTVm7w68aWFfgkm574i+G0rA0pTFFpf
	 wPf7B35Tf/4XnjebGyJSjOmoXRVGT1th24qdL81mnSvRYQouZZBX9PwlJJYAUsbGXZ
	 vClGn8aCv8vGUQsFzQovahecUdFhH7iyn140AeS/2HV+5+t1xGhdyicyLgtLD8uFci
	 ZkhQG1FFAB5u6omQsMK5Wj6Owq+n5rLWZVxIO4vna0DQ9Ug+/tN5toqs2tqTOgyEyI
	 MknuXf09B2Mzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5750C25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 14:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171604394277.13049.212598164351291080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9720f7f37a9088b8199659a963101195a2b4f2417df425010c5d319f9413f6e9
Date: Sat, 18 May 2024 14:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716043942
