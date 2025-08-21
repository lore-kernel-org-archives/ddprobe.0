Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F42E1FF61E
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755739195; cv=none; b=r6tont+SxitFGo3dA8epXZeNqC+sJ6CUVfjeqgdBS6b3DWm1t9NU/oMcwkgeY/7vBxMxccSZO1XJXLxIIU7WDXDgUDp+W5/4Et287XBhpTMRm0IBvF8mLnjcSLV/t7J3bpdPJFsgnLSkSxJlQ6ANyADyDRcZh9lLMusdnqCKJZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755739195; c=relaxed/simple;
	bh=GHAV0DGOzTRkG7zVgYlrIaj4zpGpHN1ABl5JdKgRzQg=;
	h=To:Subject:From:Message-Id:Date; b=iLYp2BdEiSRm3zLQcmKGs6fHTRCXy0OiTrCYa65BV6rnZqRhWONPvdJyNzRZPs86sRrNWeNV9kp7gZOEtMQDQyN5+DLJ9smGPGyA5plZjXlGgtxKOBih7qYGFM8x8Ri+XOUCXJ3Sf/Qioojw2x40kY4L1xaGhtB8IMeG4ZZFEes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rRiK/jMO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rRiK/jMO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C8B4C113D0
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755739193;
	bh=GHAV0DGOzTRkG7zVgYlrIaj4zpGpHN1ABl5JdKgRzQg=;
	h=To:Subject:From:Date:From;
	b=rRiK/jMO4ZhsQHLOq7wFHbm5z3EfckgBaxLGg09vKimUzLEAmgObv39Ugsb53S2Pm
	 4VgV7w1+GmIMmhcLnK5IDLxcqivsxFqz+eiGYZRgOO1RRdjfuBUAEw6rxM50nhp+ef
	 MRIaaVd+QrM2I7GSkCExi5JJWYYCql0pvqAIq1KjVLMgkuT3qz/pTnB7R97T0cjGjO
	 pfHgazED/gjPGk8vOewsT+AVJT71B41Xwo/ehJTbV/ZfnWkd/eZyVWn1WUBEg2YERC
	 B1HdHUYbh3D2JYnTeGzENQPH1XRj8/uZnRF25AcAH0kWXPGx4b47QwAo8PGyC4M5XO
	 1R2lbMi2FoHig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E371CA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175573919357.28952.17074666947769144257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a4c0997c3b9ebb8889cb24b9c8c963561a14f29a4c85c0477ba31eafa3d7f06
Date: Thu, 21 Aug 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755739193
