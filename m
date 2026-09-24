Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EAE83A4F59
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790247634; cv=none; b=hptPjS/J3GZdHJHavL3fH+Iiv3ek90f9NZlSHXg6RhVup6ArclS4IEbPCP+hP2PGcoYNKk3gzFEykUWYMnbTH/xMpRdPLJmCNP8uAHojBvtQ0+xKNnYKp7HYG5iV5UbR4r3rxiWDJBOKDXBbSJ4ivDSEqNxiBQZ2f2o9v5I8GSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790247634; c=relaxed/simple;
	bh=sMJsqHyHAwk0lCFruEbqvqrB0mHzrME5g+py6fAiZVU=;
	h=To:Subject:From:Message-Id:Date; b=W+AjFd8ZhVees7NPzXj+v5dw6Jb+6VaOIHQv2t0CiiC4XJ+3kJmRifyJGMNB3+7lN3mc/JdRxwr+pHmcVgyMgC3J/PNnLxlhD8N4OEgfdcRNWuFfMu04nMxkBsv9vz9i6Mrnxp8Pb2ZNrOiTFXoeXvmAABMDwd7EMqJGEgoyg1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U8JaTC/X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U8JaTC/X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D399BC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790247633;
	bh=sMJsqHyHAwk0lCFruEbqvqrB0mHzrME5g+py6fAiZVU=;
	h=To:Subject:From:Date:From;
	b=U8JaTC/XQX8vAU53bLzsJnBnJ5rUwfrKYDF5rXuxepFzW5HT04f4zIcQKaCwO76iA
	 zXOsTs5gqUIEkp7M0AKp/yHg74LYuDqckORcYjrC9Frh+9iIuwkIIH8NPTH6VO8ihY
	 fBBpO/RV7kHFbFngXB4JpyUrXtdzLHE0FSpi+d2x0ovpDvNF8r4AFy1YTsCW6heLrw
	 irscncANZJPytggcGUfSgd6w/p6qq8QsAYdLCVzKAhtsyn/7a1kKOSvIbhzacSBQQL
	 nBaZYlsUR6Z76P8qGOgvG5JuLdpvYGw/rji8DS+b6gw4TUj2+aEw7mcu/lrWOU0oGa
	 IQlKrKbo3vi0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B45C9831A
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179024763371.19666.12311392054998984969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a676a3561b471fdfe8cc48c811ec432e35c06dab190fab04182a1ac99f82194
Date: Thu, 24 Sep 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790247633
