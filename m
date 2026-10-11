Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CECE408026
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791715234; cv=none; b=rVQLbQ61SCCALP8p4Rjknn8yMyp/DV3XZA/LwuG+qkNJoFGYnjLVQ+S3HVD6WKNg9Eyc7EIq6QsTI+U+XaO/xLijENFmd6Q8fxiZFTeBzTIoWED8PVZFVHDTy5PBekcd/xIg8/mra3qds8QiFcl6NeIJcZkRC4DR1GVGyQRkuoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791715234; c=relaxed/simple;
	bh=BSASalAZbYXfFos5igrR4U+s9PsZ7TFD96b35zBZgI8=;
	h=To:Subject:From:Message-Id:Date; b=DKmFxOybQdKfuWttwpR4noNFf7CJ1/ZWRanNUsjK894VxtUSY3B6XZjoxwcfuxVQ59p0nCNwWPKLxKgoWZ6vofH0wpPgWTL7MUkfuo+oJy0cbXzaKUorThYbVLzcL8IGC116D2Yo7EhHe61Ph1udO/FVoAatUPw6eIRB8IX4dfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VqmNup0t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VqmNup0t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D02D8C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791715233;
	bh=BSASalAZbYXfFos5igrR4U+s9PsZ7TFD96b35zBZgI8=;
	h=To:Subject:From:Date:From;
	b=VqmNup0tcOO4ltutZEUYr7tfYLoNxq7aZjvB0HaqPWiS61SB8kjuo1NVfRQn2od4S
	 zLDxVuq/LEhkmsKZrspjKQGBlnSKRZnW2Dj1ut717NuxQYucy5+e+Semp8eUKOrkMf
	 QOZn8AfzKK1uiDoKMEqAWtBMR73hPk3jPjzIk9bDupVi3AGfZSRA9VgExdfwivX0N4
	 9ABsOil0zzzRsrPaGm/5r4NmpONVzcLAAXaHYGJUYe5igmMmvA/M4GRmb85Mtz1vrq
	 esIZqLkZZL9oXtZvdxrCYClX1PKGRWk5jIWtUvP5e2dnD0vUzzPvlKIyBuUQIEBA07
	 BFjTvVqRlIOfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD33ACA9EC9
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179171523370.20187.7453260065031883366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3940a778380ee51b92e33771635a6e3e892c97cc117ae34cbf5741ef781d14b8
Date: Sun, 11 Oct 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791715233
