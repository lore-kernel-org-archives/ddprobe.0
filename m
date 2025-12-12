Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2328F3B8D48
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 09:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765530174; cv=none; b=nTAyxpSdpXwcJ+ZzU2Igl9z8p7WILOa+og6CGjDU/M15GR/zj4+9DpYcB6l1ndBK2+vUETjVo5+FT3Afi2l0axlxaiIqD2E8sgYD9/j+/J9KpHH6+Sz/UrhdVKibZiqVpyl5fLsfx+pWILsxIBstKumk3npDoX4WfGtWZyoizOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765530174; c=relaxed/simple;
	bh=U5B8m/WICMh9Jav/Ye5prBRK/YzXlxA77YBQ7wOmaG4=;
	h=To:Subject:From:Message-Id:Date; b=NKSiwkqNCHlplQQOjuD1NF5VBt/laQ/IqvVP9iOBQmhtGP11A2WhmN8CITp4USR9XgAi/mKaT5QyYn/4MYvrZ2jx2w2LFeZ9nimE1Z/woVDg3DaSzNMXClCiwULjkLGI3K3JlyyFLeWRV1IaRih6O6dAP8SLmBSkvVbQ4EuErRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m7sCGDCd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m7sCGDCd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C02C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 09:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765530173;
	bh=U5B8m/WICMh9Jav/Ye5prBRK/YzXlxA77YBQ7wOmaG4=;
	h=To:Subject:From:Date:From;
	b=m7sCGDCdq3ZJ325Qx5wTHzXybNCS+sQZPzsucxmSb/qoPuh0jy0eP+ItpuiblAs9d
	 Oeda4/IuCo7KwyRKDUthhjIj2qi4yMd4kfxFjkHALHmm5FBqDolkhfdN9l5/NVLVy+
	 Xp3juVw5Wb9s9h89H2glF6FRe00btssodzQFy0wIhRxF/3uUzp37qrk43zbPRc2lT+
	 9yTSyEFEEVAwmb4YOhL5NRthFQoIxYFwj7vUFBWB17mvOVEOXK8uG2jI64D0EeWrug
	 l8L4X10PD+wt8BdMcaa2xqzeV88xB9IwaVw9S09klnpwnblKbub+IBHxBefX+DSxJE
	 V04fG+6a32FuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A73D4336A
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 09:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176553017359.14528.3104902722529041221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95b7678b4c408f7ed551c487313736c057aba7a75b52e2e18c26e786d15a7e1e
Date: Fri, 12 Dec 2025 09:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765530173
