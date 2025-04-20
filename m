Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 550DF26AD9
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745180994; cv=none; b=pNPoGnNIv7vZoEydMFBP0ei1COcZSv31b0INn45FLj0JZ/WMHxrcQDo67/M+t+XEtrZ9corRJINw4sFJgtsYFlGovSP7ls4nlhlZtBC4RSWPAtTH9JHwvQaJkhyjex2HnYH3X1jL7MrB+JqDyIoQIXgtlLnyNXsxIClMAtMxkK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745180994; c=relaxed/simple;
	bh=YECMy7zK5N0NciaBcuMraTWcw6T3eyD/ipYlhvNhA4E=;
	h=To:Subject:From:Message-Id:Date; b=MxdFE5rW0JeOgjuzcUGbxEmsCprgtVX2Qpk7kboj6nuCPZ8EdxTbvmFPXBT1G5Px8aHDxLnjyzgUd45lPDxsQvaRYSZfITYERQaXO4J9++ixunm600etkcpd06a+gYV5nP5CyfZ7Wf64Kr1YeN6QqTT031CMWu0EF/NihwaqLh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I8UzXXaH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I8UzXXaH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1A2AC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745180993;
	bh=YECMy7zK5N0NciaBcuMraTWcw6T3eyD/ipYlhvNhA4E=;
	h=To:Subject:From:Date:From;
	b=I8UzXXaHxPs7fulmIDRRNdkjGMoOsxNpyt03T+53pAFP2tXmza8r/mB+jw+p2QWfQ
	 qBqvrT+cG9Uw9U2EzmbWsfeiOaQJFBVDZFgBUvYfTsgJMb74fdhb/ePDFeLy0q2Xp1
	 Wbp/kdbkVTmydgB9xF+iIem0J+OMfD2/+t+YeEhFcx4LT9Tu04vMU44MwxB2Ke0Szl
	 f8o0L+riIWgVsor2zfRQ3DHip1cXfuLAmXRc10u4SDey4OjTUZzEtvXfNR9o2ez5Uo
	 yqPhXz5i9fe8WuV2wtLOA6IB1Mf44EZJp0xy2ckbSAqNP803518s19R8N8k3tNtOoc
	 a2qlrDKqntyTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2DC2C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174518099363.4198.5785689405572988869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20e5a213bc622582a55c3ddc57a712ba3e7ef8a266d223e0c3241a295136f5d2
Date: Sun, 20 Apr 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745180993
