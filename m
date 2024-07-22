Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 524434437
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721616954; cv=none; b=piZpglCCFE7lBHJnjTlvGJNY+/MUl7c83TE2j3y/0LDZBMWbW/RxsztdT3WoXIQIhKNLf0WPm6fl/f2dsK5nfpsyZ0EmMwsebIpeD50pzQLOWkAiD/c8AHpYzm4yqggeZt3k1OD8qtZ8qy1Zd0xsTjA0Bfqc8Cm7QQrcXZYCMns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721616954; c=relaxed/simple;
	bh=u8VLBxx5zhJWQ+9J2LW+wl3iUjDakCT39quc0+yuOi4=;
	h=To:Subject:From:Message-Id:Date; b=dj7M2B0yzw6+i38Kphe93Fcd3Sy3R02r5Qy1ko7HMHJCtXItji+UQPqagnjN5XnD4LTQdEF0BtfWTbgIOeuigYcOeV00r/l0S4qZ1nxuC8jQ/9Bit0WxhCo5pKQ9zlq93G1v+kiviTgp1coqYLUK7u1UVeOZuwhMa+npAHu86y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=reDoARzB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="reDoARzB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B86CFC116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721616953;
	bh=u8VLBxx5zhJWQ+9J2LW+wl3iUjDakCT39quc0+yuOi4=;
	h=To:Subject:From:Date:From;
	b=reDoARzB8QjZpdmYXjZIPnZZdjXxE4clZ9Qw/kK/7qCyQnUJe52s0mOVTEyM3UUEF
	 xyIPLtORfDiFr18vcgMFJVA3SEW2EObaaRzp/R1+HxnAAOrd9AyvOxdHa/gOsC7Fjm
	 Im9b9/pH1oXmuu6RInk5CgzOm8pZ+sLxZlDDiYv8fXZHUWtVAGc1VSD/ot7gxIgpJD
	 LPesVvENwskn9QlsUililFbk5FXOcWclFuB/xO3QEpS9uB51LM9pTuSTaxL03wQYWg
	 CcgGvugHsBegSBrO3YNuR2Ut/NGP829cp7Mn3FyXpP3b/hBRk9H0zfY8c2eewVxoMz
	 14u33Wz5MDWAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D412C3DA61
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172161695362.12516.16018150923852461068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2d42c9e25a4f8c9c26d00d3b3ad8d9e6fde662bd80727fc2d1a61fa5e9fb224
Date: Mon, 22 Jul 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721616953
