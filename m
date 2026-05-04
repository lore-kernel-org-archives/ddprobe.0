Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0C13033D6
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 08:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777882054; cv=none; b=fSDfP/+x/8KaFmNqDD7blPApED+QDzTwmsKLdy59uTJApCuXRDMsOyThXV22GcgOfEFhQwTCnA0rOO86Vas4rV36HM+SxcjygBX14SFiPLtYMrsrdVZGNm4F7fc7WDecYEa1C9QwBkyiuqZK6+s71QYQUc0wHs3hdzBnSwXD4r4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777882054; c=relaxed/simple;
	bh=g5tf16dHZf8t+8RbFJN+AlFwUus05uGSYf+GFSg07KY=;
	h=To:Subject:From:Message-Id:Date; b=FzIxNuCYQLBqxO2DxmLSad7B7mBw5jO6lSadUDQAdCGVOBoxxDMbtj5yT+5QJd5eqUtiVfbgfAvNOcDZdin/2XI+jPENAPwNctqp/37T1tMjhywOhTXjxXJUikE6BPlkPwmstPqvTIkxXsaqfZeZFAgfHXB7jfMbYKR6q9N0HKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pe0J7Q95; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pe0J7Q95"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4FA3C2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 08:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777882053;
	bh=g5tf16dHZf8t+8RbFJN+AlFwUus05uGSYf+GFSg07KY=;
	h=To:Subject:From:Date:From;
	b=pe0J7Q95+tZTalOJvHpcumznuYzltav7Mhc94dQh4AVb+seHp0BCNABoOo4KM5F0H
	 iucIs8wobZF6IG9SVDVfTEaqfhdowsch0MMKnllQdI8BFOhw96IKTDzA6Tc5UP8Xvf
	 J2PO41k84VeXjfEm6xK8Stf7PQU0bRd0VyNUyHZm+rwnh1WE55Xzh3ln1T2O6/MGXw
	 7ZJfrUM5fJVOLyB2l/gZJVXmlHsNMgeNbvcL6LiFxHtSc8i64Pqn1HF9hXhHHk+9eH
	 53yv2PqXPnICYIaqi9kfGTlYamOQsGRC1i4ARouYNbekuEGtfileQ4BjO2u6lsq1jS
	 UoGMVNkPXoKRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD25BCD3423
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 08:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177788205370.8288.81426722167958652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7aadeb667fc6756ea69d10df4302723ec1f9c871045a6eac6c295a044792645d
Date: Mon, 04 May 2026 08:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777882053
