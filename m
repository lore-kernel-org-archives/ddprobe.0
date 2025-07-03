Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9012D46D0
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751537994; cv=none; b=ARBJdB6kujakt1r/vZWm9iexfLz3VxYXZ/kbUkoMnStG5M4vUqAo/Wn8fT82aybWp+YN+DlkDROeJbIPaEnQW1nYGQ05/hAKcwjm3CvjxCdkmRp1nOQHrOAzheq8cDdrwaBSOMGKCJiYgF8Px5Mnug4FctPugkcebYLSBD6zyJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751537994; c=relaxed/simple;
	bh=5iTxMW8tvdVXljO26drPVNRBhn0S4Oosp/w1BlXGo/U=;
	h=To:Subject:From:Message-Id:Date; b=Q6Mfld2JMNeuC0soIlvOcNZYfRnqNEJ5K2zfxJJlLDoWAp/D0O9mAK/1T52W91D5p19ETkIJq9YQJEZktH0Uw83VVZBlSOQnhHc/qE2/Q4aaCWJWYaQ92+kW3qd0sOJJCXBvq1VUzenta3VklbAj2nS8RrAiQiYP5MqXwi0fcrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jRLASHT6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jRLASHT6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDA8C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751537993;
	bh=5iTxMW8tvdVXljO26drPVNRBhn0S4Oosp/w1BlXGo/U=;
	h=To:Subject:From:Date:From;
	b=jRLASHT6SvLGpEfXdNPi8TV2h22eIFDegKCHR3UEyYuBdNDC35qsQJb6DTHGfOal1
	 TIf4fzpQFuvHFT9QzQjNa9QJgM5toAgIE8LPm4glMeC2tFKWJM9UnQq6rdDni4jLgu
	 9dsS1p4ycMFo5W4wA9t/SspxJrWIDWrScmhj+oWjbLW1GRSUE2EQKZBO5WmTFZ2EtY
	 O/3fHshakC0eH3cYg8RWkH5Qi/psUjvuP2plshL+XCGimm8KZiEp89u7yya2TmqmB7
	 eLbqMN1oY4igakNE8bt/hb6nTklUHmSV4NsJ6OjX4nTBj/lvsdM8Ax3vJruN7ETbc5
	 xkvn8XCqSKy0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDDBC77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175153799357.21955.6529774944460526273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ec0bace233b1d10922fa6f2dbdbf683e88128b0d0bd1b46319c7e84d2726bd5
Date: Thu, 03 Jul 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751537993
