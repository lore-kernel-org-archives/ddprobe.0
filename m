Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A861E51EA
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762082994; cv=none; b=RZIZsNX1WP2F76u2RjIQZgOFPC9d7W/87A+4LrTBR+OaTmhy4s1xQFuFXsL7U91EFsYpuMkPlXlf0K9+VgnAYqNC/aXqGWCHvQ8sLGlPrJXKcdEzp2PdD9YBjrzoo2qmqBG+m27nBSIYzLXEKIkMVqW4g3SeDU+kWcnlLGK10lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762082994; c=relaxed/simple;
	bh=SNBjkps3FqLU/MUui6RuYw8DbVmGMidfXl1aAaxZic8=;
	h=To:Subject:From:Message-Id:Date; b=iIYsCa6JfQxyw/H80B7geIhWTvq97QzSYcGEKxMJzcM4+Iqn2yTL2ECRvPHbPHyiT2nk4YBqgSDVoGOR4IhMyFtc6wIQ52T33nHDE+UlE7xYbPcWlKKlW6TwcdqX7znzd1HW0VZjfYZMi2R5jbkYFsdMw34hN97r5yWWDrqO7I8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N+JpWDUj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N+JpWDUj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1FB9C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762082993;
	bh=SNBjkps3FqLU/MUui6RuYw8DbVmGMidfXl1aAaxZic8=;
	h=To:Subject:From:Date:From;
	b=N+JpWDUj/yYyHxSys93La5wG2DyLhLGhF0eS+szxpIhdK0+fQ0tOUmT+dBT3po7yd
	 JGvvoWxJzU8O/hvLXS0YQKK/VMYCo8/WvVP6eb8KAqRozgiGL91pdX6rlrJkAAcoxe
	 TK56JU+tXTYe1pfTZLd0+ugugetJMVEUJsc0xVCBSmj1x5VtIzVrHHngglJcr6sa4G
	 hVp3/7ar4CV2fusJgz6txa6Gxz5sn9vdspKATplZvGg+iaYC3r2fvoVopfOn4Y+ek+
	 nhJTusHNlNLWLr4ME8WQ5H2EXNNWJRzqUqvU65pDcOaVlET6CqP2Q5d0Yk3PoU4val
	 1/+uYe+h8r5oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9277DCCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176208299359.28278.10497162550582268549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 954644d21135ba10837b8d9501a5ca4441bb1e62d0c42a9a7f066e2a15662254
Date: Sun, 02 Nov 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762082993
