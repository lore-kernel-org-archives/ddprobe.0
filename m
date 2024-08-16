Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 414D81AC8B8
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723816554; cv=none; b=KNdUgE8DRq1RP/VBx280ct6JKf0LCBBJuEYyMruPb0auwWXTxl7sgbWbb6nGDhABT8TKgfL/e8iyqAP/G4+gkQguFM+EnDKZYy+LdcdNnuytHj6vhVQniYPbWAXKRDubdCCEkNmwA9KbAWbW3xSxJ09AoFYmF9uLyjQpDpuypJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723816554; c=relaxed/simple;
	bh=93TYkuTsmRp+G2zfVHP0ioO8TcTDrmfDrTl7EQjWSD0=;
	h=To:Subject:From:Message-Id:Date; b=qPqHJAylNczvS19AkcfQEnVy7Jxo4hS9f5e9toXyfc43+NudQUVB3/snrvZL42J/Zhx6tEulhQk6y3HLC1RgZPkPjI8gBzErwRuMrHzzf9GP7A5leR3Z4UjfFRX+3aNUKE7TQiQJFSpfKpnsbZ+/qWViYt3u+iCEz42+Nx6WkQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tpvWFVIJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tpvWFVIJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE461C32782
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723816553;
	bh=93TYkuTsmRp+G2zfVHP0ioO8TcTDrmfDrTl7EQjWSD0=;
	h=To:Subject:From:Date:From;
	b=tpvWFVIJ6e++soB8I8g5K2XtoJLvX1eG66v43bQsFHUK/pAbFl+ULG8ysgbG/ASua
	 hsroqVyC65rQWto4w70a1AiGPuZ6kMTKFEBJkpPd7dXyhxEhDaJswuIe5HTwKo1hEJ
	 yUFccgXKB8jBowWUzxvtqOTGjGv81f4i4cw2yD15Omc/l1YZp4i+Q5uz7X/ulPsN9h
	 WLkS78udQpzhyId8QfeGdPpZI+FbUZKHmmajlOUbXug3TyGuJTIDByap7IUl7GVCAU
	 turQJSOfWqxJ3glHjLxA3bZZpxg8D06TPGMnnQsfCOEz7QfpeyoBjQkg8tUGN37RK2
	 UoNTn9fWYP+Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E103C531DC
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172381655360.12614.11476922981807960605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67b2a14c2c47b7856c5e703ec48b92aae695cdc55eaa1f5ec1d7d4f31e36b696
Date: Fri, 16 Aug 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723816553
