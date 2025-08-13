Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2826D187332
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755091194; cv=none; b=s6bfjupVj7alIjs7vmsNzBsOXUYo1wNwDq7G5I5GLoVorkPUEnheV2Z3a03eXwV/jT04mAH0px7t4S1g1bVi1WV0V5rm405+CxaBCoThNL7Px4m469/r2jVVbepLmmuOYVC6lQkck7tPYbBwdKiTxNwC2DAvwkA8YANYoseU/+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755091194; c=relaxed/simple;
	bh=O/SDwK3RiX0cyuMePg2VjeUsIRB8f+LsD4XeY/ZgHK0=;
	h=To:Subject:From:Message-Id:Date; b=QEgN4X8ZzqbmZkuFc3/5WTe0DeHbzd/4fkUlRNrOQcrtZffabtboH7K35hiIH7WpuMsbBUjq+w/ZcLt9cGesa+hJSLd6Qlu2LdYcOvkxutE2Eu/0Oz3mYizCa8AK75oYoqb5nJjcp2FE74ZspxO1kcj+SipuHDEoFkUplaHqUGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ME9Y2uLx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ME9Y2uLx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C90C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755091193;
	bh=O/SDwK3RiX0cyuMePg2VjeUsIRB8f+LsD4XeY/ZgHK0=;
	h=To:Subject:From:Date:From;
	b=ME9Y2uLxCH2ZkkcrptJbk82cQj+CHjfjlPROZpWGd6kZ4okVroGo14cQ48vaIYHBF
	 wEjs+qsH1eLmK0Kam4OsbO1KPq5sxc4oFzk66AEoQZnllqHP3wNkEb5yPxBIhSh6nG
	 3HB+eZ1Gp7OSw3xu28xQjjKaOlwT6ZZWWhwDpVRU8+V08OXLfsECZJ/mJRrW+001DO
	 KIsU3fzt/w/NZCEjg67TOJOAIq3Jc7WaYEzxEYNGmId3MeLTjsdSDvVbDYd+OCgy+2
	 c5kobjqFIEINBsPGE4cgbvrOpxL+QB4QwlYDUIRahAZllJ8ay50fZ7rhMX89sHBu6q
	 a78rzEci7ZR/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E39ACA0EE0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175509119357.16092.12935803780504098371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a697f85cf72a35a99a59aa032634ddcc34bd5e9e658f4227066a6a2e19d8af12
Date: Wed, 13 Aug 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755091193
