Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5633D189F39
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744442394; cv=none; b=LgRnOL7krOYRxB+5WrR5kmlJYWPxJeAFEFdViK07IbMP4cuKiBEPs79p+klmzq5cLO0Pbm9yeHB0EtMD20soDI1ZLYVx1eY2qUTN92DGwLJAbyyB5zN+lUCYSMF1aK39XieO0vOjhsS2Ss32fEcLXVv9jdT53bzsbAxMtJLhbBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744442394; c=relaxed/simple;
	bh=N6EThJWxuIE+F3iq5Qj+LQ4V8jMpcTNv7mUjcPNmg0g=;
	h=To:Subject:From:Message-Id:Date; b=Qnfh73dypzU+v/zypanEgxpHDsPLeI1LXXKfJt+NpcNnO2BuEmE77XFTZghjivq6rpSvmwq5M/cj/zPYbpZwe+qYsHTybBswYQ40WsrUOEaxAuUlAH4DsNl2vsVX+5xr+j4ZULOL+PDahfv6fhi+cM5OZ8g5wH1opPCklO0STd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aug3O3oF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aug3O3oF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF1A5C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744442393;
	bh=N6EThJWxuIE+F3iq5Qj+LQ4V8jMpcTNv7mUjcPNmg0g=;
	h=To:Subject:From:Date:From;
	b=Aug3O3oFLqTOwv8Ihc/cPweJdPkg/hh1W+oW/UaqFyB8TSA4PcRzxwHjDFkH09A2q
	 ze/VpXIU8uInqJR8oq12Mr+VH09i/TbyVb7btK1JrQTmNDa8PT7yzhKsYzDscG8LWV
	 ON7uDXxIXknC5bwY+2zp+FtScAnDfcBpS0fdOpG/qwVD0nh/WIBC5P3wNAE6t8g7ea
	 KvfwDy4WGE2JgtRyUjJr72GzhXeJrXR0rsx5fs1AaYsbvceHD4SuX+PUa+VaFBk8Ry
	 DueQCw4RBXG3Xo8FXHTZ/kklcF1mfGPHGzJJcMr8nwznHhHATy+xzz/KDE5N4x4xbH
	 joDcPHZ+HDD5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99420C369A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174444239359.11696.3742091087391876416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce4ebc26bb26ed9b2ba51f9e320bc6872bffc6c32211365505081a7b1c41f35f
Date: Sat, 12 Apr 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744442393
