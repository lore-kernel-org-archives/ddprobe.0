Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67F6A1362
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 00:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717376123; cv=none; b=u2p3w2LmRN0yOVjxeqsDKZU4KVIuFEWscKSKXpBdVdTytNZ2eCb015TQaba9zYfEdCsX0bXq4wBdB6aNY45GHkuAymlz+xK4WlSLpsxKLDOICv1Tfg42N8SOdjFPv87Sc0+VZfkW+rPJth198OjE2r2Xrqlyp9buQbF53LiP/L0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717376123; c=relaxed/simple;
	bh=Kln1mOQE7WmdMqEp750qHUq9ibjy8O6675y/HNVU6jc=;
	h=To:Subject:From:Message-Id:Date; b=SJ0xTHI/hwZGysLk0iUp0Gs/HR7xwbNoYb8pT6BjuWuSyJW+OzPsPDxOrQJXiUDR5MswKGMLWUq7OOnfaBMbNzSJgL85Fy71YFE/r4gSMXel69JuqbwfxkLNc2D47STnLPj3bSzEditOWAbp9+coLRTuhpou8ts1BeSz4DlHtiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rwPuuNko; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rwPuuNko"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4AF4C32781
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 00:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717376122;
	bh=Kln1mOQE7WmdMqEp750qHUq9ibjy8O6675y/HNVU6jc=;
	h=To:Subject:From:Date:From;
	b=rwPuuNkov+a0q7qiAfWAZC96NyTy+lLlbJisloxeQ8yacg3WLYauJ9j12WluugQXA
	 mpmXIQL8MJ2N1tVdQjPWz0AQKW/+P9veKGGHPX6zgElfbDMBUKZtibZSFHJBKylD6h
	 0kAXdif21Vvo/asgnRHbnhGGZcL9UKkKfvm7MJlCGUqCR0XNk9VpU9IRpR7TG8xR4C
	 F5QsNgBNWZE8qtMRgUUJbWiBTETrewW702pwqXD2EBMtis9bFNPSpMSGhbx6EdtgrO
	 4egNW9BdhcBuhnEWoYY0wYtrmoFyy6DY5qsJZbbw3raX3vExp6hFJfbxzOxkjTTbxR
	 k7BE7hIGWzHxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDE34C25B74
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 00:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171737612275.1258.1009038795441726446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e92e259b4bb8a1f6c1d5588f235640da109c7be568f97c4ae395e3cf488524c4
Date: Mon, 03 Jun 2024 00:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717376122
