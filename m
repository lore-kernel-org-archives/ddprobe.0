Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5545C1CE084
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 21:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719954323; cv=none; b=RpoP/5yD3lb/fDJiJxxbXJxO1nYojlqlAG5gKj53XkWypvDYg4uyc3bn+C+xllAx2DWZ68DwZN4yQPfXtlqWt1Kj9cwN8TGXcbo3MBl2fCVDLrTCHLdGLjvTlN8nyZgtsoXAnuu7oaz3xtSCL9m/3wemw5r2SkhtLz2yBdMAMvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719954323; c=relaxed/simple;
	bh=vRKRoEX/gJ48hlQMEyXpPVIAfbJbhF4JLhQgAmW+ZdQ=;
	h=To:Subject:From:Message-Id:Date; b=bdBl80eaMEJ0l81dA2XQVxzILs61kAfvT/GSczfQaYw3UQd57yiI0kx5FuVuxI9sNJo6DkqVb5JZ7ZupmpCpXTLeMeGhtAb62axVJaYULs/k2y89rRiP5C62vHcn2RS5EKK6iUE6rQ4BKGV8UJDhnTqlKbEHCtCyyPOLVRUs7D4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SbShPcou; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SbShPcou"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3453C32781
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 21:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719954322;
	bh=vRKRoEX/gJ48hlQMEyXpPVIAfbJbhF4JLhQgAmW+ZdQ=;
	h=To:Subject:From:Date:From;
	b=SbShPcous/sc6noEgMlx05podeEo84DNsxBT/lJ3KcG0Al1b1VmHyzfh0mgQPbvYC
	 AK9TTvZhu67SbNevQBTkkEPEum5WD0460Lk1omsWBTl1mNQCMAWMF11R5nj42xVRos
	 zV/vV/mjQ5Hv8syAK+kB2kJFQ3co0W4WZzWVG7yYStWeXiy8tfy0i+tJzFb0eoT/5g
	 /HqnDAvIJCln1VRTYkGLwe1TLRW2HWaTWeR90xiv8rA1IMJFnBbAlmaYB5d+SIn0ek
	 r7pcFcds9VnGXkGnVegyv1ZwjkbwYxP3O+OhLos083lMrQEJH6mQyBs4D7G9SkAXaZ
	 lwsfm5x4IwfXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1386C31D97
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 21:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171995432284.17506.4027754357088602416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 902a2ec64bec1fad6135471d06712bc4d8f6b5c1118ab3640f7900a0c58450c0
Date: Tue, 02 Jul 2024 21:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719954322
