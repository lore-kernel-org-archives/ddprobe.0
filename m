Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FEC214A09F
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 21:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716327803; cv=none; b=or4ZbAok8pZHHcWK5nezatVT8pMqKSqIa6V342LpKA/gU2ZdWHeukT1yep5BrHZjLl+QL7FDM2B1OrAaXvzMF5AqWvSij7xwADV081h8KHcoUYgov2Iz3oD5wiAkSRvaPfaxu3YVKY54YuD4HH7EygxBvPKoMdXvQEHc+S/hDGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716327803; c=relaxed/simple;
	bh=VYcYWX9RthdABOsOCW7MRA8791V21jGN2UvhAzgUjsw=;
	h=To:Subject:From:Message-Id:Date; b=ghPx07R+o6IXUYkb4VoPZOynZd66utHfmtlhCkI189hBxBBpyX+0WuWmG7CFsbYVupNEpKHJ26NBirsXIKjg+IIVqsJqGjpMu718jbYpvmliFwfsgyxIIPxu1yU6v5nMOZRhlihKrLnUOYovogixFsmXBAKe8lnyjsJUX0nyFsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DbHJWM5R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DbHJWM5R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC94BC4AF0A
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 21:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716327803;
	bh=VYcYWX9RthdABOsOCW7MRA8791V21jGN2UvhAzgUjsw=;
	h=To:Subject:From:Date:From;
	b=DbHJWM5RmBYL5/A/GG3dDUlontVrZ0AGdbkQOYA7br5EsGjvz4BNfJ5Q3jDPX5WN4
	 n0vz4oVjY7iab5LJGDh2Q/k4Fr5lSIRlDuaPRQwyhG9MyNv13Nc4m/5xE0kxpph6Pj
	 GeEa08liYrhbvKRLh5fP608KYipqwPHtYZbjajqO3gDEp6AJ3qPZPNWkAjvAVsnu2n
	 2TJuG+7zRrW2T4bNRAT4499qIp0gkrqd/mgl0jCEltK+aM90nMpGw4hoBE3LX05HrP
	 +Yumkeghx2/uy1QiVj36taM2K9i3ZqTDWL/HsU74LtOesSF1xAQBuIUedVxN7oerBp
	 +ODXI1Ln4iCtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7DFCC25B7A
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 21:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171632780283.29173.9588480644253682256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3d9c6f1008e1edabb74d0247ac4a121b343299edd45ed611a5f4a3753a0a690
Date: Tue, 21 May 2024 21:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716327802
