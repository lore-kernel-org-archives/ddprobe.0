Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F600320A14
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 17:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769792634; cv=none; b=sJmQelybCK0BrvYfYERH7L5Jj3GQ15pKGVUtkW0/fTRTkl5Chp6EejpbgjJZoDo6BhcViM3A6BrYvv3Wjc9UUQdPlfCwukj4MmuoPzU0jK449gZNdxguPMfAm5peRNzkfJD6Ww05nMS9yFluBaA687HzgBrY0+IiXZytAyFlevA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769792634; c=relaxed/simple;
	bh=7sh06ApKbJNzBy7C85iwhQ9FBnnpQ5fHgITAHtLx0Fs=;
	h=To:Subject:From:Message-Id:Date; b=T3zB6sRmt/6Td3wPrNYpshAwsOJPCfHg0GtvrDm2hduMxX4N1Ah2+peSYd2Ou7MB/Rm4icrfmy9WShcsrIwNnawnglDYhOfehwX3pLef++Qd+Q1BtW4+EXWZnqkxN75tmb1JoAt80/Q8pYM+Os+wQrXtTiD07rT4TZxeopAnGd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EOCd5ObY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EOCd5ObY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9326C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769792633;
	bh=7sh06ApKbJNzBy7C85iwhQ9FBnnpQ5fHgITAHtLx0Fs=;
	h=To:Subject:From:Date:From;
	b=EOCd5ObY0QGk6GilxwlAxQ/OiTyVQc8EM63Xs81myKyVXFIHaSnYnaGQ7amo86Dd0
	 Kvi7P7OP3J1AHuxGOHValnjYbjQQenRZD2Ay8sIwQZKJJO0IbZFMWt8wfgC5+IgsD1
	 3R7rVRyxKIoKlIVeMiEbwGv3Jb9V+Phnx33r1RAcIwvfh+Vcnix4WVtGRq4lQRmZEB
	 /G5Dps1CRaXFdm+2dzMA1oPzG1IjPhFgSLQlDOOO4CZDnWgObtZ2ZCuuXbW6n6yMfW
	 mxDqAsA8yXrjr5E5MZL849XhsoNFxWGhTDUYhyNEcR0L9ZTkjf7mxiz4cL34f4Cjo3
	 B1umtb2Eruxjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9479CE6BF2F
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176979263359.10735.864727826468317711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ad32e36cc623e95db7e5dc4db437e0807439ef49256a2db448aec3bf51678e4
Date: Fri, 30 Jan 2026 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769792633
