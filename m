Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4242BB0D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721408754; cv=none; b=KyT6p/UXzJP8bkkKIrnEEtNioIXDaLwGMBL+xlIgfUV9Rnk84Y8tyWtgsOs0uxETLk7y14T2TCqX3E5acnzSN7nGaSWaWTDiFolHF9TJ+J4Z3LGC/FLlGN9fQgawS/HqEGYca3z6xoFZzL7CFyHM8pdGKnWlHQRYBSYlZJ2B3G0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721408754; c=relaxed/simple;
	bh=GD6BAHdQD8w2mZ6987/ATDQYZkv1kIDtXaUH/XolJxI=;
	h=To:Subject:From:Message-Id:Date; b=Gj8shyCnAXhEFXFk+qAJnIUQ2ftUchhm62Cx2mvAfNMTIK183u8qn2GOoQSqf2acN7amY4ULNJH4cOjNL+AEfMoTQxvoI87e/zSW3y0wFqfV7BkSQdGSBbPjEyIDsF6ORG5xjrPNd5ol8DiMsNlStat2Be8Q/LajGt0dSc/zOa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fnF+40L1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fnF+40L1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F59C32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721408753;
	bh=GD6BAHdQD8w2mZ6987/ATDQYZkv1kIDtXaUH/XolJxI=;
	h=To:Subject:From:Date:From;
	b=fnF+40L1YW77BEWzYvteE3199LBx2kpYfXE/F02aqyD5gwpmOjrvQJh4u5SY2FjOv
	 ekvsdpuQAzgKO1ddO2IEaMoGjvm4boHgn72yZ+S1txqShEFRmVSOTI4wvz2fPHtyCa
	 /pzYawlbR/oeCTVHBJ+zEj8mKKYwABC2fAz82BMfvt1Tt/f9VqpHcnecl0TYSMtYJ/
	 Dp8jhGosD3hCD3PnN/OVC0/s3ylRIOoziKOX848Rlg6hzpvxn+ZI0k/VhWed/iHFnA
	 DRdrsJaiU7K/37FT+MIhBtiE6024u2DvjSQ7+GqdptC/+nDBjcvvop6SNvHMA7jpcr
	 3UHzKd02euTjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918F1C3DA59
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172140875358.2545.10477829657707560778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3b5c8c6f4dd15c6c752704c6a4345fc041463a82f66fb3ce4bb8a1c724d2db4
Date: Fri, 19 Jul 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721408753
