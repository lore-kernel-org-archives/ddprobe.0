Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA5A3128D8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762179594; cv=none; b=pclUfzbvrc+2cmBBN7RlgFd2HOs/K8Sya7XwGlsQVxfrBVVHj0xKvWlBhCsyGrgrheSYWMlfu2+YXzWjGbAY/CyoiT6sbS0ot89SDptdDLM9MEcqES7MLUDmOWPDMKqy2/gY+FxogHyfCoBcZVrHojmDJFlg1bQTeO6oB7pJDYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762179594; c=relaxed/simple;
	bh=jzASpAd0GWzHbG9GzhFek98rUI1tmzMvCVtXSTScY3c=;
	h=To:Subject:From:Message-Id:Date; b=bhzNsmacj113Bn3XUKyOdF3yC/RLqEz1AlBievQvXz5VtaMhmLrGy1wdoSRf1fhx5UKzpHnnEQYqHtWW12+TKuPPqKe/JJgRCtq5UBljBr8VGvAIFWAuH1Z1HxPT99UGueQ+b+kP8JEyG8MqwyOKt/4jRa6ozdEWJ+H1RSF3gC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mtn2/p5F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mtn2/p5F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48C6C4CEFD
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762179593;
	bh=jzASpAd0GWzHbG9GzhFek98rUI1tmzMvCVtXSTScY3c=;
	h=To:Subject:From:Date:From;
	b=mtn2/p5FoxOMCa49lNNRFdyj4cehLKCLQZnbjFAkNcvhfAmE0nYJa12dHuqE8ZBth
	 JotRq5m7F5CftFx+rpfEqlb851Rg2o1VyugLm5rKy3EdJx8j69cDTHVSP2axT5Fy1f
	 Kr0m9dJp4Z0vqTcP/Q3YHjUjZSAvtMilkrTnoccdkWLOPGK+HVRrHi+l9fmfSd831w
	 41QSzf4HUx8SfLBgMqkwwXX+mDjaBq0YiUisn8UHLxTbv+fPFKliBGD/yZUXL4g8F3
	 BHmZgVDC0QjmyXsyINHGgNjaSrKzI6aTxPhMIWLp2gtt+yZixJ74Z7/BF5OIDSEZUI
	 E7u3lrFhONyZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9122FCCF9FE
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176217959358.7186.3367495586226118732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 319a67da60166b6d8fd405bee0b497ddc0e40addf4dbbe0017c1bf656dcd3ce8
Date: Mon, 03 Nov 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762179593
