Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1341E1DE0
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751461195; cv=none; b=mcuZjro5eQFClnE2PHEpfDO5eiNGbNBMq1aZ7XxQ/0RO3/dHxg943d+9i5zqYGm2ZWeZw9Dz8qpdXiuYIQWKpQaeTnRw+zATLzjEoeI2COvkxI60RJDIiswX1IZ1Dp7tOVN161RxFcFk6KHaFYuBkexcqfuvd7xbnDwHNTwD71Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751461195; c=relaxed/simple;
	bh=kzCyo7N6v8bgHQiu3siIWtZI2w1ixOjRTSNan3Eqyvw=;
	h=To:Subject:From:Message-Id:Date; b=RNEifi5F2PvVvgmga28XtvuMJ9d+a29BRj24q+5VKKkdKxl2JO5+kIVD9Ce8NBNMMyZrQj2ZLmBsJrWP7fwVXAxfMgx3qengbMJXWJxYTGQ1y5VdyuHuzevVBEZqdub9WGp/ZpI3m7JUk+KcfLk6X74WE8CdrxFPtkGM0OZ3Xsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VwA8lFO4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VwA8lFO4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE67C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751461193;
	bh=kzCyo7N6v8bgHQiu3siIWtZI2w1ixOjRTSNan3Eqyvw=;
	h=To:Subject:From:Date:From;
	b=VwA8lFO4NWuJQyaA3NcuLmvMMzOhBOPrO2DJBJ1PvESMTVUqylblr0Uqx725VSOSu
	 OXuKW+rjdBDZEUD5Zai5CbaL8LS7sWLJqjqPi1665Z8vbLXC42CVpQae+RadBafJoy
	 1HBEN+QXCPH2abtmpM+jhDt9tafK6vZGn4mxKdfVbjTvNpbC+uxujHVkoioYLACdZf
	 LDpNbbyEtMCmXFd1Iu3ptVJ207xkfsv1swNsskZdbbRJWn3ePJGSZaAnSs/SZxK9FC
	 fgcIgwkXblfBTutM1TNLX1AoPgLGKzMxP2ZWd4PjvklOip5HlY+J1gVsA19Ty+noSG
	 6vasjsuhdVQRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E29DC83F04
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175146119357.32345.4353882741233478131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86cbd6e63636f9d4944665203ee7fc625a64c96c080731a7647b6f9c7bb19568
Date: Wed, 02 Jul 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751461193
