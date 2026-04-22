Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3707B2E6CCD
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 12:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776859654; cv=none; b=nnZo9uChtWTAHBjsYWLB1U6yHA1QA/bCP2+uwLn/j0ODOMTDZUPrKUIfB3Jb8LIsrQEQHdEFFzbIh4bbyahQDxcJvFvb9EqPxlVYLkyq2sfrRMYVkgsp0nt1khahFOuCbnXZ+ZQqm5S/0B7xPuP3sT2dcRmL20W7AbxvKQCELmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776859654; c=relaxed/simple;
	bh=d0H+5wpR51FiUFjY7KPNxRt15b/HOsDUjmOFW2ZEM8M=;
	h=To:Subject:From:Message-Id:Date; b=GVFVI6mIcIjEae7WSeSGMtoe9MKqC99UfWoe6Dgixs+Uzj5R0JYDSvGr4Gavt0QHROd3giSYi8Zlyemx/LgKKO7t8d5yMsUGAG8fS1R7eO45CCtlBUErIib8fWQFo53jZhDkJTINRmjnY8FLjekMRSHmFWFyC7vbS5xSg8ygyKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eN7SJUlO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eN7SJUlO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0299C2BCAF
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 12:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776859653;
	bh=d0H+5wpR51FiUFjY7KPNxRt15b/HOsDUjmOFW2ZEM8M=;
	h=To:Subject:From:Date:From;
	b=eN7SJUlOmsulr7Kf6IClvcjPkw3MXzSviJTo/fVZqvnRodoaUE0pksLih8DAy4cap
	 AgbV8/8KYD7kHy4WYmBaSXpCshSY3uhCPoXcksQniQU79vhmXXQtoqFJLQ0SToAA3m
	 EyWzfA0JQ/GOqQKcWz8LrLxmIYQlEcqJKLKVKM6swjMGGjqCXPfWdnICepNIZD8/2Z
	 +BU2g5muuqQWSprvFcc5v8AVeBtuLh0nxiTacdiAhEPeUpJY/1C/Rh3A8VVkfRfrm0
	 8nkpoeyX/D8sbXRx50k6AmXMmRSuMCqqTwBhisIEnDz9oyOmeedJVn0+rNaO7/ekgz
	 +WaYEZ6KEdvmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE175F9EDC4
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 12:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177685965369.13902.15065357495639362457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 035e1dd45e208f5471b8de92d7fc900c66fa84c72be1b40599767aa17f61277d
Date: Wed, 22 Apr 2026 12:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776859653
