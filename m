Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224B7190072
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735833954; cv=none; b=pFmNQj7MHJ5Zs4imDfZzBVQtNaUz1jcByB2TIDlDNqaYDU5sRucW15bQuMFCT6lp2lgE/d9cwpvw2lU0L7vRJ2z8FthRH2/ydPPDr9fT8ubVLMmxYRGSctgxzHt7dkK1pAW18oMMhOUsMRqxbwSwOtmCfP+Zlv441NnSUfbiMn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735833954; c=relaxed/simple;
	bh=lOhpiYgSY9nk4l2HcM73e/nDQ+MdsnG8AOEs+dQl1lU=;
	h=To:Subject:From:Message-Id:Date; b=pyihFjvysF4iRLbR6M+u8GolY34Y6kIiusaWc4HMKJzHH+mPBCfR2qJgnPQum0M9uq5a0qVXikKToHkmfHAQkqbXAxp+ZGU+yDmmTDEpGlKBJpJsVlv/4fK5QSrGGygmhxE1bKXNdWn8syStOiN2IlP6G3B0BkvXPk8pmwfv3n0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=It/dLe+U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="It/dLe+U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9779C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735833953;
	bh=lOhpiYgSY9nk4l2HcM73e/nDQ+MdsnG8AOEs+dQl1lU=;
	h=To:Subject:From:Date:From;
	b=It/dLe+UCVSg8zcPMSG3FeaVc1zeSGUZGx6OV0M07odfGZ+3xSA6tclJs0trLQqRL
	 WMKizgBvfEefESe1z5EYS9LljE4TyHrEouQwE8bPUHoHU7+Q4DxI+Qj8MoIu5YR+ws
	 8Fxb5QZmlCHDfa+cySdVGEoyWJ90pgfFgInL7Z5zq/jxhSK3jWW+QCpKF7fm2IHrWX
	 KTfHXsJz1sIJZr/lHtUbvNKBxZER2KGnoXvfsq/1Fy35Kw++Bm/8KFpnmhLUfg+PyL
	 Xw7s2+guqsePRu4k0+eDtOZQrkpXXiCyX0PqIZDkQTSB5WF37Sza9OtZfEDKIrUxWW
	 VNGigieexROAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97047E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173583395360.5006.1807681717709348331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 549242d36a32b7c53d7eb87606f637357bf7917cc49351fa06d7e6148292e666
Date: Thu, 02 Jan 2025 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735833953
