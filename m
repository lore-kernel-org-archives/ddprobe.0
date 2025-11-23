Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A29226541
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 11:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763895714; cv=none; b=Ln/iVEcP6zEtx2Lr9ku9NI/zRuIiM3wNdMWA+20UtnyOHP/R4WbcWf51jVRzb42LqrBG2CETYbXNohadE4e/ZQUdtzxYtK0FLPSBMZnzrJO62qRJ7bpde0hzzxRBlI1oljBkE6FrJingqQdTOk3K3sdwRn3/6Z0rxS/nPDMeWHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763895714; c=relaxed/simple;
	bh=uTfwZC2El+VEpKbXGyZTTLGp9Up/Sa3gj5CwqnnquF8=;
	h=To:Subject:From:Message-Id:Date; b=EVsJuKn4Jct9HygEu4q4+8d1clFWr/Bz/MlDFgxI11rlDSMj8wN+/NEmufV4kIvnIeKwZ7azKCc2RI0biWfOR0h1IL8xnx8rR8Zyo4oPqB6q5daQ8DDnXI7lhsTTAUM0Ul065PHLTjCRPYOZnZa6ik+5E0c31GEQ9rZbOBsqPAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U8e6KRJa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U8e6KRJa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F9EC113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 11:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763895713;
	bh=uTfwZC2El+VEpKbXGyZTTLGp9Up/Sa3gj5CwqnnquF8=;
	h=To:Subject:From:Date:From;
	b=U8e6KRJajB2jg/7/HGgqyclBm28Z3sX8xrSIj3zz9asJ5tz29zge+5W04QjX/2ky4
	 GHg+tbrghaPCHx/heoS5iPy2eUCMwzk0cwEgyV0fCLUec5YZ9LzP3EZ2uoDEmAmY71
	 V1F65xYbnZD90nQrX9geKe1vX3XYz9nwq0BEL70pLgd4/oWlVi8lkBAqhQ3eznlqnO
	 XMLlVl057Kd5IldT7eKZVhb4hm63bRPcgmvhXN+e4Gwtn64xbw/JHLxi7JFjd9Sjhw
	 es29h6BZ1tYvMiFmCO0TE2Sobw4lF7SGyBmA4bX6c9zKEQ9iI7F5b3OZ6zRJUQp4kZ
	 o4ii6ChfjsUtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C13CFA46B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 11:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176389571358.10098.15017662478470777727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b972f71b702c1072e1814f2c16b9e7026a74f10c44b8392b98bcffb5ed18d1cb
Date: Sun, 23 Nov 2025 11:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763895713
