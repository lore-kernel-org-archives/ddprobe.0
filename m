Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D148239594
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 19:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739822334; cv=none; b=glKwZQEwM22P5pinmwJAwcrDaD4KQuXZ02vrxV+RDsJ3a9SKUd0iCZETD4f0nz81L1NYHN4MlDfQCfpoFuVyjHzxUqrUdxzioHE1nz8u4/O0dAxfhCY143844x9e876JcG3iOL99GVT75BkPjMj1AO1NcvejlTjewgB8V8TCDRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739822334; c=relaxed/simple;
	bh=+dBEn+ntaIO4Jz+7kE5G+DWX0sYhxvNI4K50euTAiUw=;
	h=To:Subject:From:Message-Id:Date; b=dUkAXTJ8JwJZ7i9Sr4lM2H1fWNXY1lMhYuK4npmxaMdwTh3mBlOVg7tQvgoIFKs9WHJgvhSnjl8LZ1sODBiJDGWDVIOOLbFOAQcRPgQEZXb6nLPBb3Nh6ENRmcBUxEkOk/fJIXTqD1jeAiw/38D9goyXPYR6yZDwEC5kWjODTSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m5cDDHeZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m5cDDHeZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A6EC4CEEC
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 19:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739822333;
	bh=+dBEn+ntaIO4Jz+7kE5G+DWX0sYhxvNI4K50euTAiUw=;
	h=To:Subject:From:Date:From;
	b=m5cDDHeZsmLnQZByFp2dYrr3Vgm6lLCp0xDu4LU/642/GDLhKhC5+VsrgCHTGoJr2
	 3OwcZmjQDHjc7ZcJ1/13/NGefQXn0jDIBwihdZ+4djRB58RJLJj+/apWncJ7lsMO67
	 d+a6vQ8q+lbHVE8M3X++/pZkhIBtW4aXIDRUcpJTATpMIcJGSGyr616gqbWnWTJ9vs
	 8u+YqBh3uJLMUWdjCbpGB9dgYiCkRvx08Ie+ef9qLQIrM8U5YRogrSFBzIgsAnZHB3
	 ZmZSszGxDvah/gOWIzHMKMzCLdfTht+Z8SRSXHBb2P1zM2djQX7EYK27GQYh+ORad/
	 cE35HHHpVr3Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952E2C021AA
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 19:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173982233360.30530.14206827494960488406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e7723248253493cdead7bacabd05bb6fb5f79585d07a705d853b1dff1745a5e
Date: Mon, 17 Feb 2025 19:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739822333
