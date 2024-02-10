Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 028D632C9C
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 09:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707557897; cv=none; b=RL2uob+DMQW47zfyloqGiEnKcgWsS3AEYvpBYXr/IWahBcsRLTUBDO5to1Njg+CNjsLF4Q0224++NuStvG209ojN8V8APKmf3LmvonlVToyOhtGxNliAAoj2WqR7LXGuGczdh2wtRrbry5qZLyUXJ9Fe6FdbEKI/mm1gHD1V2qU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707557897; c=relaxed/simple;
	bh=ugjtfu+MQj9K4WNu47vTix9jbZY50kbtgbqkBJ/m8/s=;
	h=To:Subject:From:Message-Id:Date; b=a6En73Jl8D+qhFc5n7QKCb0HexYqbH45Dk3xSBkXoD4SByl0RzA7I9maveFHoUUfPK00bNhz6NXlTIUf4ZSVVgTz7qof/kZI14aCz6uM8XQD9285Nt5RgFVjnatcBT/bDt+5ldcUNsA5xYWiaN9FG+h2TQk86xLSo+azTjcs9MM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W/8/H5qU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W/8/H5qU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C8A3C433F1
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 09:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707557896;
	bh=ugjtfu+MQj9K4WNu47vTix9jbZY50kbtgbqkBJ/m8/s=;
	h=To:Subject:From:Date:From;
	b=W/8/H5qUT5bYtNRR2lT35rfiaHR6Z66q12cXpFSbfQDmeH1tDZN1SNkABPSO88lji
	 bhdjYk0EFQmz72C97ZFY0laQgFUTAh/zUBYojU5OGjnw8k/rWomEnqwRW2K818MAsf
	 E2XnyY8jr907+UQWTekBSU/cyThnD0k5FKHrLhLrc2at58kZaWRgSyGoEPsLDA7ATW
	 XEL+BPBncx4+Fn3j8/yPbF7UEtgpi1v4j+EdU9opagFvhGsmndBUYaAF07tMmE6AMi
	 lUXLpsH6ApSufAxaX8ydqmClXX2IUiRynqfCV7ZB8vo6W3BqQTmB2kPTQ0CARinL2s
	 E4Lltp6PZaIgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6377BC4829A
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 09:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170755789640.30175.11848230040486287655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a07981604675fdaa55adad9b094e704a255d544a41ba7ab95b937d3b42d93b3
Date: Sat, 10 Feb 2024 09:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707557896
