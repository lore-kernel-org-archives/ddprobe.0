Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4452F11CAF
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743316794; cv=none; b=p86zKU/fL3JBrsbUL/aN4Tx+9GNUCWQtq/70dZpJHeo9JbjyevqbJ5TrhDEslLIT53yHYmvVhSAPBYq0EHvqogQRTSyE7zLDKJLmnHWFz6L9yrsD3MS3JsOwzanWjFz4O4cXGr0hpbzXcaWKlg3GeE/L2tVRjaarp9byeLNShL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743316794; c=relaxed/simple;
	bh=lV7nQqnM5BO7ScbCiAft94WNNsROaVM0cGJ4pTpou0o=;
	h=To:Subject:From:Message-Id:Date; b=aHHQbPAZuzVoOu5vjKBMHUaICRy0UJMM4rz6qold5UIiO8Fv1n3Ocxrwx5+8gZzBfvbT4KUkhkeio8er3uPz2C6DR0/0+7B5ugYEDhpGTthw0qIXRynlriZhTNS3jJcVTA2I6z35q653Mrw2Dy6BweG6eBdGkJxqahcGM8+psPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TrtjIMOi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TrtjIMOi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA0D5C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743316793;
	bh=lV7nQqnM5BO7ScbCiAft94WNNsROaVM0cGJ4pTpou0o=;
	h=To:Subject:From:Date:From;
	b=TrtjIMOinRs6CnZDoPSmjOSyaQx1BdoH9SohDn8hZM+BYfiWGYzZoi/MHOug3nS/3
	 NNeC8ZKxcSEakGu6Di/VvRdlHsCr144UePzkHDcRS6rLLwiU9RAdjUlITc7smukaQ0
	 0yYHDzUncOPpzeGBPBf0Og06EuOw7thkd4FoWViXilx6eVAxHJkFlFGtz3gj/CiERe
	 ZtKkXipxWrs4FYegJS4mzT4oNmdZifSjCoUBJ4MGw+nuccTyu/W774JwqpqnXQ5FXW
	 qJKrHhu2s0kALCZeBO+ykr50hqmKfYO3YrbtZoJfXiQBhT32nXeIcR7Z0Im2ujK/4T
	 C89+rLjREdqog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0F93C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174331679364.32081.13966560437267755757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bb241dd307e93de6998f42af191cd65938440ff9cd59083d971ba976f9ea9a9
Date: Sun, 30 Mar 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743316793
