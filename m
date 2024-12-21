Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6D021DC054
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734752754; cv=none; b=k2gLrD0cIRs1Zu38PDZy2PW+O3LX6K69o/L8awOCyRGd/ybmE76bTYAC3i8MylZScnqxZGTwTbuJ9po8R9ykraj8D1j6p5jwI9vfctRjrl7PexDY4H6Ti3w4h8XAfQ4cBM9rOdysjytkG+59SOzpqdj5xYvr2EfbJfiZQksLiGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734752754; c=relaxed/simple;
	bh=U1r2c2UQ3te7Z8R5xW+zrZuGwcj4QnR7lifdc3FjX1E=;
	h=To:Subject:From:Message-Id:Date; b=hMDDU9om0mUJhxoBU/LX1ulV0bClrcTMDFd8tjKyFCF9Ifmoz8ZvQOIgGAcdHva15dpCeOcETXqzO+pfeBuAlq4EK11m5L03beWcTJCmyO0gngScpdzx7u7ubMyolLlGhVidYdqsZP5iWJpN9J0moJbgntDflprYUsbsFCmfDMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ljVqnOfx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ljVqnOfx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB76C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734752753;
	bh=U1r2c2UQ3te7Z8R5xW+zrZuGwcj4QnR7lifdc3FjX1E=;
	h=To:Subject:From:Date:From;
	b=ljVqnOfxr+TgqDDbE6y3xtPhaS+zGhSe/NTmsKjhSL+Js9nMNET7KFXSg3FutiuzO
	 Re39D+VBuaASjlSWU7lnOYRfcf8WJoczxEaVFfZVez36MB9Kjw/5dvbPSFtneCZmng
	 79/EobLEa4njvfk2h2wZjnBt3lxQukmeycq4g1G8wIb3sisUwmAy/t0xDU/Tbt0APx
	 3f0GFu5+fiKSmQTUr/T7uCQeQiUttU6E9JLiANQCcMvb/LmHHZwPWLK1o7woczSb1i
	 hpDBwGK2P+cDAvkIvxJAynK7cZhKjRlxsCgXIjucpHOT7mX97s9iLsAwhceT7WBFW2
	 T7CHP/2nEK+oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BAE4E77184
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173475275361.11761.8623031638446162588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5ed42938a9cd596dfaa0549b3fb6b7125251359d4a565569c6ef72db3bed5c9
Date: Sat, 21 Dec 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734752753
