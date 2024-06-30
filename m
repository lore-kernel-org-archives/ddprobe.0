Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CC7739855
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 23:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719791063; cv=none; b=oeZt8G8gLIt3USdLxrdRZRq0hl23vOUluw3Gu/LVk6U4ZlvB8NtLPh6g6qdeEDEb/chH8h3zvFsuRiO86YKMqnVjOMqaROcJiCGkZHgWpKbddDI7lrzN5GPUCfWy5gkkAxPXpXJDRf9kw3NK6jQeSe4S5FLBsqKIM+k/48Kn2FE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719791063; c=relaxed/simple;
	bh=Xfx0fdCcIHaptFVWGEBgqt/O08e25sQv2PKohk4ffps=;
	h=To:Subject:From:Message-Id:Date; b=cuLsjQLVeoqeW7M0Qb0eOgQ/VffNT36nLTngYY9qy0hzT/aIhkmKNx5XelFxqwVMZ3Z9658CP7LVZKu+ON4PCHOpGY1b/+tAw7s6kgtPIhbrOXo8taV+xi59mgHgWNdN29Fvol6bc/3RKrDWulCkWROoDTO4lFWP4gj472eE2DI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lB3u09Qh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lB3u09Qh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2EB4C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 23:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719791062;
	bh=Xfx0fdCcIHaptFVWGEBgqt/O08e25sQv2PKohk4ffps=;
	h=To:Subject:From:Date:From;
	b=lB3u09QhcediaLgW0ZmXN48Nb6GDHZpJS+YLAM3UXSebl7qtxZRcivRgoKdNdoYAU
	 EoGf+iiaJweKrqrHnZa2Lzy7964/M4qWH8NjbbBwFqoNGZSN3e9jXhrhxUbYouP8EF
	 pu2UxnY/MJkzJTAqW+mK1t/CbAjj45yC8giVsJkNutgqPOWjuBQrqzFbQfDsan/t+8
	 WWn+S70aFzoOuskRmlzmrR67kQHqMN48JlXMEkMLCXTm9pjrcqFv5HP6hkccrw1UIo
	 FXdFfFV7x7v/KxCWe6Klh2BbHYeAlGtn64ZhMDIqZUQpcLPyxVVT1vQSQCb4oA4jo5
	 vPkARlNf5zsUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE892C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 23:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171979106278.8721.17473032633449342961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e89a4be23404e1361634d77b6494e7c434d85566ca4bc8d2c9d6a884ed2638b4
Date: Sun, 30 Jun 2024 23:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719791062
