Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 151951FDA61
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752429594; cv=none; b=SGelrYtFdQVh1P3Q5t4P8DjmsM65OyZ/QFYQ8O53iqSzw6voxDU/C9BSHUDhdlicJ2/UYeTVutgacLGtM3aIIf4Ett7jRPfRlX2eHUjG5jRj7QIORcRUa9oYglbiykwfKAZ8KgcIcJNoU/CV+7pjRSfcLxOF0sQURJ5Isea6/lA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752429594; c=relaxed/simple;
	bh=pFy4fb57gt2Tk1iwH1k/o/iO/7A2tzWC4+MogyuoHac=;
	h=To:Subject:From:Message-Id:Date; b=o6UtcAxo5PuM737lc3gQ82XsTM+wLkg7/OpNS2MuU7on3EiyUpiG1pfuLu2XYlbXtti0Br0rfRTZlkqLBX+ytLf0oeLs7X2rm0qvBapVKZXKlw1e1JHPefE7NLamvSGy1SvO3ar3o+7/ojz5kRaCtv7TKjTEbJKJZazStFFOOEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gK51ClyM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gK51ClyM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31E6C4CEF4
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752429593;
	bh=pFy4fb57gt2Tk1iwH1k/o/iO/7A2tzWC4+MogyuoHac=;
	h=To:Subject:From:Date:From;
	b=gK51ClyMIUF3HqBX5P1ODBJgPTw7UgIJaJgcBUolBYUfDX+PkeWF1LpK1P+9J2bfl
	 R6z0GFi21QOB5WHXyCbHzKAC+GX2Z4AziaZiXDhkgmdbcZaiTb4ZEDfVkXnCqF9zIA
	 M6O1xeQ2lsxgVNfBhU80U/g6hMQsKoEaV8OnzV74fft65dees1J/LUcWUmLFo39jM4
	 /b219el7PBuFXo5sp/NgXqi0SH11ytMN1MiuK7ytLX9a10Lk+7w1HfoHKueVqMieNs
	 U1vel5EmS272hxAU8VkMUTrogoTIDhamPrG6jv/Rjwgsw0vf14oXJhySLwLi9lhzkc
	 nt7hD1INozJLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B9DC83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175242959357.7237.13267304555516889694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37b4135e40983942b225dfc6e9a6821fc74743ea196098b4f5a4c080160f556f
Date: Sun, 13 Jul 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752429593
