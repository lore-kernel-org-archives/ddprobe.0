Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0366E7C6CB
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 16:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708186697; cv=none; b=SfDiSE5OlAeo2DF+bcpHLG6PCuokDCm2z9NOo+i2aLpbQpsT0HPc//z83olLS1LEFSgoIsHSscVzdUEJr+uJmqNJGMaYvUzdSyh9+PtLvcWJGoPQZ6/q1/yC++GBJZj2yR5IFM7BycWFfQYALft6zZZMMVs+lqMwY5zR3ZkP9og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708186697; c=relaxed/simple;
	bh=Moe0h0OXh2vaKs6gHq+Lz4wKLaCb0mgqeHQ88VkaXeE=;
	h=To:Subject:From:Message-Id:Date; b=GV5sXqC1z5Rl6uVazCokWzsrIa7ygztDts80XsLd2A3rzoRYIcl++6IwQZEdCFLvv4GtgLBcHxc4nopAoDtBjXXowxvrbSeP8f8yhwV9qlkybcDZ8MG3CfM8ae9NNEipIigLnwqCZ+y8boRup5U+GGZue5yw/JxcTWFeuP34FXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZpDBN0aB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZpDBN0aB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83DF4C433F1
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 16:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708186696;
	bh=Moe0h0OXh2vaKs6gHq+Lz4wKLaCb0mgqeHQ88VkaXeE=;
	h=To:Subject:From:Date:From;
	b=ZpDBN0aBdoZlcS6rwAayh2aNyhXeT/Y2U6MVGFdHHJXJLh7b9H/+EAzf6xbbvNkaG
	 qEy4PX7MKrQDpvSwe0rkeG9l/Zrg6d6dw5/Hk4cTg1TiZZjTvgiIbVcQ0PY7cGm7vX
	 bCF6Mr7qltUzRCFYknjT8MHytroR9kz9eevNoQU+tEJbPPDhB5Cj1T2jamdsyt/L5e
	 aG/MkuYn+WQhLIj53r4VPf4R6MurKXcLsnOvT5asvr3oYblwCKqCPEbz+mMhLv7YuZ
	 5hCJp8OMpYztfpgT1iUitDHLCi+VGZ3THECOIW9x99k+wJYRn5S1I0Z7lLJwt6FNj7
	 6sJ1dQ4WZs6Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65384C48BC4
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 16:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170818669638.32533.15491905485372563500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8174cf87b812556d623745ee73f2994b5ae3a7f2fba1a8498043b59f8d5c360
Date: Sat, 17 Feb 2024 16:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708186696
