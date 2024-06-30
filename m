Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51C352576F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 17:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719770063; cv=none; b=NwmPBFrvEy8Gx7wPJu5JIusOiCqNg5FfGSiPHbTQeVQup0VnYq6p0CLw+DlOnvSg7HsHt50wgb1ED0ndUAh2+bQGtXPNqZe1XPKZRk6YMUzqNlN7XWQRSeH1ME4cGM8TBLmjJDfJVRViKkWtGSjchChfkFXnHXD3MQhPdEGK884=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719770063; c=relaxed/simple;
	bh=7wpstwOyc0y4qsFN5PonU6gOOLwHuvvpH89jFCyZphM=;
	h=To:Subject:From:Message-Id:Date; b=jbPBg+MI9QCqpS4ZwU/ytJh3F0OWnVPxZ+o9Z+x2dKvbD/sxe1+gO6MJzr2MDaOuJVQRIh59l6cwCkB6phsQEEpIEeBcdU3ecCAXh4yrofI9bDJktlzKPZUEiRa8q8e8JCDl4+gAJMDY0OEqhXLDrmg3JwD2cAfgd4l302PrMJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FEx0yKcO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FEx0yKcO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D45CDC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 17:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719770062;
	bh=7wpstwOyc0y4qsFN5PonU6gOOLwHuvvpH89jFCyZphM=;
	h=To:Subject:From:Date:From;
	b=FEx0yKcONXqTkT7COpKR0hJDSyxcl4McbTggIsYvBewZbL+CGN8i/fUWRRms/l1W7
	 KgHH1lJ0iNubue2gNZigosQ+eYw/v5oiS++Fo19pmqWAwasEd214fvHBVKGk4yAKeP
	 HodrARWPxZqdvuiYb2QA7BidkoKC4FO+zzgvjx0464CfUODFKyKmW/djI72BNipkPG
	 2l0lb4lJVN5E2u9yQNLGyXtcRTi8HmOTitVO0w1dFQya2IvcAQ6LvmbAU/xIWs1IQK
	 yCKSBCuJjJUvMqQQEslYrjO1/FMgTOpCsUtu2w0dFdo7XP133hIbgtTVlRPxreOhGX
	 z9xVo+xke9B2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7387C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 17:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171977006277.29421.11460608997933140979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46fb50bcdca13198480552b4021dc2ce2ef99091b252a49989d955fd58e559e8
Date: Sun, 30 Jun 2024 17:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719770062
