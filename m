Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B0E1F4C8E
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 02:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772331294; cv=none; b=mkUSNGxWq1Za9MPQM6gbYaz4rMIumjQ+DNu7L34DfMGBqjXHO7o5mUrnkyJZ7NrMYtPTu3NHSrM/038CqWxNWAumcXkozDuUyEb/quaj7RSxr/zBZVn171AOCGJZdka9newjiHKNkVJaB99GtGdf5VQxR4l8orSOvvO9YqxU6JQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772331294; c=relaxed/simple;
	bh=zllZO1LqJ/0fy6eGZl50K/VyESefqalDCAna3swdXrY=;
	h=To:Subject:From:Message-Id:Date; b=Xxd62XcZdSuhroM4bHNVZx3zAgGPuybpfu1q4HnUcXIAgannV2bRm5S39CJp9TJxMvosB+gUUd5DLZ6pWH+SJSDWrwZOwNVvFqNQ6liHUV/pXGYo5thZEbZMpefIerRm/+IDxIjmJhSS98g6y20wJnJZsau3WBdGRyk1EB4xAM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RRPwAkLS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RRPwAkLS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4CB1C19421
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 02:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772331293;
	bh=zllZO1LqJ/0fy6eGZl50K/VyESefqalDCAna3swdXrY=;
	h=To:Subject:From:Date:From;
	b=RRPwAkLSae9vgOWnDLrS/3uHz/k6Sg5Qem0LQnUQlxbJYb3ikrUq1meUSfNLqRLJI
	 UAQSjdEyVU0zK/em8XdmeaIZQzJBwsOT2tykF9yGOdP5MfbHlC/1oqUd/SeMLORYGc
	 2Lm4xiF/FfvtO0sCOQblfPf6gXIo7pWcWbF5uVTfMJBMjkShaU+6C5zmunem0HZ+aq
	 clktR/zSqXMdOZr4oPmbRLaWEwO2/vgekpJ6tWliY6zMCRK0/KLu3NSVcfhv7yJ4Dc
	 urhumgzS/b1hAzor9xxfOAprnqoPqKFitlPdOl2gbsL7ccgpBRTqRomJPDpnCEwvme
	 3j2uZI+cSU4Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FF72FD0049
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 02:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177233129362.6812.6795130295876893633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd1498c3307c51592ef8c7c710b82a71eb51033f13e39041210aa20bd501d96f
Date: Sun, 01 Mar 2026 02:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772331293
