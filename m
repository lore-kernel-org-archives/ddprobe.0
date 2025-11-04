Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFF1B33DEF3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762279793; cv=none; b=M6XoE2IjVETij2SUHZPTnSq7yfIYvlZv2LgnuEhv+SeZTYH9gyzNYDMxBtb28I5sMeunvtO6ZJH15Iex1Hxd6JABf8WDr1DaP4UtVK/jh2Eubjz69X2izgsAx6dbhcq/q/bG1g9AdUB7LA9ttkwzVOYH2sBgWyFbDew9wIQSy1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762279793; c=relaxed/simple;
	bh=eZKqxxqMKul36hUydJciVgdF6gbI2CSnW1igho62jFA=;
	h=To:Subject:From:Message-Id:Date; b=afa9YK3n1RxnEApb865czUzYSbz+FsJ3jj+YJOc6cdsY8EKcSf4T9AjLbMHlK9L3OXg2HU/sRwRq10OZW7Wqd6srQDAWbQvf3tnmTHfbCv3FHCnAIWft0hfyRVnwIU/brPwGD8Ggg/s7j08DnvAo92kWodOKKiaglB6wXqOTUvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XmYrpIlM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XmYrpIlM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A144BC4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762279793;
	bh=eZKqxxqMKul36hUydJciVgdF6gbI2CSnW1igho62jFA=;
	h=To:Subject:From:Date:From;
	b=XmYrpIlMmOtXagzB6lWgESvH9WUItrCed4676O3lDSyK3yVe2Fo831R4r8ApSFtkQ
	 XwilUsF80J5AgMgCZkTPV2bzaBlF/XaI2a9SIBUnycK+Flbxxup/h2O45DpLV1BMQi
	 suXYObU0l6A/ZwG9T8E34Fhj8whSoKhSqGV/dPv35tSdR7xRZWSl+t0OYvTtEJkmcX
	 m9ZXKEoZjplbZimbC7+nnsP/NVdWwcbF3y3NUSXO2FNecLJpKmziBVwPWXBOhox9Rz
	 f7gR8wiC/+QAEnXl5vBVZJDviBKLW41QQAU9ZWhK0HNv1yN0Q2D2GE0iFcmYAmck+M
	 ZdVGiDmZ9CxWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92ED9CCFA04
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176227979359.5334.16837695082978954355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ac30903923a4cc4cd366289eb81f1631b9102ae08b22ef1ebbc2ec15fcb2849
Date: Tue, 04 Nov 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762279793
