Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3004635FF78
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 18:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770141834; cv=none; b=GG1UUjxZ18aVWknSA1597waS/bs5ZyET8d0BEIj4jB1OAb2PqOOW8+Saaa/84xHKMWpazbn5RbbEAcRJbTD8+E1rgz4zPJjqzmuMCPZKg0f1QLzGPdXQx7eh9gGIxInB2sfZv/HqFk8qTtHcQJp+9GSPRGzFOOnOUVkAKH39pZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770141834; c=relaxed/simple;
	bh=1jYBi7hurIIYa5kTgNr8Wta0FkJMQdXQO2tRDDNx8dI=;
	h=To:Subject:From:Message-Id:Date; b=Rex1jyWdW5CKDjuf4Pyswa+XQcM68NdPndm+l5e6+i8kJITjCDeZNbMI3Xv47tDFujyxpPwymuS0czl0koNtqiS785Jb2mKjRgdCDvnOfsdIPTiNv7Kw8j8v33hC4izAuMF8atvKjcxRS/dBmCXD3NT4CRetK3a+hhNQBA/UBkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dEnUS785; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dEnUS785"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1341C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770141833;
	bh=1jYBi7hurIIYa5kTgNr8Wta0FkJMQdXQO2tRDDNx8dI=;
	h=To:Subject:From:Date:From;
	b=dEnUS785uUD89W4nz16n/iDLdrpspz3tATeY0pngXAJQa5ikuoHgAwhNOfr4our6y
	 a501GUmy2vaJKdhhJ57YsE2QYDfejBSylAmDxOet9WOTzyzRzoxVmg0vsDWFzLs8C7
	 9t7qqY15Sidvdn7U2JQBeDtMQL3KyuPoNbYNhpBmXkMpJINbClyfyS+kRBqDj4WgNy
	 3CtyDTfi/Vy6njgzjJoqq66/DoQZs0tnIANCVDE/5Av7rmsFeBGSr23MxeF9Tt5Vud
	 14IKfxIxiTpBHaJ1NTbjG5AHYPm1shDzGjZRVUIfUv+Jq/xeKHrS+56NVvDyImIvUp
	 ld8HhveFeY4cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F156E87852
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177014183363.31809.2255880973254768971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34693523de0babf12ec897b12afef12699e128c14efc3d4662a03d8e66c33617
Date: Tue, 03 Feb 2026 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770141833
