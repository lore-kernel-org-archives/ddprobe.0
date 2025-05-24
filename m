Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4F04A24
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748119194; cv=none; b=bmU1PN1t8v9yTgYQsNhrJ1RL+okGO4QZFd4V/4IgRQfMRFYdjJKt2Vjz0bJQo545jSasp/F4iKKqeLWdIrjTAtD77044IS4rl7T9gWy7N9IROUKWTbN7z5NihSbVPY14+4/fedeuaGSAwjIOKGKMCRgGKdLmSvKl09cgfyLsNn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748119194; c=relaxed/simple;
	bh=/Mdt95yJ0zLFJkw6VCOo04C30/8JPrDs1tKrCAjrAbw=;
	h=To:Subject:From:Message-Id:Date; b=ejQeymBi0CKSjfPvxLC/PqNMkN427tGPt31BO3FK0J3t68TUgE+Igc68JLO7+IfJ4rDYiflZdO8aMlhMVKl3SkWuqzDYfT+ymLx6Kb16iquvWSUY4QyYTQHYc6/j5QmlS6/rvPwOy2u++Tx99mvvAB6wD/8FA4B1zCD8KDEjXlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nrVsgJd/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nrVsgJd/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28DFC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748119193;
	bh=/Mdt95yJ0zLFJkw6VCOo04C30/8JPrDs1tKrCAjrAbw=;
	h=To:Subject:From:Date:From;
	b=nrVsgJd/gv9Pv/N7rGePSfGxu5DDJilSwL5So8i9Xpown1iRKOuZs4uw2Su97riJr
	 ZnQHmfMAwjGPDz/CUCQSwGZOiuvqff2VG1heDlkxlVYUff8vjzweEG+nku/ILxU+he
	 aAA8uPAC1v9eor3ZOTqaOd9rWvU8e4sm3EgwjV8CILSNWnJ0O4nT8YaeWL0GmbuuF5
	 n326EyASFK5QVlrBQJTlOYMaHaOX4QtQLLN7RszTjrGpxDvB21oDO4zqjZqGjSVwxN
	 J79ymzVx5+cmYRt8XETXGCes/7OKn6rN/OU2puuwWeZa3nSCqymHE3rMqjf4CtEwGS
	 h2LEv3PWCUfpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F072C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174811919357.3289.18188158937295308984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fff233a34a29dab3cb57bd76938a19e5d6bfa9875abe4297658954ad393c3fc
Date: Sat, 24 May 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748119193
