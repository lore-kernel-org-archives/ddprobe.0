Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3564F137E
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734146754; cv=none; b=KQWUSa+iLMRoexftI70c4tpxAohPfXajiL+AlhlVtXrlYjMOXAAxk1yipZFYJJnobO5AvClYnMSrFB1wRhiaf/0/qJpzwwbtlxnozTxDZFfuYODfsgTvmHxWvU3ATbGWiGwKQhm9001y2FlnD3a7MRvy7i1PSyfL8Gdjv6LCt9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734146754; c=relaxed/simple;
	bh=hAGy8sIkPKckAE9wW9xjDdSTdhvZQm63u8RLmlummAg=;
	h=To:Subject:From:Message-Id:Date; b=U9FboyY4f2+MB5+ureYOSBBD/gsI6ekOkGnWYYhg9GjKm7aRjde0Rx6jyNW735wZ/JMdVZQE3rgvmKntkcDjMuyhUPMV7Rcinvl9SGXY+dsUHneTYfo0+l5lW0Nc5ekUvifGK5IroZvbcATHgNPEFvBUDHJ7JxkyTgHNSHfA720=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ju3TwcOe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ju3TwcOe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF12C4CED0
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734146753;
	bh=hAGy8sIkPKckAE9wW9xjDdSTdhvZQm63u8RLmlummAg=;
	h=To:Subject:From:Date:From;
	b=Ju3TwcOeAulpv4uTPLceBtPfRUvhcHULroDhbUy8KQE2ePTVgRBV56JqS0y7tTA+r
	 L2WOw2ISfEUlHpSuHgHmR+whzpsiy+h99Otz/XAHZ1WLm0r8lLY/1bLrSkNbjL2bOZ
	 Q2diuOxg9EMxaze7i0mX6hVyTWpz8GxASuK2HHApXQGF1GMkYDzeGjSEufTgaFrGku
	 HKXHmsO18RxGrP+7vJE2mSAy1edA9Y/fIr26MOKhYK0dG9OJapBzfSKnjF7EEgUM9y
	 RnS6cJa5WS3hydAPS6mjtmBYhFPT8LXdPg/hrO7aVVQqDmtN2ym2n3A037Ns8306Wc
	 JUmfOKr7FFl/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96243E7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173414675359.31083.11408412237077079584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd5211da5308bcaa9781f59b932dd268be64dd7fe9d60bea97087b159892db68
Date: Sat, 14 Dec 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734146753
