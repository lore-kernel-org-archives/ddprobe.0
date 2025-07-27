Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FADE221F00
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753643994; cv=none; b=WHn7Dl8Z8B1+RjOuYezcODvaFmrmLrlzparZ0W5CjnVzwxTsKqpaxuCtArKY8B3K2AvErRhEXQKPSkfoMb8SSjn6dv1ZcDcFQzjMLhZdBj5Dn+sZnKImj4C+65xeWLnMjMKnZFDhPGkJsCUuz+8U0cN3T2MvIVITicj9tQOf5sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753643994; c=relaxed/simple;
	bh=Uwtcc2avlzesKgtKBRJTMemfazFN17XbYr1rVC3ptKw=;
	h=To:Subject:From:Message-Id:Date; b=lSo3ip3x+v34s/E3C4LKM+x2jzeJfZ97DJoCNykf+jzp1Rmdy5vqQ6xQH0Kv4DKlZkOoTOtY0oXr11jIrweK9bHQ9MYg+6TgHL+gecsuJkDaIfvCzYQub63pzds+Adx9KFPSF0TXR4sspfXcgqY+3lLb+TklJIrVoVID90ckaJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ask6ccv3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ask6ccv3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C4FC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753643993;
	bh=Uwtcc2avlzesKgtKBRJTMemfazFN17XbYr1rVC3ptKw=;
	h=To:Subject:From:Date:From;
	b=ask6ccv3uLVZjUlXR0ibFOnZt5NeO3pYrfUPxtZwx0KQDUMkc8d8+Pd7gXbuarObY
	 95lvG0EZm52q5GN0mZnHYmDkFK8CzCA645nvZfY1iEGwj3S6H0mUJXQAYeZxUoiYs2
	 eKB+4EShGyan2DRY0EgtLJMtPBiPsaMr+AKymW2lr1sXwMu7xsXnLZKOrC8gd3Sfef
	 KiA5Q4hyqT5leOF4loVrZhEdmltTz8PDObZyH3KUStouvGAA9ChydheW4/SmAtb5hq
	 chsmAL41C1LudyULTn/IJFaGwLwd3xLERb3Zf+Qg3WbjNrNS/7oUDWznab69Vn+hzC
	 /FLp13aHhWsaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1B7C87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175364399357.21847.11968281320854731454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8eb529a1cfe35e10a7bd775b177c4909b9826fcbc6d0fd058426749b68b150c
Date: Sun, 27 Jul 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753643993
