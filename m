Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D9AF16D33F
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724414754; cv=none; b=aNl2E30kQ7qTz/JnUVj+l91pScr0o3UaNhg8wsJJdDk4YIujZo8Xp6WlASWDFBi7cQZuNXw60avwfellYLt714wVpA8TkbJy/covrP21mIXBhnnVq3kGeOJzJ7WI0Q83NewZPpls4Nm+hzoO4l0CWb4YM5rlbF74TmkuqkYmFHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724414754; c=relaxed/simple;
	bh=Dq/D4eDbCnhcjCvbLlcMNptrIzICHzdhDlB45QKwWhQ=;
	h=To:Subject:From:Message-Id:Date; b=EYIsSDGY1FFaSr6Xw5DNBaJsYXB1GYS17BX0SD6IcskoUmnNu6O/U+s/jDAlwxmRXlkIokDphpPFJu6yFcJPg8qpVXP9yjTflXM73v5Bku8TiHjyMjELewFFoieGbRiCjlE3tYpJJMmLMuREHWx+pR9G4z7SDXt+d6IZzt/Lhuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tKLqko5a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tKLqko5a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4001C32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724414753;
	bh=Dq/D4eDbCnhcjCvbLlcMNptrIzICHzdhDlB45QKwWhQ=;
	h=To:Subject:From:Date:From;
	b=tKLqko5amAEj2h+eBzYVRBh/Tg9CBxalEAz3GLMXDhoG8kXIMFHHs+VHJaa2cAPaR
	 H21+++pIvhHrws+6KCC9a+MrJH1nfDUfLI124/k/+WCQSzwlMXW53NqvXHRq3jRYXB
	 3EcJmtdZxAj+LM9ZjT+UqMmM2toSEgihLh1t6E7sowKDElKfHqYIMO+aCMSxI85B0n
	 3bx7C5m8I6MJ+baQKioPJv8rqccJrcWF73UR9s3gedRAiZFnHtlGJDJcE7NC9mLniu
	 rFO3+CT6O8uSYE1pwpkUTt9tiV44ethxrk8wz39G5pPQs1l1qVt6ZUGT2r8+xiHrRy
	 tPKA9WkFmORsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C1DC531DC
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172441475359.31208.12803776074853687396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f323ad0673a96c06fdc20c8e13008d59ce244beca9cb39a0737d7eab3d2a5409
Date: Fri, 23 Aug 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724414753
