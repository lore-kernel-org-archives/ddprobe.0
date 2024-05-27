Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4200733F7
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 01:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716774863; cv=none; b=YSK8h20y25t+Os6DewDMH0I0TQPyZfBkUMYdue/NKJ8FUg0KrKm1P8phCOtEdouOiDrz/u+qFlCfWxGKha92tueqhF2A1j0khvFKhEoM+BMvF6tMx7mqC6aRyE2S4PoAKAwUPAzqntGl46utWJ6irm4dWZSvyTY0bBaU6SLSjXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716774863; c=relaxed/simple;
	bh=q8WnTwbFw35sPGezTxQjruC8DYD9t/A3WU3wZaaVd7Y=;
	h=To:Subject:From:Message-Id:Date; b=pellCZkDQ0xoMK8cLOwS1A8a65IAMdzL+FSe+BVVokhUuzhCLymhE1AE6ORvwFy1UeO/fKFrvgifetUwZnVikxINRENFGbLtKEgzYpleFrkkRY7jJ8BWv7ONppfl7PUNG3qZ+7ggPGsd3OHR1dPcEIU8udydAQmza7Y6jqbDJt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vs57HFNt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vs57HFNt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D275EC32782
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 01:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716774862;
	bh=q8WnTwbFw35sPGezTxQjruC8DYD9t/A3WU3wZaaVd7Y=;
	h=To:Subject:From:Date:From;
	b=Vs57HFNteVcIZXlsxj7t94Qdtx7LW+8yDMgxZ5Mq0JqjfzjDabVe8Vm85PRjYB6Pj
	 zA9H2tcAElTl3J7ZZDqg5g5kIOT+MhqaYSL/032ZHDEHvlpSRMPZ3LknAA2w9UKNkZ
	 O7sLbWY3xho9S3ONWaMkYaGRAsZbMFtf6NKC7TgO/VrzxHRQjcn4nkIlNTM3d3/gvx
	 Mj3ZJIcZHWo0arjcqderObaHPHQzEMcK1lb8T7vQwPvahk0EBFpGV/uoXm0qjfEujz
	 lVRF6bbd6bJJMfXIeihzWu6V59j/VtOR2phtqB9m9Skp4ZxJ0nr2D7h+8YDZZBEPYz
	 XBtslTsMQCwcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2B49C25B75
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 01:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171677486278.24286.15694321226124976849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e470a739c57a943e7a76b9bd21b36439ba2bb04a9840eea03f68bd2c47067a2e
Date: Mon, 27 May 2024 01:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716774862
