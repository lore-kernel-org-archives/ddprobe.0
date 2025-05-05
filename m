Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5D32189B8B
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746455393; cv=none; b=ZWeqiokXfSdcOQVeFDAafhQJaJ71ev6hsjZlB92a95d8K7BO4ekFbWq+9Il6jxjfBG2D9zulrxV9QCDJyzxjjnFB5UC0hHUWbI/ptu2JAgFNFw0dfDe19ppp0BIjpAngydaw+kn/NfRGbRwW8tP2BSLcEFerenobhLQ1Ysk8Da0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746455393; c=relaxed/simple;
	bh=crnOSC3rYMgHhFmWX8l/HUL6th6AiDZiv6VKt+J+OwY=;
	h=To:Subject:From:Message-Id:Date; b=lEAnRxCxpZANS4n3ACvtZJQN318m5JGIiOLM3go+hLUsoCGLnylnYONRrdolnMVMlF49EYd5/WWlJdh5LjyFR5s8ss4tLBmgiMPKIAXOIc0ShKWtxXZIefKL+WHkC02e9Qd0vorwI5bhpjnI8W1dyRhhrVi0lZ0+543iVM9TfLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WnTQwFXS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WnTQwFXS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC28AC4CEEE
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746455393;
	bh=crnOSC3rYMgHhFmWX8l/HUL6th6AiDZiv6VKt+J+OwY=;
	h=To:Subject:From:Date:From;
	b=WnTQwFXSCI7lRTifku9v7gKPCpf+tmrn28pag3DeLPEGLTBp86nK0oBrE73f6BJqA
	 1oAhB8ESwfw6I+XEwB/ywihzH+fCDGeWxh1CpHypDL+MpRnBXA1oqRoCkPN7hCl/kh
	 FQn+yGWDDEyuoJZfPJL9/oNN4DrIorZ7Z90lMxpov3LcIN8uE/GyUGi7bMQuJv9IRg
	 MB5+FihUB46wgpPdupsMzP98wgeB9wNwg69S8zskLjYWS3nHJJSRyKsacI79lEW8nR
	 3ZGRMddNxkpdKj0mjKuI9z1yCnLCFfur7f8MfbDObqHjzGYJ13MoXoQC7LVtN/abX2
	 tUPgAxnitCZrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BDF8C3ABB8
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174645539359.3096.8416584159926083350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2137f6a5d2e43bdc933d984ad9718a7c821660eeaefa0e0634e055f8b41aeb25
Date: Mon, 05 May 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746455393
