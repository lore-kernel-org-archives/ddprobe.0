Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39CEB134D1
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727307354; cv=none; b=cFNc5/tLsO/csNuJrOnrChTAv1LSCGJPW0uJyXloKLbzQh7p1VLa2xTjW4H0iLE7d/CtpA5tW1LcWg2b73ztBxLsNeNZTR0YVvJXz6fROgCcZNoHxDiOVv4Y8MNDcj7WNZQXtiL9URXBW4hY8akBlZVi7kZq2B7EMXVkm3DrxFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727307354; c=relaxed/simple;
	bh=JYuJzu6srR9u1YDfdwAEncwnK0vd/Fnf91QHl2fEWO8=;
	h=To:Subject:From:Message-Id:Date; b=i/7XD5KJGqtwkKFgl8xe9CaAzXy8iChsEXMQRiwJaB9vZAMg9tzomQuLopzhRYKimrwHgWNs2yMnjp3A52ckC43jAetS0NIj1hrOWaTSag3pBMO8tiSTYwle2ExDR6iWQvcmU7Vx5XY8iIViSXtSsVXx2Qd8BVhO2JGNnym1lxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gk+DdqqB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gk+DdqqB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DCDC4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727307353;
	bh=JYuJzu6srR9u1YDfdwAEncwnK0vd/Fnf91QHl2fEWO8=;
	h=To:Subject:From:Date:From;
	b=gk+DdqqBkrzAP+CPH3/8EkEboc2f2/yrnTJMc+9rnZOAIT52FlIQsCB3WeMrWM54+
	 zFsF6o52k9X6naE4MGIazuyhgisvQALjNkZVxG3d6TMYetbJSyiOI3NjrYn9ITEz+T
	 vkiB9aDqrdq/JUMyH1ceLJ5wfEFkGob2hVN3rnroSR22pMBVWlg7HN5OcX+CbkwG/M
	 aXBGY2RvQmBC/OpdhnJaaMjnhbl1eEs4bFq7XZm1ZBq5sk878wBjH3knuGWbqYt7Fx
	 WUswa26hR3wLUuYTYKS2kHWGOn08clIcQ1av+IoUdsbpcUXCjmP5rVmjBD9D7s+9mZ
	 A+I5cykc2Z/vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918F3CCFA06
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172730735358.19302.12524151801014805732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83ece84ad0aab821a1fa2c147203f02753528e891d1893466f01c6ce13579d30
Date: Wed, 25 Sep 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727307353
