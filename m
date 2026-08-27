Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EF1A3242B8
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787816434; cv=none; b=GK7MFsJZ6EjmnTkSMTVv7JSnuwEKpx2ncumZjFTPDAc3Q8Kr1qF7yL3MqUv2XpzvY41UKzxq4N76yQIw7VGbdeaoe1fr1aahzLqDeUXyXUVVLHZL4+NCklbCU93qmypit/m+fG3OwOv4ZroMMMzmyzGpAl3B7u5beFDUQqHjcyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787816434; c=relaxed/simple;
	bh=+4MFn26KHLEY/evrZ85PUI7/LQ9MvdFRKJnKqggwUFQ=;
	h=To:Subject:From:Message-Id:Date; b=iUC3S0U+aGdeFoFYMMzsTIo+Mum4WBPTaqZRcbT1ymsavxnWl1Y7XTmZrv5oYpde7XPZfPuutve9zAdBWS1DRzDMgS5GD2wJKvqfF7Qwa6AzuX1dJ5FYz99QEy/Ux+auPfSi/dz3GgbgQ2UQdB/fbd85OSsGEN1H82JvDPFzM5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jQ/YxF1t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jQ/YxF1t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C37A8C19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787816433;
	bh=+4MFn26KHLEY/evrZ85PUI7/LQ9MvdFRKJnKqggwUFQ=;
	h=To:Subject:From:Date:From;
	b=jQ/YxF1t5t2Z6Jp2ZnohCKl80jaY2M5p4QS8hjtOoOlem/fJvWi05N8BHBVQxpDRV
	 JQX9XfxrwaI+MxnGy0dpMOvxkRhB4VpiJr/JL+BU8NnmP/B+g7HXD3ZOfuLS4ouVq/
	 LGzbBUdX/wrxccMOI2YAzj4NO2UtzDavGY/tCK8KP+ZHyTeb7i8a8j3jWQMyY/pHQX
	 fwecTeKWQp1xP4MUMtrz5rSw6XePcFHhFuyEhXV0CL3oz0tUHdoc9Bwmu0vISI3csN
	 GJdEIqxqcrX6A42gh6oht7SwFG+WIQ5K1P6aqOxoE4s8LW7CiPVDhVbkmIRrmsy14R
	 EHIEiPFSFdM9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAADC61DC2
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178781643369.15899.8621116719725158004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6cec2730bf0c07397e0ee14e4f1da68321d39dfd2b1b3982e504f1ccf336470
Date: Thu, 27 Aug 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787816433
