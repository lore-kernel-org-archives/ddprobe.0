Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3869F6AD3
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745689194; cv=none; b=c17ZZcsYedRJAnCQaLuIcC8uVoGKWp2dsDvNqaqkWKZGY53zaWtMkXniik7x4Tbz0ldseEfMnQRSKaOzoyiiToBOyqG8Xeuw+6oBJQ0SrqCAsHSx5oseEU515ecRdBOYubVRZxZkQ2OCr2iNlZ1EMi2Dp+q+J7EGUPZ04rNWH0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745689194; c=relaxed/simple;
	bh=xMnwaFrwp9LhmjLEq3u8lKlqbokVC48XcbKkciu3Iu4=;
	h=To:Subject:From:Message-Id:Date; b=YtMsVbBhDP2qgkZVpvIvxBHFvJcIB61AZJ4FT8e8C4EVbnzUB1skFdlWibNvmcCI2gpCPCzM0PZcbOPLIPBiTXns05AHu5pMtVSKq3yXo42VX/acOLV5i8HhwdOIVc939Scrkmjnw9lM54b3Kwub3JZA7b590k/LSgoMKQNBgq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jrbLMn8a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jrbLMn8a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9521C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745689193;
	bh=xMnwaFrwp9LhmjLEq3u8lKlqbokVC48XcbKkciu3Iu4=;
	h=To:Subject:From:Date:From;
	b=jrbLMn8amYm+0IMtQ2usgc2ewK2FeEt/AB9Zj0zBCMYb9yuSS2vFLIueawDBGQqMS
	 cRTAVwF7bu7Xq/iTBND/fyr41aS7VIc/dx2ci9M/ZWmn61+AD+Mg8d5BXLFcksUx6c
	 kJOrmcSYWNi3yMwrDN+pgZytXgu2YCcI6YAQRwb5TC1G6e0A91d3sI/a2F1cHAhOE8
	 sjCp8lC2MoEHaNZf9NeO2Xa7CuwnVrNjevpJv2GL8NQ83D2r8JivKVJCp5nJBUbPi6
	 8zN9J4OVBv+iXp47ZouYls+goTp/0snfnldLIGZ9xGYtbzInY9oOYBhAR6O3gkmR4M
	 gzavSshOC70Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B92C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174568919358.10467.15461062117587133296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a94546e2879e3a431331da607b2a5da4b9c37c165955c2ddd20e02a1651a757
Date: Sat, 26 Apr 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745689193
