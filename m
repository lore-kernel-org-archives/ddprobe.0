Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6277F30DD21
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 12:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771073094; cv=none; b=HZDw4dzqVmTL0iaTCRud9OPed4o8EsanduV/o5iC0A0UGT5avWt1tU955XmaBlNSLVRXw96PWhQk99nbkxBsvGAQCsL1W6buUr5esCoeY+v1DMS22/xPILhV4GUQFeTMd9EQyXxKAJNQoZrj1KUl+iqI5W/EXT5g5QOTaZQQlnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771073094; c=relaxed/simple;
	bh=umvnlKFMqNusLRxL/zhAfjLZUeJeMs5Mvbgg60+adPs=;
	h=To:Subject:From:Message-Id:Date; b=hZGRO+J2x/9J7VzyjwLupEKGqOBQ3pMNrlQ3krCAidfMUDQiJiV4pbagkJdPvMpq/1bM61W1WgMj77uFy+9lI5adSOvPwsRfj7udLUumZ1XoIXtjGwDmofUf6WUMMox+9wG4mzWedLsvEzJgchWBn0dpHuo8ym6M2QZ7WsL8G2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vej6Rie2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vej6Rie2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B61D0C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 12:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771073093;
	bh=umvnlKFMqNusLRxL/zhAfjLZUeJeMs5Mvbgg60+adPs=;
	h=To:Subject:From:Date:From;
	b=Vej6Rie2SWVdBQh3iEPY1W/mHDoLY6kaU89Opa/41L/Gs6bLA4rM+I2+EcvGH2x/u
	 3hc4EUC/xhnuOTgeGz1gjNJwQq4tx4anJL5JW40ylrvwqX/xoCcamVfnB8G3U3gcM1
	 LTYAI7UnVPZrb0pm9Gv5cSZXF/j5ItD82BWPtVpKDHpvmIUmOVgNUj5XnG/U1I6BE3
	 FTuVPOt9LwNJ9X2d6k3mn3p2zRITTqyUMRaz9SqKJYMMJGWDdaiuBi2ycGhcL4gdUK
	 n+7oFno6NLQYdrLD4yicciheaGHbyE87NXujnSUPeC/fNK3ybHKKgV+lIduCcRDx7k
	 ViyyyABvS+Qrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1955EF99FF
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 12:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177107309362.9396.6226691156817436365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ebd62520af3b7de28a5350347cebfc27d97bf7c198edbae65cd8e8e3f683ec1
Date: Sat, 14 Feb 2026 12:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771073093
