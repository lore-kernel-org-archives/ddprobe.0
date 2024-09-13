Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C06F41DB921
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726235753; cv=none; b=fhi67DQ76PcGbj3aQDeHWMAmL4lUJIYgsa10C46kIK9gYg/CHU5TMmj3hOJ1jdqA5/GCT1KzjwRFefaM9wxVahiPzOBWvN4zP56iD9liD8zgPZnYkHvCS5FlxSAi4fRDiTbI2UWm1/TEQknqa55rybp41jcbviqg+2jKT+qPWKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726235753; c=relaxed/simple;
	bh=kOgPP2kT9McRWAQbrSaF67X4y3XhiJ3kG6VQUqY8OyY=;
	h=To:Subject:From:Message-Id:Date; b=UjeSnXEeGqJ+8OYf8Idf+h90Q9aOqAol7YQWuqaGo6OMkBzBWVHLkFPFj3dq8F7qIfytaOtwdjLKAhEBl21u9Y1gR1xL3QrQ0uIMoXAa8IjNvYrMqSujQnESWcHAg6CY+Mauf4jpBw2/2czllMmIQvXkGfUHpKv1qFx3tB0AcA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YKv8AYzI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YKv8AYzI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2441C4CEC0
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726235753;
	bh=kOgPP2kT9McRWAQbrSaF67X4y3XhiJ3kG6VQUqY8OyY=;
	h=To:Subject:From:Date:From;
	b=YKv8AYzI2t9aLy+hhOXvQuiSuvQZ6sNk7uHU/2syRtkb3h7+uKyz1Q7yaj0lvHlcC
	 zVWlFQW9D5NgVDqvULgZLQ2iKHQOHQxzopi2KNX81yLtrJ063G5+n1IkDop0VIfv3X
	 ptFKScjPICbPzOitQGrF+hQ6RvA0Ktd1VJtZ7vr5AEtPVlm22pRoAKvjF5GsFVbKQx
	 Z1cqLnFFsHkuBovPBcdeqBlZIvS3Opdgb1WLerY4tgWJ1QiH+M3geRW8nTmkSJlev7
	 0a9301LOzn7Nr1swaWL7Q7QVACqT1BFsvm+2AjR9Lkhi75c09MJvAgQDFYod28bTH0
	 9QbiS9zXOSCOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920E9FA3757
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172623575358.29565.17445659597859189983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d44370fead094b23aad5b9f3ff0790a6bf6e9abc54e4f165bf79fdffe58f388
Date: Fri, 13 Sep 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726235753
