Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 042A617C9
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 07:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710575897; cv=none; b=XITTFsba+zFhJIz2ZU4SdjtwFLlfDK3mkrO4mhlT0AnIZ+Cjzlo3wneV+//b24TMVOmpwJWdzQEOMOrfd0tggYvMRC5ZplJ8fSHGJEQDg78hOWFNWfWf/nDgocrLCZcVcDW2nhiOqjLTJ2g8cLTweJpO+6xfzwEjr2On9IR30+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710575897; c=relaxed/simple;
	bh=jcP2DiF6fY6xVrvekx97tHz9Ap/D6ugF58pB0A01Y7c=;
	h=To:Subject:From:Message-Id:Date; b=jaIphsu5LDdkb96EO4aaqPwviIQebMHmT92+32cKq9JvElpo4YVJ61qqrowN0RvNo3hhsudbybMVKct5lZajG2lhsVaqijqXNKJGvnrPJxkPV4Xm55/4af/RCjcAiUyKRZ+WKW3obqokG9Fos8af0VIUPhsQGcK4svpZJTtpdwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iJoCFGjU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iJoCFGjU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 772CAC433C7
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 07:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710575896;
	bh=jcP2DiF6fY6xVrvekx97tHz9Ap/D6ugF58pB0A01Y7c=;
	h=To:Subject:From:Date:From;
	b=iJoCFGjUQYajw0kd+AGWhwtJRDeo9lDpjMxC0No/7UfqRM4jJzeWtzCNojs4iubXC
	 lIivuJBPAVtDwN68UmGdkfyhfBAmg+Jbj8WpAWb3JHyVWMQFlrT3qHWuv6b4L/MLBJ
	 npSimjnnTqidDLxrK/ump7QIfbxc7B1Vi23G+kvjf9JjOiuj7MvcjX+AyyHLL2LsGL
	 a16GdI5ennj03T3hPA4I2AoeIoRto6H5yjZbu+jREupEu4IwDbfeiZqYcYhfIZQpYS
	 CClgKzMsCLpWdsnroxwMYzIDN6TXobX10UALi9TTIWUiGw12X70hN9i2G5LLNlywKC
	 dks6P7SzmGMpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 644A5C54E5D
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 07:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171057589637.11741.8906543203035742873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a8f1fe4746343deb0e36e4c94239295fb60db6526b5b6e9b40978ac6c5548b3
Date: Sat, 16 Mar 2024 07:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710575896
