Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3736757EA
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737014754; cv=none; b=APfb264CvoK773kYTZBO4DdRUcYQhNOZcLQA/w8lS0mcU2mvjOwigLitayvLB2GSPfM7Pw01HO1fwPRqORpiRlqK1ADooZpNawwSJMX0pO1uu2JUFzen+mgDy0IFsr79gS96xTZON1Rk+qkQPDsPIU7OZoE66MuFEyuuf/G5u2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737014754; c=relaxed/simple;
	bh=efNtUfzn6HQUZBXW8SS3d0EVthbpnk/gKen4ILXo1tQ=;
	h=To:Subject:From:Message-Id:Date; b=IpEjwqOr8cjKM+WN5xiM1Cs+LUFRuHmR0A7+VsS0VsW+leJw2seU0yWUA4QdRbiGq7LONOAlZgoyQZ/kCVBnjJNFOzYA6EpElLYdbM9os/TKmOXox3YVQWWkogeb4vIVtKoWqz2upJ0Xj1797rq72KFv6FLcByLC23pQLScjxd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pAn7V2x6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pAn7V2x6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A7ECC4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737014753;
	bh=efNtUfzn6HQUZBXW8SS3d0EVthbpnk/gKen4ILXo1tQ=;
	h=To:Subject:From:Date:From;
	b=pAn7V2x6BjH7Gnrc1VbIHJGNuqt44+nlkTUXlkULFnHQ0jEOE7rq0lh3VqmV5T1DS
	 RfoLTdKuh9SVZOzmZtqG2cXZVyVrksj3de/z9hS2U2w3exawp1FaSPKL+hpwb9Eek+
	 7c6pRQ97LEX5IOK1SBRljyH5o54nVpmaMMqp/w38DgG4JjLKy/kGb8TcCT6MrY9WgU
	 +ricwTnCGt7C9ZH+bJn6vi569/AOqsFcumigKxSk+AEIMynyAIfUL17p30MGXPeg7R
	 PYXipjsTfmO34U94fVFrbOxh52k94GnHvRY9cAcTcksjusaruJEB23Uwd1iOycBFWN
	 Guz6q7/wi9F1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90709C02180
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173701475358.32080.7850325602583254416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b460038394cc44fe6345a9272c8212a9d7944fbd6664781605475208295c251d
Date: Thu, 16 Jan 2025 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737014753
