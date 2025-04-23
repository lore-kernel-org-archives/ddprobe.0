Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7C926B941
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745442594; cv=none; b=gY2/H2aVC/Y4P75iSoMlTe4ZIG04eL3cRVpDF4kyRCSW6PeXc0jGLIw9m739pKUC8ECkBzRJxbnYDn9dP9ujr0ufC7CdMqrz8QHO1QczaCL8s/+eUl3xAGVKeKfXCY/U7/4V0YwASWSOxXdCL2s3ih2ejC0ALklT2xvoElqtCm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745442594; c=relaxed/simple;
	bh=y1Zt0px+Dvj3/RgZ1qgJ79qv3RdGkdwZIp6yMbCOArY=;
	h=To:Subject:From:Message-Id:Date; b=NTCXD9U17hpcj1HrgN51chmUv87qwqbUnMRq292JP0juDK/lvhupXpnc74ngnHlR6m160Uf5N2hdGO2TBBsncItpjR/F3iYz+yR+OHZFRajOEqukHDcbyNuqduRUDiQsWC951PSoAZwNsQ/Q2CrcBhdIpolbDlvlCsa4oYMvXA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ItptXyYd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ItptXyYd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AD2C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745442593;
	bh=y1Zt0px+Dvj3/RgZ1qgJ79qv3RdGkdwZIp6yMbCOArY=;
	h=To:Subject:From:Date:From;
	b=ItptXyYdeW7MzKwPyTc/aM3K0RAhvW9UEcbdsp5OwYj862cDHGdLVbIGTt+dqwIMn
	 yl5aCV85dzn8fXe497MNNwS6BO4xasEzLzgadZeoXI4dkDKGTSvDYwou0kjp9QUIzy
	 bOT3jZNUBoqM99WIt6IFonfOzqE5/Vig4E89FIxQiItLTsO4CR1UPIK6ddyfksYAmn
	 KOG2tRJ16DDW2UjoF01sHmRSdu9WQnE12QXl7drkE3oEDyfO8HrfNkxjkixc1jP3xv
	 0zrwlVbRtDlKQu4CWYP/KAaamwRaw1GOIl+XOtk76j7eCAUIMbZebmlen4Xki+ULyL
	 BHf693wNTcVUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED1AC369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174544259357.4616.7861800491672745973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ae85e69e71494fafde3bc1e9ce289dc8ede0c54541aa10bd10cd0a57d355cd2
Date: Wed, 23 Apr 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745442593
