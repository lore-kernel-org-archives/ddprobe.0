Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E281494D8
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745978994; cv=none; b=ZOLvCn3D1iA7TO6rOzmGRZ3h1Wl9GrmMJ9snRhB+/MhlupLXRydpcaeE4EiogrJuFu39+tudr+FDdkKzApO75KNMi0OXsB/K7h2XOytcG9sZSnMiPc74qZmX63DXax8t/k7Q8p4vy6XS6mGXTsPkOn1HP7o4FEMnoz0GYzPGTd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745978994; c=relaxed/simple;
	bh=8wRYxfRP0tcWQGA94orPYjSaCmzdipVmS8HFx1yfy0g=;
	h=To:Subject:From:Message-Id:Date; b=LKYIn/pxvorinHb7go+Fqf3hn4VkO7jwqb4KyjxJMK5TCeIP+r+iOqmrzkhJUtUWKwrwJ/vXF37+PiGeobaShQ3wDxb/vLbVgVeQzMmGZyYUXEk/9DX9OHYNGadZHn3vLjKsbxCc14adcJ8J4FbpTKHg2WL6F/Mu/Llcyo5OkMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mim1sQMW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mim1sQMW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51E5C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745978993;
	bh=8wRYxfRP0tcWQGA94orPYjSaCmzdipVmS8HFx1yfy0g=;
	h=To:Subject:From:Date:From;
	b=mim1sQMWV8pJrqO69N4vgsvEzdKEEzkvb244ucTXqS7Np2GiD5CmVdqPxXktQD3Tr
	 TpAH3soZg+Td1T1q2JlWQN9+5mgb/g/7N4f9qTFElnWlD/weSec+FnWTfmt5Ge+q9g
	 LCPleCzPkUPa7mPa/ImlhwJFklSjJqarwOMsHW9mxrnVtx1PtSQWvX/JWteih7FtXS
	 lGKNsQDfhIwFOB1kgOoHZOLqsnebxkYjzqhm92zYu/4NacaCzcT7q3DeAc9CnUp4US
	 mQadr1K/S7FlZH6A/aVxN93mGrJD8JdDE8dElO+terRX7EMG1ATUoppbx45D/XNMD2
	 bdYSB9LICBJFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93816C369DC
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174597899357.2601.98672247861573064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e1b212a119bf130bd0015e14c10cdf8cf98150294ec48354feecb57324c172f
Date: Wed, 30 Apr 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745978993
