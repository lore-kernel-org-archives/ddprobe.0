Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210431E511
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760987394; cv=none; b=lKG96uHdwTJPX+TRWFyu5ENCxl1OHv6XAnIAA2zdABynRSKS5znsIzR5GIQNViLtcy6SFyfkZgS5quXzFEuEhdohRMFGjNASTJ9LreOQYogCfsoVN7MvFuja633ldRSiFMf6tUpWdAa6xYzSdNf7TI1EAteRYyVeAiD1AySVick=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760987394; c=relaxed/simple;
	bh=M1qxFs8jsk5dTGvvuVZfBhRe5YmfR/f6SZr3959Hdis=;
	h=To:Subject:From:Message-Id:Date; b=q0O8rsD6yAayblgDkBu6gLkyv9BKYSPALqikg7semSk5vZu0OWfris7i+a94w1e+hqbjl6QQMGxUozYfqvgnN0xALQ6IIDw36p0iMEadyK/SuFTJmOQB9vBgOiRybQzZm5l5rKyU2nvOe4DdEGGLye76kn3EHmn+GIiopsGjQL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IE5INWzW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IE5INWzW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DDDC113D0
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760987393;
	bh=M1qxFs8jsk5dTGvvuVZfBhRe5YmfR/f6SZr3959Hdis=;
	h=To:Subject:From:Date:From;
	b=IE5INWzWRjxg7ZZsvmd12QmzJICttUwP5TrfoiXdhGDqBAt09CCr7os54YB+W1En3
	 q5n7qGN1aR8tAzwDRljD4WQ0cjE+QUDrAzfEmfivhOhSUOwELG9ihFqrwlWIO4Irz0
	 mqfI8GKz4TV7iSi1tStnVtVbG0wZWcZIAHfYB5NQGy6VpZ7mklSRmrjogLj3lBCqsF
	 WIjbGi57akiFe0v9EnwtYawQAsx1HxuICDRBsos31VtZYkXzlHt02QdFhmF2MwbZgv
	 6dyCc7pQtHf20hR1D39WfFWBHu6NqH4OlqKfNSPNQHraxskMnrhDNiss7gIsphMUzt
	 /a9AK+AXEN24Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92ED2CCD1A5
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176098739358.5855.9371363754898481541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d902eda638ebce46d557d45f9148a2fd9a7dd6513f6d66870838a84dad490ee
Date: Mon, 20 Oct 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760987393
