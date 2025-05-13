Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E7B2BEC3A
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747154394; cv=none; b=GSaCSmn81t8T2Qv4L1cqvM3k0jg3jzFUMsU9DrHx4bdVYx/3MM7LYCAJ337ghL0Vir9UEruf4uFwC6hwWUobT0Q2O2YjP5t9wb/znaMiUGBb8XbP4HBbtdU6AvjnMOVRnLP8tCIRLZIn1CDtueFmnhslJ9YZXOnVgPdEGeKGD9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747154394; c=relaxed/simple;
	bh=8N5Crp4koRt4ZiWsVtULKm93pM0OmCUTvNQMLUYop8Y=;
	h=To:Subject:From:Message-Id:Date; b=jPZiFzZaG7Oi3wUSI0lyFivmvbViw7TQcX7Ad3WaUOLE9e0s+2vZvNRe7n9PHXowC3JLhgs0GS2VHgu9sA5dsxiI6e45S3gA4CTNc/ZX9zQ973Ym4CGiYH1N8wTgcmC7r2MnPTqu02gXYcV3z4T6bqqipzamw/XnQqUBPuxYD18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PPkbKNJ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PPkbKNJ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D0DFC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747154393;
	bh=8N5Crp4koRt4ZiWsVtULKm93pM0OmCUTvNQMLUYop8Y=;
	h=To:Subject:From:Date:From;
	b=PPkbKNJ20AUUOy/KYeQjTzNcdQ1YDvZ7o9W/YQzj8GsJk41PSgTOUywnJbX+sFsCb
	 9P40R9bE9umh5zky6uLNno4HhNchK3d12QhToqUc3OKf+QD2I36+TO2qRf5RUsjpr0
	 BEwF+JD+6QRFlmDwrI+ys0ZZuVf1GPEwiqWSfSfhOoejQ0mSZ5Aawd+6WewOhJipv/
	 l/JQpYUrfauetCwqOVa3/G/HUXnSEpfetiFncdsF+7yRPWcl6q4Na+BHBD+2jI42Ms
	 tcBOhRvn3BowOUDki0OLGxsLo2s8cqS/enlREURs1rjixpVp8N1Wzp1TwrXdxBwF+L
	 QRerl2QdeJY7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E818C3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174715439357.19508.10324660262765665957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b65dd9b376afdcb956aa86c1deeae05c515222b2a32e914699bd3c8b7a9ac06a
Date: Tue, 13 May 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747154393
