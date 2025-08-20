Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3905924678A
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755723594; cv=none; b=C/q9fuD3Vegii2ORFvB/+V9CZQETX+jVtDFFtqiNK1OFbXfANGJSfTo8zSX/LmKIiwcLJi1y3wEHsN8jz5w2weQB1V7/NRWTMGE/gGY0mQ08hJT6Dt2ONwWyCbrA7uSp95KAQUjifug2K7RQfCckH37N4BYxkFNbGoaNY6P44GQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755723594; c=relaxed/simple;
	bh=waMgj1G/7154j5JjYYQCNiuH+NLXrmnNUwZtSm9Ul00=;
	h=To:Subject:From:Message-Id:Date; b=ML8WXp27NinHyMueqOLCdEcY89vDL6Jd93dWNOfncXgzHMnhS7hzBw7MiP2ciFijmTcc9mi6v94Mu+iXZfLZItifIf+Zv0DJiOHowtG+bT3xRoGXcSQ0zb61tiXg+FSNjltb+QfCTYK9qoKWMb3VljA25V+WaYIO5P0th4BoZYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bQWjKQqH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bQWjKQqH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED9FC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755723593;
	bh=waMgj1G/7154j5JjYYQCNiuH+NLXrmnNUwZtSm9Ul00=;
	h=To:Subject:From:Date:From;
	b=bQWjKQqHGFVATbAhg4pRDOyFb7bDepajc0pb9S9g9Yl9RjEoSQcVmJcn11TIS37HM
	 azqj/whD3jCdP0pktjXIKE77UntarUmeVAdZpQQZTkbGmu2Qo8oAXNQsvFnFWU/38F
	 zC0Ky7tmu+F/OB+fDR0/YhuOuXFpq3xuw7bPyFfsBYzSMFWULWMQ/C2urC8Wny4Kxi
	 uNm7qN6TQMpQhbXkOJ5T/46ySFWABF41MK6jW5pX6iyNUIk0ajb6PAuG+9YGrpi/jJ
	 noWcqvW+GblHclNDJF9aRAEjZ7tNYHxTP2Gsa9+kMuJnugqJh8LmyYz6M1eVIr+D4C
	 qQRE4az1D8QAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F791CA0EF8
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175572359357.3090.8179269502178809564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7505976e43c21770266e9ddf4167b6e103b2b8c9ffa81616448b3af75100157
Date: Wed, 20 Aug 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755723593
