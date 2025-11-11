Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25FC9171CD
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762877394; cv=none; b=MPwg2GLVkojXlLOc4BEpZiCXW/1R32/aJTl02TJiw7+co/S5K70oOMqQGvMZGH15u7tirMeJPnOT3Wy6hNBvarnu3mamltK24ZxDW9xPqjT90yQ4tAK3lin2OhOk3RizaK6O1GWAYLMoFoBvwfL08P1ZO6H9VuG5LqSs6lzgkN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762877394; c=relaxed/simple;
	bh=r9a8lL+J3JT6/1tjnh/B8jpFKNY1sh2I66O52IN/MlU=;
	h=To:Subject:From:Message-Id:Date; b=Ku1GEGsl0np52yD2rJsdXEmC+DrxKtYfX4E70V++QSnVft3NdUwfr4WB+OVyF/Zxl2eVXx0hOaOsvWRfPvvxBG9egwMI0FLFqRaoMXtKHdGdmyPSv2OrEL23kshHigBWdl50pQIBiRjpjcaNV57nlDqroMAME0rJNQuN16/uyQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DaVHQoxW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DaVHQoxW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A400C19425
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762877393;
	bh=r9a8lL+J3JT6/1tjnh/B8jpFKNY1sh2I66O52IN/MlU=;
	h=To:Subject:From:Date:From;
	b=DaVHQoxWTqUAjkRexkSEVt4SQS35jvhfUQFwsB2v0ZhdzKFWrS1zbCZ4sAKptInO2
	 RvNwFUgjFeHRAvrntdI2c0dhzug4C2eec0AeCID80iSZIujtp2JQMEqGcp8GVTQjbd
	 7ZL/VGMGK6qbH8JTNcqNU9o/5HK9VbVR4AqQf7kYBCPnjBFzqZrA227LEAJs8mDByj
	 I7U/j2mMTBBUAdDIUDd/YAa+VrfQY/oYRlYRPn0NFFQR0dw9T7kaPXyT70kVnaWy5m
	 hwycJBRGiu0amSPACNUJQqaSTnCTJCNaBwf5uX7LRmEs++aNwHMP5kLnHEBM8lLkqa
	 DoUFYontH5akg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E292CCFA1A
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176287739357.18845.1085980963313662905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 967478e1bc5e11ced21a03a6021284618639bc269523cfb47806a8e6b200cf53
Date: Tue, 11 Nov 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762877393
