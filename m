Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201F02CA5
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727705754; cv=none; b=is0Yq/dU2pbkI1iAZihP4BjAPrbH5QT6AQBGTMPMAx8Smg4e7EPdv2ZBN+etPFAfEqnYLtpZZ07eP5lx42MiwgZiOOsN5PHzcH7xf83Bdl8VhIvgNrykTWAV173ve7Ogoa7k/mg0dh2x/H+5LOvVEnRZ7zewoVPj9Y8v/gl1c/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727705754; c=relaxed/simple;
	bh=QTfQbYfd+f+1E1iOG8No29P4CM3G6cHppsxBRsTqsjg=;
	h=To:Subject:From:Message-Id:Date; b=m2bjqfsftsD5RckbOHr8ktYx5ch1nCttcdKQAUPHHcx9wxkZdcAIleurLTP+EXdiVsqCaqHOZtFQwF9ECtiRsHJMnFndHV5x1uzv7bUwukERKIhCjacqtoSos5d/OH3KjrOdIy11UmMPJR2ihlKHpKnle4viEHOGedbLsydR04I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zwoz9OPB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zwoz9OPB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE1EC4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727705753;
	bh=QTfQbYfd+f+1E1iOG8No29P4CM3G6cHppsxBRsTqsjg=;
	h=To:Subject:From:Date:From;
	b=Zwoz9OPBoSIju9TthyNJa8C5ELLZBCuszBar3eSIluu80cP3QYVip2KKdo21MukaS
	 X8/PCUBeuq2Etmwdw0PRr3aM1zEb+kNcK2j6iRyNOcPiEnlICPsLs3U7NOgM3cmfca
	 Ag8y65VDrjwhzG2Dphltt005O9gcWmD1ptZZFgotO4BdROoPTt6+crRnIDamQsIzYS
	 5ZJBeku2VEL8Jsmo5y8Nm7lPrLXUvrnYlIDkEPPJXL+1v5GtFJtewkwWKXtOvxtN2v
	 1lTM1Ng6ZOLcHxQt8iOVqsbj8n8xVPCr9u0Xx/N4jEy37rCYavJ2TmqnZCKjEXjoRd
	 rwmpXFnw+Vqug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B68DCE8349
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172770575362.5509.10471545362546780085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a015ed8e8b6aba13c7e84e0756cd4d0e4ca890a64ca66bd429cb744ad991dcd
Date: Mon, 30 Sep 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727705753
