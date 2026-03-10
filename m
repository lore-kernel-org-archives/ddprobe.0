Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01A2343E9D8
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 09:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773135894; cv=none; b=bHBh3+Y8ZMgvmqnAZFEWAbDfox4izFhzGktU5cjugYo5n0QjMumb7QElFfH6ut+AlQL2Dtaqb0MQAWD6FCEcOGopnKadxma6x799hopZw6sBXtgyi3pXW0rCodIh+6Ul2GMJOFja3nGRJkq+AqL+ODoBx4jAD/88HK3g4X2ROYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773135894; c=relaxed/simple;
	bh=IbwzxVJJR84rucaHPLpwXO8xqFXZNus7grf7rZoRK6U=;
	h=To:Subject:From:Message-Id:Date; b=HEhssYxtxEuEMkA8IjZymxs34Frwd+sYzE6pcRSDUOSIn1akczpBUL64gZLs6/7uxHzhcDyE5JVvbz8RfM6eXDhVTLpNCzTefaUkAcdtPdSdzUVIiqABU+RH64Ee15hqBUOk3PrPltXglydOgJubBYkrkBJL0EWMYsmVljqoNl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gtfkk9Hf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gtfkk9Hf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD438C2BC86
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 09:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773135893;
	bh=IbwzxVJJR84rucaHPLpwXO8xqFXZNus7grf7rZoRK6U=;
	h=To:Subject:From:Date:From;
	b=Gtfkk9HfF6ZgOwSHxAmiFdCGNQBAH9mP02vCfuiMjwd1nttpboTbXzId7cVmrkCdo
	 3j6Z/8Xl+AQ9ZiYvZPY6j+wDTvjy/HEVkH8Ba1deJYCNw0JLXcXkmPfDuUTvZI+iG3
	 bo54vuWvbxkpKBRCRX/TTCOkidXaVxcrkVPoZ4Yudeqy0RPgiGkPXF1OzEVjhDbTH8
	 iS89SpZPlgc1vrgjVIosfmUaET+7Jdh4x1UpKvFI5wX9SevjqmE1r76TZdt8A93Eyt
	 WRDFUYJt5BYHWcNMhGpj6LFes+rpIqay79N+rr9s74AXtGcAneGOpfENapN10bMFOk
	 FHKBW1VmUDeig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C721EA8550
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 09:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177313589362.13420.10890240291544612102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43130efb89527b17ccb229e38661ec9ac883e8021cf714b08681f295e0162d47
Date: Tue, 10 Mar 2026 09:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773135893
