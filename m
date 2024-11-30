Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EA31AD23
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732968354; cv=none; b=oAqTusF9dFe/ZkdW+RNwZeoiwU3yAumQg8zYG9uWL2gd6vVdnTas4wmxHnikEeEYpxAti5OvCp7eNHspFfJf4roIyy6JiJe0wyvp/JqZaSh/b7B2xfHykc5V5DJNSYvXefZcwxowltpU22RngG0gGhz+JZRXtKYWfJSAU++unm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732968354; c=relaxed/simple;
	bh=JEF0Qm9GwOoSxLo9pEN+ZJMrY833DuT54JJpIqwgCOs=;
	h=To:Subject:From:Message-Id:Date; b=pUqhqe6ekQUfiu0EEoD1qWKiiCM8WTyda1LZyN1LZzcnOZJFbr4CEmIChshtT3XLRJguJagV0h+SF7tGGN6k8Z88eR7RXTvDIC7MS7qfB7VozE1+KSvMohgyaLKey7NwFLbn/2r/mnPY5Vf9YtV6595Uls9Iyi6eeW4rl3pmheQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vALsEgqq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vALsEgqq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBB42C4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732968353;
	bh=JEF0Qm9GwOoSxLo9pEN+ZJMrY833DuT54JJpIqwgCOs=;
	h=To:Subject:From:Date:From;
	b=vALsEgqqOBIfkrSgF0En7LFR8qOiDNIJ6VAGWGh35w5UNY18OMFHpLjXP4BktAARO
	 HM2hqf8sBS3EqTUPiV4mmrm7AHdW30dFt7dhFsK1kOGPx8dqeTEk02ZUgVdo7JJgAh
	 fB2EcAOz+Ivu3aiouNGdoMyI+nfmoOQj/Dp3d6k+b6h8yQpKH2jQxS9mL9DGiiME2x
	 dEeKwQpyYWYfqiktqcI6ok5YuGovIk3hobd3OGR2CNoc70ZOacbwv0A3mGTgoOo32n
	 cZ5B+sC5Q1rE05fByCQmYSMonWfUvzA/laotkQY+dd01lb29xwtUrKJJk/NUnYTAem
	 7y9xL6BgyDfxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0814D735FF
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173296835361.26057.11625855743215454093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ecaa5b4f62bb38850e7ebbe8e8519643a45a7d8df9941c9ce74b7e545dc2d91
Date: Sat, 30 Nov 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732968353
