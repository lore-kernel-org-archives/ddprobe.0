Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40C03610D
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746917394; cv=none; b=coM2gP1cJ1FleU6rWrltaw5JWNWMbReBe6kkIhWt9QkkD0Fse1tJKB8dK5dRq/R3P1IVb8h2G5Tf8acjmfC/e+iRXA+cC10j1PXfeP2g+TcnWPz/QNB6pzMkUEdJxsrJmA4P79stb/0jeFLb3E2nEGLKswa1E4lq0ZFkg7oc+6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746917394; c=relaxed/simple;
	bh=SB+e4Ty8nO7Ue/psGAKDa7RQTlgqCAlLK3wzzZF2zBM=;
	h=To:Subject:From:Message-Id:Date; b=XgIxmZrWU3zo2Bkjz2Tc1OqJa5cVXLJ1lVefCTiDcki3lAjcItRo8VxzLL18H3zcdfxvBcm5VL8CudniA+kvML0XVCkVu/F3mxy4Wf634woyzSblKuVg0bIpP8PJz0IUl2c5xfRfaGdU9ku2loxOoWQ7a9fvOwXSWyR1NYoaOhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sd+bR4Bb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sd+bR4Bb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA15BC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746917393;
	bh=SB+e4Ty8nO7Ue/psGAKDa7RQTlgqCAlLK3wzzZF2zBM=;
	h=To:Subject:From:Date:From;
	b=sd+bR4BbBOi2fUUW8JNa1jPz0WNk+3lX9k/8MGaJ8cyeyo7ntiGR6pHk2LVVFOLi3
	 c0x4fyVOI1j+cm6T6qs0OtqY7MBsmrj+JuJiv73M7+SBS9GFtVVONDim7Rn6vU4hQ5
	 qXmzQmtEKICjuEyOA9DLz+ju0RnF6P20pjx3OVoIIje1F6+rehLv2gYv0NIzhvEvk5
	 OotjSHFMK7VQc2eRFy1LqfpJMsqSqs5Iw/+C69EGx6c2VZeunu6pSAbQrWuIgfZN3M
	 ZOWEyQ9BBrFzdpzDk5dmcGc/E5Hz3LEciXNVxxYZCzs77G3HRWdQmrRPWHJF6/dKdP
	 zhpQxyL9mmLYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96559C3ABC9
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174691739358.13523.16478105952403647835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 665df037f8a0797aa64f229247134f88b4a5d0f97e1c39def13e7a4cb0f6225f
Date: Sat, 10 May 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746917393
