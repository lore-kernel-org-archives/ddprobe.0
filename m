Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342E827707
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762120794; cv=none; b=sM7JWzSPgOVcnw6vFF8pb5ZFo+zm1Figkd7aaFocKcNsfsB2vAUZmyb7P2B+HQKtzIhtB9oD1tv3Z/9gkoOHfmLJHLr5tatTdsFmyVT8k9ehUadcP+f4fpC8bCXzP3qTp/tHnojk/HqRlfSwahLZN4+5+fQpyJgjeNniQJPaoWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762120794; c=relaxed/simple;
	bh=q1CLPrbIhyJo/a4pMdjrsE6koGDZEQkqS7jEvgBDLNs=;
	h=To:Subject:From:Message-Id:Date; b=SOyCvKjEh8Nzw3hh2xQx29uFVBNFZ3R45kfJIr/WgUmTo5vZa2LQ7Hma1ZO99Y5A+7mQy/aEvz6xRVlC4bhYJ54nykR94VdESJUw/Amj/Lb1UGiyueERADbOemJ7ho7CR2YTKoFuq6vB1ducSAeOVtQVt3C0jyLlRc52ebXmHjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KaKZcSvi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KaKZcSvi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B22C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762120793;
	bh=q1CLPrbIhyJo/a4pMdjrsE6koGDZEQkqS7jEvgBDLNs=;
	h=To:Subject:From:Date:From;
	b=KaKZcSvipwHCzH0NTfwpNEC4SB0GbUrejVB5Lc/btDZ0rF0tqSKPITixvh7E2+K01
	 J7jZFhM983O52mXNq5WI2lMnnQ9+Vp9iT5t/u+al18l7EKWfQ/+dGiuVWbx8F+oa1p
	 RoR3FSs9LoZTj1O7aVLVVUu8HeO44xKmfKOLcGLjbTgL5AJVKcn/xNdXX7i3o8SpQq
	 rkzbz/KGsyKpX0K+2hRctFbBg37AqpJkBX0oA35VT2lZ2F7SXokRDSuH1Ls8z0jG8v
	 wmo28lsXt5Lu+1amU6tO5ASIstmFxgrtTRGnOR7o21V+aFMzz0AGxM5XR8wbPD9NTP
	 FMfcbmMjVWBMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9493ACCFA00
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176212079358.8250.12821437770370083467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8be8ea064b8148aa4e9fc3e20b5c03197f0bd717490b1142ca34152420de69df
Date: Sun, 02 Nov 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762120793
