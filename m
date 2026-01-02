Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62D79224FA
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 22:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767393234; cv=none; b=DRI0feQEVb71wTgLeTbwuQ7VD9reiumuoIG1SvtGdRUd77ist9MKknJKOPzSoFeJtEwkPmQ4aPY8I6lCUfcaf1Am9wmclWJMilriNqtR7qAbBVddOKiGLJ/5hmWdW3zEe01sN9c79KSWb4UajYeatOY9a5WGdJ0Vs/HV08OdSIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767393234; c=relaxed/simple;
	bh=nz3N856T4iZjYjWC30U6rWNpmB+37nU5X298OtDS/zE=;
	h=To:Subject:From:Message-Id:Date; b=LYuSWhWUqCaDlHQ0OOD1DwEAuS5sEykTH9lgI3c8wFBvsPYvdKWj1LAG11vGCkNsPbvWXyW1meNxQOYc/+fjIMrv4ROEFrlXWGnp9S+sw07H9RrL6/0iAfh8qbYXu8wkyeyRsTHgN1xvATUaONDxrk4RnjHgUg7JWLB0XrL9F5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NezEqVoK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NezEqVoK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14F4C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767393233;
	bh=nz3N856T4iZjYjWC30U6rWNpmB+37nU5X298OtDS/zE=;
	h=To:Subject:From:Date:From;
	b=NezEqVoKXJuK2sflw7QGqAvNOlPKSdAc/qw5iCzYt1D3OVl78jLcOkX3xWmFxI4fW
	 UdkL0oa6XQ2SPbD2alFA/mkwlamUxQmhnkPNqNtvlkKPmrK4ft6dWH2hOqbootyhT7
	 LWgRQt5KU+e2t1J+yXkGG3QrfC2ZhNIsqKypEKyEQSxmhnivQzAf9zH/XNqyYX8dLQ
	 vYswKRSH5w8yQiaCrXclNrbfqT9JiPshFgOxw4OhUZfFAWTUbAcJYo1QNlz8NlNx2Q
	 z8snFCITS9cdSPGwNZxuikPNecKazHHNttr9F6dIk68qZkAfO6tPQYN54am11HH/BH
	 8kGLCZsCnjJ8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F882FA3755
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176739323357.5272.7060121209009327792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a37b62f37eb2a0fc509ee368b92a2a6c83445551677c4d6e8cd19f1343a31033
Date: Fri, 02 Jan 2026 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767393233
