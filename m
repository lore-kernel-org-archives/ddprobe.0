Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1C451A3172
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 16:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775837254; cv=none; b=RKstAGeVX8wOo5qIOM1dqzupsmT16yhhTnHpTj6rTsSyW96J8MiHKsisvkYcH/03Qv6EgMemcc2eA0eOfiYG9iKh6E9g3WeRFiDo0GvmszvBtKMyBAd4pJlJTUCVOyS1Cqa5Ui9akVQev6yhLgJgcY+U2sT5qPy4Bh3IbvMv1/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775837254; c=relaxed/simple;
	bh=xaHzX4yQbAjseomnG+8y4uhjFJ5IuLjRTII037Le5J0=;
	h=To:Subject:From:Message-Id:Date; b=L8jQmNKOWsSGBlDRPuEncaBw6uy/ZFqydt02O9Y1tplzn7vCCerjdTabGA1lvA/h+R05ooBJ1TuRADD89wtEGBirfzo6FzRb5Oop36K8Gvil2Pf9duVDj1AVp/z6u8IK7CFAgdZRbTHoHBU3g7O7JDr0fq4rxBHwhp1LAlJ/baU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rgtSUXIE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rgtSUXIE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6FA8C19424
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 16:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775837253;
	bh=xaHzX4yQbAjseomnG+8y4uhjFJ5IuLjRTII037Le5J0=;
	h=To:Subject:From:Date:From;
	b=rgtSUXIELTxNcs5buPjA5jeJFvfmxrJa3EUhtd9wFQoDHjdfkBnRA6tKHnzdCnwU9
	 xWbGE+9zjtoIqtr2xCKsWRpIX5qQ5/xNjMxtrJD8rZBhAKLgkJdsfdNCfRcE3M/kA1
	 oqyQ2+OMy8aFRAUC7bAPSGSOzzaJOrzZ/Gcj8xLLEOuOTtldcdV9dqgifaURFrZkJ6
	 RbtHhQFlXWB2HxpivQZUff7Y0LGX1FnqoJxcFMPHDvrxixfe3Kh/EQUB6nXY/yS3Ps
	 +7LXMtV7igvRmJv5A+f3sugXPRmj6M2dI6YCzP0Ap5RXeKa9g+BET5jGvXUbC/1gAo
	 6eNirMuptSh3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5418F459EF
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 16:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177583725372.11835.8304157228092949453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6857dcd995231263528e389979a0e434708fd174947d69d6d9a448f6c3f12193
Date: Fri, 10 Apr 2026 16:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775837253
