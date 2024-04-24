Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E77F158A3A
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 09:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713949823; cv=none; b=GhOxf0NGNsTIt+RILzgE/uUb8HgotTCuZdNkhb9v5qcg1GSWW4qyBuNK7aOdVlA1hHlaxerfHeKtX+9UoOyWkNbEMdQz8+GgtxDUHM/MO0VOVATX1+MtKDSjREaItfJjZg5VB003P8secKooTyxr9azvqGcOrzONFZLVQ/K5/nU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713949823; c=relaxed/simple;
	bh=OuVJCk+Q7tI/1hY+A+YvxtGENPP7vbvcVA7iGB8Gfn8=;
	h=To:Subject:From:Message-Id:Date; b=cf57VrUoLfUBPbS/bhwmcUmWuVtZ2/xhBQoHBPpEPqjXf0aYQhSglbR3i/Ix5aRIdL/Uk5ZQy6dMDHq6sgEJwRPp8feyqYVSuBRrPNP7IH6Nd+HMbINAShzPCyrdMoGkDAkp9jX0w2Fz+hT9Wz5TZVjujkxL/Auf33f/zt7rMB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mgOEyuGm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mgOEyuGm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6394C113CE
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 09:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713949822;
	bh=OuVJCk+Q7tI/1hY+A+YvxtGENPP7vbvcVA7iGB8Gfn8=;
	h=To:Subject:From:Date:From;
	b=mgOEyuGmehnra5F4ICzWeC91MAv7qB7PZrm6R1woQlDSRE2FIjHq/JSo73UXOHuQs
	 iYdJrUeSlpZqzEi9G432pmuQhEnkg1x3FLrypoRRIaoLWFgKYOdAyASV+2lI8/F+Wc
	 1Lq0g7JNmyW7SlOLQWBrvJVLEso86X1LgSiF3cjng3NbRjAHYf1Qz/HWawxdKKxeqa
	 5b2YGMc6MAczn0XpwrTabwm67QjwxxbgY50srD5LJQ0zN3wxx8Es5xju0F247zRkv8
	 TJG5zkiEFzVhIRpm4WjOg1oG8axfkBlkZ/+/JTjoMEB+aLD5UwVxagdM6hdi+kZEIx
	 8iLtTl9DKMlTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCDA3C4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 09:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171394982276.29933.6032446380807372564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe98d9c3c49f93a10e6f3c07e4559e86e7bb71723bd99343eddd9f7b1a4c0b4c
Date: Wed, 24 Apr 2024 09:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713949822
