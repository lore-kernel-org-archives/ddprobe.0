Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EBF9219A8E
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751095194; cv=none; b=MlPMXtAuLmZLG/8rwNww6xQld0dcdnvllAOZWB02u/p10TNoPuIZcDzrsd5CEmyXgvVbSY/MnpVQbcX+2MKKSc3F/NIoDR7cZuiqh0BxWm6oJNddLfh+GjMNvel8BE3/oKdqsoSs8fKWII7eAmIjC0n0MWrXMO7tAvKcAUH6wwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751095194; c=relaxed/simple;
	bh=sxu7KelHIFLXf3ZKzvUVDXI2Yhm3fYyclTII+r1gtSw=;
	h=To:Subject:From:Message-Id:Date; b=b4+XqbYW+u9a14jgY3QTXplxU1Wr/sC+7xx39S+rWc4wL2MjGVG7PO0EpJ9v+uRYH1N1H1H5eYDYeZ6NVHb/++1gwU+wclyXYtT6KbYNWRZfIvxP6DtCiFPN4MQRWr5abSs47ExP2W2sDqSRyUmfWU7CnP+7r02ixtdTSjj7DQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hWE3P9Om; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hWE3P9Om"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5258C4CEF0
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751095193;
	bh=sxu7KelHIFLXf3ZKzvUVDXI2Yhm3fYyclTII+r1gtSw=;
	h=To:Subject:From:Date:From;
	b=hWE3P9Omlt8zqX0i6FLXp7+ZPZ7+faBmN5B9tc4keDquvvCjAaIXTwK1ywiPWBOrt
	 OpG5aUlbNvG7qw1jumVTVih9LNOr7bTV2wVFfVQcvs8CwtvvaPQoaESo0Ip+SZJ1O+
	 Pqriq1qbXfSd+L+T6Q7xMARfpXhqD0PB4CypLJ/+aKUiLy2jx74NYTFYlDjgMZ2fEq
	 cFGXMihvpUwCXWG5aP/UlVDSNYaWkYXFxj67dPT8S0/iZDv8n7r4qh7HQtNsVrAF9T
	 AqU3m+lg32sQPI56wJ4DdcK07pGy4zacQXayEE9ph9827DCoi6WAolVh70pkOPawfm
	 xFpZFI0oTLxrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9320AC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175109519359.27213.2349909964994892710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4a7445293d753b475795ba56e20e45749403ee41a06a8bbc06e0fc00be1868b
Date: Sat, 28 Jun 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751095193
