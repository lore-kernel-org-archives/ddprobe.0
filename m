Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E28B4A2D
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748290194; cv=none; b=PXh9lrS0E0j4Vv5hAddcEr27ecslN0OkrIdzJ72YvowPwVo8Abi/0YYJ/79MU+SGvoU0E7R82OGx6Y9rQJWWsD4qPTD5BDbhCeE7Tts8IAWZPYOsdGpRQm88Euej72sXCl2I1UXtG29nyY1rnNfOqN4P0aHEpJ2qbvZC63xvCfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748290194; c=relaxed/simple;
	bh=uWJOnlm8f661F0EvrJ3PurQZIJFVPZPh0kgr8uXkCk0=;
	h=To:Subject:From:Message-Id:Date; b=Eykt+Kj5Xn0QeOuDJ1l7/irQTe/gK6+lnDZDSrR0aY5m2iPF9J6PnQwlODujGpGJpEv/4cOO5Wi/F0/gWdyGM7vo6XRivzxqqLETE6+YIKDHhP2dEOd3Ug2x5pamj0cpdvEpS1V0usu+6+q/28EMVqjPHH6p4qd+IlL+2p8WHfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F6abb8GX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F6abb8GX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45A1C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748290193;
	bh=uWJOnlm8f661F0EvrJ3PurQZIJFVPZPh0kgr8uXkCk0=;
	h=To:Subject:From:Date:From;
	b=F6abb8GXYaZB/pZzay/U3o7MAl0jEdF3ia6dT+kXyYAnPlhFbUb9YiQTO1qg0QHes
	 +1YKsCmg5x+UAZ34rdxVrVNApoe66rYcOY92Ao55ZMEinQV5R4eOmjJFArnbhF8fwU
	 5ZyFTJzxs/WX0xEMHdZJAn5SFjgnNeOP/8YU4iAexNKeb34+leXmEkMaBYA8MSVYTc
	 /1/Ygf+e8JUkgDbtCcJQ6ot4105LYtILLZOsRt/Gm0dG3e41aWLYcGgz1dPAKdOdFc
	 B/GqjGUvxT+uaddHFFrrpXhLUOZQkUkOxd5xeN24MnfNJLw1nD7qXYDnjlL3qhiXw6
	 n/Br8k1OCQuMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959C3C5AD49
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174829019358.22317.3639311115609730597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0601c0e1567d4f2d42b98e9b25b7e62b68da95d64d2072de10e49a0b72463627
Date: Mon, 26 May 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748290193
