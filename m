Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EFC3264FB5
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 04:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763439714; cv=none; b=bLh2OauFhPXv77q0tI8PttXVjDrh05jRDzYV9P+Ff9Zehbzr62Pf76xg0q4tyu9tN7A0RQSOASpN9uk2DjE/agWVXAKP7GyM0qRbMwKfIEMnO7LfUm4wTif89CZiJh5NVHY9MRjA6Ftj3hZKI+F0aqkj6PMQevkAdHP0A1rkYv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763439714; c=relaxed/simple;
	bh=AxkqHmpy7oTPSRsOkcyz5Jk6eg7mlQMlD28mfjcYWtQ=;
	h=To:Subject:From:Message-Id:Date; b=slyyDfr9nwWlqHl5m4oh7ELzH/cLcgHUfTS8Ky6OJIaoAgeylP8jCNtgBu5dFHKr72+/qwBQwMksV2cI5tM60Q3wLI6wVHVQvzSCjQqK3hk6P2DgpZ8xLvywF1BKhbRufLwcGp6bNB03OiWhdDUtGwgncfRbULKRg/567sV4XrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nUwPdEku; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nUwPdEku"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C604DC19424
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 04:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763439713;
	bh=AxkqHmpy7oTPSRsOkcyz5Jk6eg7mlQMlD28mfjcYWtQ=;
	h=To:Subject:From:Date:From;
	b=nUwPdEku5n1VEVaQrReJ49ZKxrdx2vUDtHSuBUmagoOkqvkPVRcXX4/0W3qLwPy3E
	 +6cKZQpMPOJnHtXuc7oR7wLQGD4N6YWzpSC3gFWohAS97eCmdiEVCfHOzYXytX96cV
	 wzKPMyPz+7TLjhcwkbvneOlBPW9AyDCjRjHTIUgiQONcVqV+CjXW0RBASi0WdhOpZx
	 l5A8ibzVIQHMukx9xM8bDhZpfs/tYsW78k5WkgTEwOHOlzgOnlqLckLnud8W148N8n
	 SmbtqGxMoI9KCJWV4Kog/WgByxcaziuqDv2rwAJe0kbtgKXDvCea4vLyPVVNuEX594
	 ZJiXBKjTCoXDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90886CCD19A
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 04:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176343971358.17392.15984051654472966995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0f3fb8d4b1c1cccef0a836d083b4f894e45dfcd4cd2b89bdcc4db7bcf4bf7ed
Date: Tue, 18 Nov 2025 04:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763439713
