Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371912A8D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723740954; cv=none; b=QcVVYysvEZyKqUFDU/mHLg6G5ycF7dbRXv9Jz9TRzGb5iBt/HxzZ68wvdSNQq2X5u5EprWP2V6yZah4dROUNyiG03m9DdwGDVxKPGz1v1781b/MYmcdes0pWoAOwi5cb1ysKyTep6uOGaJbH4xJbbSl1Kqr4MkzOOtqromwi7GQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723740954; c=relaxed/simple;
	bh=kYjeLSHOLq7m9dUTD71nLrA6t8pq6Qd4fkHbfSuZvo8=;
	h=To:Subject:From:Message-Id:Date; b=lD2l4eroSuTV5/1GqUSBX9FsPc56HMcjUt6ThxiS/Lyx8pN6btY7LziiEuxgeBQ4QFHJcrpHWIGvwERZjYtMe/h5PwA2C1kdL7ezjpPcuhVOa+9yR74qrkbj/uoW0r5EyqnWBdITPJF61O0N2usovZqXc4rXgfBHlXB+zwVjf3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rDr19Fcy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rDr19Fcy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE190C32786
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723740953;
	bh=kYjeLSHOLq7m9dUTD71nLrA6t8pq6Qd4fkHbfSuZvo8=;
	h=To:Subject:From:Date:From;
	b=rDr19Fcyl5wlhQ3bqXYe3Q1o5Kf9w867/WtU2RnbHwwl0BJFw/60Pe217wKXiYo54
	 wfGJ7RdB5J6bUpafQ/ty78jUtUyCwmxW9CYVsdOs98ZnZlGjYC6B3v+r/IZhUw5Tnr
	 R3QM8U+XKeYsIyp4Hwv/Rkrb00eRZpiwW/6ng9LUieH0sPFPDkK6NDHsEhxRIRVpxs
	 lDlF2Od7+LYkL2xejVNoiFbXcZxRLWtJlWnTgEpFC6GDUVqDuthKnb335kWtFZcrCO
	 afNrcYSxW74lPRYdiqDBQzYQy8ziZyVRWHKxOnh9qtKBxYwnZ2d6n0Bk5+N0Ax+PxF
	 XH2CL3ro778ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D15DC52D7C
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172374095362.15338.14770907573238786916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c48ec6f7d0ca41e7786c4ce22e7a51bcbfc681baf069c752b2cbcf110c40158b
Date: Thu, 15 Aug 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723740953
