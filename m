Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADE9B2FFF9D
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 23:23:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769210635; cv=none; b=JRk6WMs8ueVJyNKvaK9C+/A7W/ddpNUc3NNgaOFgstnv51djn2tmVRx1WEkWVtcOggQ6cezFSSyO12F4KUf/JE4Cr2ueysoCsVSANMpwRZ6F4cZalbhIOTwa90JcOcz/QzkvwzCMoniVD8g5vrE5taEF+jUddWpJr79YorPcqd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769210635; c=relaxed/simple;
	bh=pgVpEbuwrOTJrwytDOgA/YbQNpc73JwVwYd4iPc29iI=;
	h=To:Subject:From:Message-Id:Date; b=f+SbWlZW+oGU6jIZOs7ynzZg8AhqVUpWjOtkTzNZY5JYiOOkSqn5Az91uBFtLwITlphLJENwgK1YPpZwLdYXHdpbAsRFvEeSBXWvxGMPCB+aZ5oQ6pZ+zW52boprOCuP74TstGJj7t89zje11eOE9q5lmT+XLNhMDdJBmCzIcLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sFlMpHJD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sFlMpHJD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DBDC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769210633;
	bh=pgVpEbuwrOTJrwytDOgA/YbQNpc73JwVwYd4iPc29iI=;
	h=To:Subject:From:Date:From;
	b=sFlMpHJDA+ZENBKl/CvQMo+fvEOwc5Ey5BNwYPnphaBwbJf9bgO+C4dtUZ7+6rGCR
	 2Rf+CLee2WcAMq9sqU+njKLQ6AhbUrcqeEd1UAz/hYe3eLCSDyoab4U52Lwq2KDtc6
	 PmUzyqI2cz+LChqqw/4y6N6KmTBhDAK11YQw1AfpiRWcgserBcsrDcEQc1LU1WGEGw
	 nvR1TYwRokJ1INMXAHz1NYL5iG5RAZo3To9SGEqiJX7g6QLglrIkNHUjXLnvNzUQDI
	 UNTgYV8pJnhYoq0ODso9lL5TpowAaIby7yvo/Eafssu4EjQWn0QIqB1pSTdYdpraxO
	 Ag+xiB+dNgVSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D38D778BF
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176921063358.15546.7001370710178640164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9469a136ff097951dd1c69e3b99f14cd8927b0f32c6df6bc410ccbd2fb59a959
Date: Fri, 23 Jan 2026 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769210633
