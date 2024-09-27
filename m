Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 839AD188583
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 22:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727475954; cv=none; b=SblYNE8/icqnIGsHH+4MSbxanjdqsxU+BDXoYBdViqSaoTaXhqTmYH+xoaEQtvfZnqIaBGc+2aDaElGWXN1V6Se5CwPElQnrEJd1bpl1arjJtPPsI3LHV0DPwPv8Hf4XUcs9zdcIiZTpdxB/7WqYELCKWX+czLa8Q6cFS1At6F4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727475954; c=relaxed/simple;
	bh=KQ6GOogwI+VLMsBdJXfnJJdyp1NbkyJX+hjF2y5W6Nw=;
	h=To:Subject:From:Message-Id:Date; b=n4NUTKVJp1NhkoR6aKeoczo0h/fkHY3Iv5kGV5BFMLhVwNM0N/2qKgMcZ/IMPbeX/3WiqeqJTHpgKd+g6F980zgZabGY8KAyjTKhxYO4oO8XpzLAobJlaM1XfvtglNwSOB9SmGs/UrD45GnRcp+IYCjYDaxiqV5FAihKrLOyEhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dWhtFjQU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dWhtFjQU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9DA3C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727475953;
	bh=KQ6GOogwI+VLMsBdJXfnJJdyp1NbkyJX+hjF2y5W6Nw=;
	h=To:Subject:From:Date:From;
	b=dWhtFjQUqRER2Jga6F+XupYV0bBlp8RAmOjEt83J2ETlqRKck8ohpe5kzPYfufroX
	 9Nhmoq9xtr4uzDLIhYv7BnoteFv+fbL5VS3bCs1ohmW0beaDVGBjhAayGnMX7T5Iyt
	 Hy674XCSJaiH02YJIhPRp+nASk4RFIWMVtuvuA8rzTKofTspvcG3uPBhWiugk8uzbY
	 XjmM65/geTZTsor5sLwUKXAsE3/I+8ivlQKqJ72VCoZQenMwLJagFVfja4PYtIZWoe
	 VNeTGAuxRR6GHA5bP8lkH7/ncBGLKXO+sWV7Crsj9sP9Q89/ZcHmqfNUrYOvwP8X23
	 +bjfMSEc62aew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D9BCF6488
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172747595361.23663.6381671706939884224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 233725e3574b82e879265691d89bf9255b63ea0f7f8e071ef58764d594374465
Date: Fri, 27 Sep 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727475953
