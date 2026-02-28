Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D36601DF258
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 11:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772278493; cv=none; b=KHv7ZqVdc7IaICGQ2R21UpsPfNKcKBgG9MbtBZH24v3ZowYC49bybmxYYBqVa0KgG3iMWWCy2TzeHV3Weq/XiT0LQcyvqSiNBtF5Gf8n/Ag7eUhpF40ptj7adDXr/+gEKtwncqJ13gIa6nu+h/MT5z5oDOiQyS7zPHer1nJuSQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772278493; c=relaxed/simple;
	bh=BlG158oAW+xyLybu51Ouk7UwkbmmozQiOgZRhqQYaow=;
	h=To:Subject:From:Message-Id:Date; b=Kdcui207TLAZQiOVcl+bElZIHyqd9djnL1ZIgV7RGLKuSaig+02y4NudPTvFr1Nr8w1w4g+EAQpQeB8PML5SJH7VDxIUo1p5mNNJbuw0GUWlomwBb63nh/Pr2Gov5v70Y4iBce7EitKYSQWVoBO7rmal9cinU6oZeAmstlMoqpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AfeT7t+D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AfeT7t+D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4294C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 11:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772278493;
	bh=BlG158oAW+xyLybu51Ouk7UwkbmmozQiOgZRhqQYaow=;
	h=To:Subject:From:Date:From;
	b=AfeT7t+DpsveAsKOfkNuKtzbZteUdWXWWG/AJZDdMOh1AOdU82NDVZGZHg+CyeXlP
	 KiWVZb/WZVvLv7Cis98l/z6Z5bw53046YnuaGX+4htThLjFbT9Q+HbrFcKmu9WJXdy
	 nhFpzuGp8TVpyqL5TEcaN59Dro+eFJHbhbrf3SpPs+FI/dVmKXoKIxAWYssPtCO6+m
	 /44ovcxveJ4yoibtEQZOKh+EpPNYymOlqLZDgZyPoA9lShqIYiTAMc55ahaH3QOZIp
	 dDKwsYx28A2nYxRIyjJDM5+Gfz+N3eoH7eOctekgu0gbi878i8XBb32WIrnFZHyuER
	 9i0mEKHI8Ackw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90638FEE4C9
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 11:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177227849358.14006.15329444298445935084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6af57d31b13c83c6933db2b509e36d14873b3cf83b78294a7f180b1e3e63abb
Date: Sat, 28 Feb 2026 11:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772278493
