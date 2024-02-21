Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C0E536102
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 16:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708534097; cv=none; b=ZAf/H7Kd4pELA/aosHfQW3rhUjJCFyxKhzqlID0+6lZ+vaPLLPgtms7ECsqSZglMt6apNrGaMCTicc+ZpXgqwWFI58G6awqAE87LEda10ZP/p3Gi8A+tVkdVcvA3PvNPh8zdVcgb/zjmBEUJVE+qCB7TPm62MhI1vQZbiYF1Vkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708534097; c=relaxed/simple;
	bh=74CGDe9RfOtF5lAl5SocB5c7kelWyEVySYvTV2/KZY0=;
	h=To:Subject:From:Message-Id:Date; b=soMYntdNvOviGTBaDD9brXT91EYYMwNx377ecQyFtGAs5UGjm1N+Y0jC18Avj9tYmq3K8e/df/BNMynlNUoovw78epmjkV5OgULMj6/3Lxqd61yuZgj+6As0OdE8Exm3fOyR4e2FRWGm3NDB8UrdQLnrWOFxqsBf65jmN25lNJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ieYay8+W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ieYay8+W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E976C433C7
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 16:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708534096;
	bh=74CGDe9RfOtF5lAl5SocB5c7kelWyEVySYvTV2/KZY0=;
	h=To:Subject:From:Date:From;
	b=ieYay8+WcFGxlF39eISnI8DxL+kL+u+Cbx9yH7IXPcoxPvYlrx6JZecbPojO/XcWd
	 6USGLr5kpMt5aCK7R+lpikLr+elzUBw7clz91HHn9d6id4qrLaBB4N6a+qzmeqDbXM
	 2840RjGv62RbjkrGb+8kfPm7TXdgt3VIWBGPZxX4dpqx5x0ZzrOePXTL8uJxWZrkPZ
	 XYdXaLyROLxbrN2KxAr8K/yVTkkYRok8RSxpo0xKmw/FRIAWZCvncvW5zyyEoFkYZc
	 hcbfngFLzysEp95qPyUBbnZ4rCEBW8pCVwXVx49gxO9LxZO+t7AJHqGYMNELMH8NJL
	 9yLI2e3lxvhmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62208C48BEB
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 16:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170853409639.22557.7200295356687162823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fec101884a21e62cfd4c95384bc6f2dd59e11ec8cb03e68671af7e5c9344623
Date: Wed, 21 Feb 2024 16:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708534096
