Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A1E16A33A
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 10:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717841243; cv=none; b=BhUaitNrmwZi71WqI/BswWFL96alNxvq3Eh7e2PugWbbjaV38RbVJew/GflAOgu1oWizNMkoAtBvxhwbNIeYnPFc28apXMT+EXSjfcJzNTnKVxaKIaPU8v8SP9pULYmES81GVvQZGyDrlA7XgFRZ0UfAlTgFWhkgjyvsmtDyg+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717841243; c=relaxed/simple;
	bh=rDXyLoM2qK81VwOo/beugBgY6LQELb0FYR22ahye4/s=;
	h=To:Subject:From:Message-Id:Date; b=AsojcoAinU5iE3iDJhg9o/3h0Wd8rEPXcVmjbLSoUmbwQM6uGB2d/mPSasvZCM8YOXjG+EgI6NlPkv1gSLhnVJqM8GBD0i0+SLb/jXt7soESXwMmrhN+0C+qu7a3fdCeblZ5O4opnYG9XVJDPQeoDMua7sYHxoEYb+d28bB11Gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lDrpK0Me; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lDrpK0Me"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE7D8C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 10:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717841242;
	bh=rDXyLoM2qK81VwOo/beugBgY6LQELb0FYR22ahye4/s=;
	h=To:Subject:From:Date:From;
	b=lDrpK0MeA924Jvp9ZAcMqiFFrHK0Hk8BXRLgzoFJ1CQuEZO9h/u/UBElV8DgCpWaj
	 3QLNSeB+Q7CHiWCA3K+saqgbFt4HGfevWptprt2Y0tM0Z5rcpB0ZWCMTswSUaLaQat
	 krmVoYM7P4GNak+1HTXGNpPnIGb0hkBRaKyIkTLsy6YquAxjEV7wXUX8ll8ruNkFMh
	 0OsNRSQbcJV5wWs2wy47LfEUGiizjC0bsqv98t81sVUU2nDjbg4tbZiNKzUZ+U4lUJ
	 FCsOXCMEss7mnLYQ67wlC8Mzool3UxTWq1apipOKbSRvTKEYBcWISLKv8IA95e8kmt
	 rziFgrgYscNeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8BD8C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 10:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171784124280.26145.12234353335871440555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd199395db94eaabf5a2f8ce1f6a5e67dfdcfd4f4f609295377464369e1a9f16
Date: Sat, 08 Jun 2024 10:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717841242
