Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCA6B1E502
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751386793; cv=none; b=glM8xLvrOQCduq1pOb1d3XmMZUdqycXJ7xqjv35Mr3kKzvK+jGnO2VJyTKpEglmClfKKMhyyZ0T5xd1V5SlfTW1+DRT4OCnlvadeSPLdkpn3TqVnWDNnDOD+9p6mQWnHLRTCQcmOr38K46j0dg/OK/lNb4rkz8KEShS5yOG6O8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751386793; c=relaxed/simple;
	bh=wHmTZFntULPKdb0nWYyCHq0mPOS15sf3YCndQ7cGHiI=;
	h=To:Subject:From:Message-Id:Date; b=Enalcj6fc6dh7gcUyI3+92wKjjdhKhU8fCZxDEQQ9DSYpaX8Uy8IKSi0oJ2Cu5B1K8DQPGJmIDkIyDbm+MGtHXz0L4K31lJiZjNWcb0V+gp4IXDvrHNE5l7NGSpUaV3TohPyKDVDVh3Yj3acEmHIh9VvyffOrA9mPr+7YDsD6gE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GCVwZng2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GCVwZng2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A444FC4CEEF
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751386793;
	bh=wHmTZFntULPKdb0nWYyCHq0mPOS15sf3YCndQ7cGHiI=;
	h=To:Subject:From:Date:From;
	b=GCVwZng2ileZkf1ooYFJfBMqXhXSWA5La/zAK7YGl5A1YfxwAtsuExKDgJSR6wcBi
	 vSbBBJbg8CcG3OakWber69Tiv4FO/gI7uzvwIzGRCD6N8ltPhTjogrhn8I3P1GDrnF
	 ZLC/GCQr7VD+OdW1JQtnD5f/vavXWQnNkkecECr4BpNbuPa5ke08/jeDT8zULSWbnK
	 EoBulT7zNWtXSmBXNXQc7yPoKaat2hsOb0sORdOI0+dbwALz/EiFcjplMPBrlKVdXd
	 apae5exkkZw6aKABNzQSaBbBK0eyZnbZIHydZ5E0YQCKxgPc2HX7U0UXqSMpo24f1Q
	 VT8hbfr4Vcb+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90779C83038
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175138679358.5903.309921877922902515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2eb5e1e2c4c1d9ebecf3b70e9d6d6eacacc33a0af4dc69cef998e2a8e5718629
Date: Tue, 01 Jul 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751386793
