Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F4D521C19D
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760263194; cv=none; b=OJXZwOHoL3DI5IPf65y/ciNYhTaCHJ7JM6+/wABxwDWtEcC5PqisaSjzP++dpvYXhyjihJTTutCieVLF1x+VVjdirDWelEHpkaiS3G4Pg+Xx1uCoy6NcuRvFho9wCK9E3WATYU1KG6yRTy6cv+C+HIa86rCqsVdAzuN1U5onXdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760263194; c=relaxed/simple;
	bh=a+LSxhQbWDIKtzfmE1TPfyMrHyyxalvnNT1ff+P5YQo=;
	h=To:Subject:From:Message-Id:Date; b=FF6eNJG0TkVML7+SYyUliUNUQsNYJE5Mif06lTHoUDu5uGirOzl8CP6nTzXswH1ENohsemb22etQI00ROnmoYKFAvQeufd1KhsPa7ot+sIcJdMd3ZgwTZSGehs0u8wp2xDz4q1aMwsY9sUS5uII6zoxgM1bG3VS9x4QPRmB68vM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H7Z2K6m/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H7Z2K6m/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83DEC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760263193;
	bh=a+LSxhQbWDIKtzfmE1TPfyMrHyyxalvnNT1ff+P5YQo=;
	h=To:Subject:From:Date:From;
	b=H7Z2K6m/7LjwEFOQ5UIEh0mVTEF7+qUc7wD8p2CqK/yoLxstE13q5E49L7dSBEisk
	 VkmT9wEagYUEBV6PEvdb3yOe0SN4lV7BsF+HelvnRFbS6LJ9LoDUIhQNXI3kbtI1v5
	 iE6zhqQXQXOxWlbhIJBe1vkIW4dxpKNMNwuHOEqb9k2PZRwz4/v6+gAzW1yPW7mjUM
	 y6hmcavNMMOQqBq17WEEBTP21XGqVKzIE7beW2SMPkyzBu8lyry8lG/LI2XI29aT85
	 q5+NdhHihIxlSPsDAuoadcWHg5DjcaBQhQG20m49JUeQqLRcuKNS3hGnL170Nz1AQv
	 7tT2lBML4fVaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94723CCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176026319357.27229.7682559354002748780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 650f492b686d654ba8648440f068fd1a9cf8f7ebf8d9de2cff27e279a4874701
Date: Sun, 12 Oct 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760263193
