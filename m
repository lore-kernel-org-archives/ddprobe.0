Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51FED3191CE
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 23:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783034914; cv=none; b=BXTrI984sDxTAHR+rB50vC3JXUDnym59vTfqUPUoXdKHm2Tz/cLCY8ztX0COy2UX+jTtIiUNk/uKfHhfOm20KRbDC/kGqehZXp1qlfozSRp3SbYegXH6G4QRD11MIC4qkTgHDMsb1tJxm1lKg82tESWGeNAgH7xO7gHD2CoM/TE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783034914; c=relaxed/simple;
	bh=2VJIxh+MatqcO0cv0+ZnZl07DVszx3oCUVcSU90CkgE=;
	h=To:Subject:From:Message-Id:Date; b=XlmPgzexXIRti1U2tF6yySPBc8m1HwTOxVDsFImkjobYXeDw3rusLmOGhRciV3X68BydFIhEprSl2gwW7DqhH+t5N/ELGb9XXBhzR2Uron2Xcv6J1NBybRzzSmNbSIqz+5DLxhmATpuun+AJpP15rC0X70S6eLI61R4k8pd2gQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ipusnorn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ipusnorn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2EDBC19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 23:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783034913;
	bh=2VJIxh+MatqcO0cv0+ZnZl07DVszx3oCUVcSU90CkgE=;
	h=To:Subject:From:Date:From;
	b=Ipusnornkgfvoh4Dq1/mzyp9yKw4TtuKfewuvuf7IsPtSbnThT/d3sF1HAKb+BGPG
	 clZjkozhqY4Bm9y+u/UagPvslRrTtvEtlA5LxySjfihNxcVCnsYz0PsOc4R0lbCD68
	 ucKep4Uy9+x8J+7IKayWC7wXRzoIhCdJyAps3bRV+UANBGYYBE3s6t1e83cz6/gZZk
	 ianbXlBl/PTPZGqoCGF7xMa5pwjnqYcoywCaJWLt846C1THAb4Td4BcRx0jbT/fpJu
	 qZdOsN/R6+G/+mDLo95bSxyMNqJp50gZ1aKMgRvkT+ub3W3jyFsUwt4JzPnRxaM1mr
	 hWShPc2RNxYbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFAAFC43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 23:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178303491368.3264.14917012261180953447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32b5eed6a56baa497d82ac2e8143a02887840d41627294daf939a8c597648afb
Date: Thu, 02 Jul 2026 23:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783034913
