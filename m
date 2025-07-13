Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 305E08F6F
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752443994; cv=none; b=uM2SWYeBFonuCOOY15kfv/GfI4e5+jA9GJSsJ1E7L8xiKB+BRyUBaLKNJk6fCBq9IypRqhIMEnw6iTUDA4DvNowpGCjsuCrwPe/Gd/HxFWDLGLTYjC66DOeiFkNCcBZHlM14R8T3SuAg7Z/C+XhdnW+XShUmdbmtB4m2dXGlkZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752443994; c=relaxed/simple;
	bh=HxD4vCnwGeMlOapIQcFWrTvN6ArIyrecWbQU/BXxgpo=;
	h=To:Subject:From:Message-Id:Date; b=fbABoYnlt//mVe4xgJIirmcs8vx6Qx4ooV/b7GuPg83RJOUZSwPcJ+3fx597ZTKk+ItGYQcW0G/G3znHT0nFPgYuy2R469elxa6wxGVDBzb1MQVFq4FqItQ0aNgbln/xt/hmh8s3mOMHGTvEl2uqFSs3TNw8Az+tBl5O6ySw/ZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u0opcIfm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u0opcIfm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A0AC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752443993;
	bh=HxD4vCnwGeMlOapIQcFWrTvN6ArIyrecWbQU/BXxgpo=;
	h=To:Subject:From:Date:From;
	b=u0opcIfmUbYT5qZ+qtUNW4NWfXAQXC6ZP7JnDIdDFOT/CMDm/jN9GKjgb6XzldMD3
	 tEiew9rwGYj/o9yJaaPwKeO/oCAw4roUMI0GpQMdMF9ZdDH+eoN7g75kRKUva+9hrG
	 HbPZzyRwnz3+48mwA8Q+lHX31nMi62CG61gKvDnw3L+hulrFl4XzMpy8Wbz0v36RhU
	 cP5qmFMv7sU2wm+ZIwkUcqoxP/JizZDivELCySXACP1UIYKU8gxi/+JrN06JqeS3/E
	 f7t34PJWxJ0gea7PLAzU8KG+K6L/oZBQdyR6xxOEuWpstyidbKt2rmBJ6mfJVa+HzD
	 HSyh+uX8DjECw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB77C83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175244399357.9066.4021065267099769330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d43a547c8f1ba33e74597cce4786d88676ab42429866639e1966dd7078b4356
Date: Sun, 13 Jul 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752443993
