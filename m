Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F40273612E4
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767974034; cv=none; b=dxUEZmesWya5vZd6yN/1rW4YN5Rxo2JVTQafDtaSeimWb5qYnuiwYdeyrGbUFBkg+Jd3vwRk/6jBHtVTiWioM3aLJ0/NoFY2w1XFzYQJ2YD7POJG4F5wir+2AotqQu8zD3+UpwFA/m+XsCQ7v/iEnjbhpbcxqHwTI2vVWXPgicc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767974034; c=relaxed/simple;
	bh=+AHhOSsfyx7ukUagC1HGNWHWVk9SguJGGajptZIu1ow=;
	h=To:Subject:From:Message-Id:Date; b=DqcvAw8UDhxaGQAlt8FAbOFLopG8WdL2HMaq2es7tXlgBHy3NJux8QCz9TT0J/heckLnh0TVGq3NOSjwrr5HdjemIJW16siY1i8CDSx2F7oq6RPQlpLb5s1rYPSJBo2Wkxkp76J33wPQJbQ55XxxFFCI6NdVpsg3+PG2NX9bIsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JYJaQpS4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JYJaQpS4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D973C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767974033;
	bh=+AHhOSsfyx7ukUagC1HGNWHWVk9SguJGGajptZIu1ow=;
	h=To:Subject:From:Date:From;
	b=JYJaQpS4KTU1j62bJYT1mgFT+YLNBNFhMLgsHdkkXmgWYPoajiEdNDPkhL+wL0Bwh
	 bJ7NtxIRqPCUKujD5avlzSP6qwX3m5uBUvMHBFdINiGvUwKdXxnEY2UiTnKxKhUavQ
	 ZVKTGgNytYscLdXYs7/8wb/lDChxe38w0xMjWFU3toToHVJqdiwot5mnpVxf6SnFEg
	 koBTOF6+6oBH4Uzlsdv3v0nqgCxUGeW1oZUUZyigbNL0hHnkQy0MtW5FKSgvqI9NZK
	 5hFaH6nU/6a6nYBZqZtMq0jRA1ZTgBdxy7fqQx+MsKDMPQO24i5IUeD7IpdiBMQLyE
	 FXqKDllEJqh0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1E9D26D67
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176797403357.16166.10651893228283588361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4a583b761d6a2b915969e90d963e14b3080479ecf9e718a25f5ce39bbf37240
Date: Fri, 09 Jan 2026 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767974033
