Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FCC818EB0
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763188794; cv=none; b=MY1AcpMb9+QOrpNPhbce7DdsVNsfCyji8cp21jp2juOu6U/qr4jxeM0fljDZ4S5HGrhi4CNCKwnu/6d/hF/GVL5GFGC8j4LUd9rsz4Wb0la4Ks1+b427CfmaZloNq1z32i3/riV/xu4YZqAJ7dVkI3VxX7Qu5NXEnQXgnzQRqE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763188794; c=relaxed/simple;
	bh=c+5vgwqBGmXUl7aIL4Fi5zRyAiGZpqeF41P8hJXs20Y=;
	h=To:Subject:From:Message-Id:Date; b=bhYJ78lFiPtuyv6qeE+/R+cjwS0MRa1TRgSMNjSMK2pUpIkqjljyMCsHpyqcK/WgYv5z5OjMh+14C/6FIl85VCVvH7RToyZSG4A4nWmy4bKkSha2JUfAFANSNjliOyczMLqjjQ/32uIWbCyrD7pwTTlDew2f1nLuNjY2VvWEeKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rYbAjD3/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rYbAjD3/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4308C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763188793;
	bh=c+5vgwqBGmXUl7aIL4Fi5zRyAiGZpqeF41P8hJXs20Y=;
	h=To:Subject:From:Date:From;
	b=rYbAjD3/m8wCPwi2zpN7YzOEOdDVHMxpYOoDFxVTCMD3RJ760eMDpqnEWK0ISIcZ5
	 S2uhW3SXkj6Mlf20Yki97eASLuNXziTqTrUlsAHGDLa8CA29dsRoJaB2QzBlsxdi0z
	 CxmLmvSA+e9N+s9FgKvTtLoTgLIuQ2meWWh063orr+RsyCG8sz9+xGT7SFj2sTSZY3
	 eIk2BQqY5cYAuj1kzgXNJtYN8WZ+YCNtKpyjpM8IyOXn7cMTVDv4mkJ7qK45wB5aLQ
	 qOLscUEasH8Tb/k9UkHxcLUOiwY1zxcLfp9J27xA1oOymGXX1XlGOhh1PGCOhGiOs9
	 uv41k2SuKRp/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4749CEB2C3
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176318879363.29087.16491926753931360125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70e2bd67d107eed4eb5c3813e6fae674f9da6620dbcd6d5cd693500b83e31ce5
Date: Sat, 15 Nov 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763188793
