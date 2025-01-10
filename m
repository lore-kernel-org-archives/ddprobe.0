Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD411E507
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736491554; cv=none; b=KSiQ+DYoEnf2hV7bueNmQevyUBfpCOrsYtWGFXSndwLpR+BSXcS3iGQYKdi0t+jnibURrQyJY1OfnSr6/50fbJPdmvsNWPedchZ0sytqDiCxJlYHUWU0dKgnCJlhXoL46r9XR392nCvX1mlHd9ehCwyvFNRbv151LTiOXWWnBE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736491554; c=relaxed/simple;
	bh=+FX22cpLs7qbB5biTFiJApOWFfybEKUAtq3B0I0Pv+E=;
	h=To:Subject:From:Message-Id:Date; b=SPn6fTd3RylWGq4bgXe2NdDKO2hQkc+mrZU9JOYN7aqohiR3aIQm4HxyT6sjn6hgEkBkGbfYBNczHpBA9QeVSTcVsgG3A7KyLR7P2H/CWbGfBmDoePT4ku7K/exaCqdh9uJXnJenUs1jt21g+Op+JyDchcjTWfu/HxOQGwvGqpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y8J7/fkt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y8J7/fkt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5017C4CEDF
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736491553;
	bh=+FX22cpLs7qbB5biTFiJApOWFfybEKUAtq3B0I0Pv+E=;
	h=To:Subject:From:Date:From;
	b=Y8J7/fktDaA9Pu4u+FEdEn2eEIs6OT34GkcXoa7SFxNEZoXEzErmr2gFu1vfgA0yw
	 YKoPw2xPHWsBgrBxd2hd4eudSzEGoU/f+B7/FDHJWi+NezjMo19st4D008M4CuhH+s
	 fmBcuy+y8dANlUcLZHf4MO7nfOd+n/CsAcu2I4bOsOajFR/J+6UtvWSXpIPCUmV8Rg
	 rGkT8n8rVEWuiQxiN5N5kSzM6diGh/Wz+qjW/awm2mbinQKxLui0sQj5FK8xMLr3RK
	 ioQkbmGnYu+PfCi8eROa8QIUXMg58YeZtNfwpFQTCDotTeDmcosykEa0f5Z9vA7YdL
	 n3E06QK7S3ZpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EEBE7719C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173649155359.15872.12300940262781712191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68c5730b21aa254267c52d835a3d606073e824259b1dae6d8b13624edc86b7b6
Date: Fri, 10 Jan 2025 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736491553
