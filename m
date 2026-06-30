Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385DA367B60
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 13:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782827914; cv=none; b=iTaAEpKsxur2xZY5qqzcFGI/TzNWx9NGuOtEU2j3UOXS6nrgazfsgKzLkS+vWfxKma3zDB23YvxP2Bhma+X5l7z+bRUMq53mDaQH9ZurNbJyZ/Glz69O9XkttIkX8gZWSUexra10SXxGUN6aYhTIx5tN4sYwwlSzzEqbT2kEY7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782827914; c=relaxed/simple;
	bh=1N0MVCl1vvhUJ/G0lzdApIdykAZNLN0y2YdpKrI6MnQ=;
	h=To:Subject:From:Message-Id:Date; b=lBranEUElq5SSkkyWuOm7he9RlYVLvm/04lGIqH2ZR2UeoHZLm9gQNI3d9282MTNRO3HpEEJUKLT9QsX7ZOVEJPyLKJlPu1uCHdo+JeckvwMwMe4p0f37h3P5t47aFXYOjBxuJpU0mQUEzWnhDxCdVxcecqTPIxUo0pzp4xZwBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R/2+Ya90; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R/2+Ya90"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C35CCC2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 13:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782827913;
	bh=1N0MVCl1vvhUJ/G0lzdApIdykAZNLN0y2YdpKrI6MnQ=;
	h=To:Subject:From:Date:From;
	b=R/2+Ya90E9tJPfhl1CdU/J6XLKsjhkTHBlCU8eXvl/PJI0xPpl0jFUx0gVK5ie5MM
	 M59GqGL6HC5RoGUNEIKH3yMXCQXcKqKCUuvxIftfQAIS8mwAjx/gmDJ4tU20JTESWS
	 iaWHNuZJXP6WE3JFLHljskVxYA0khuSCw3kr0m5q5AsrmmEcjfKxBVPBFe6f13kNXv
	 m4lRAKjbWnzEw+HbM6D70c1EDgQ695k0CAUf5pfdeBJDcEfdpVb3lJh/y1osQtwkwN
	 xNHOtAPS7lLJCo2v0V4175mPcInttZz3uG/3VW9qCOVEgHVcJXl/EAzRLo9RNsPzOr
	 iPf0xx8wA8xcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A936EC43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 13:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178282791368.28141.10606521892237438791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18bb300cbe65933efbd2e9d4ac2793691ab08701d5c440bad695482e66c4d276
Date: Tue, 30 Jun 2026 13:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782827913
