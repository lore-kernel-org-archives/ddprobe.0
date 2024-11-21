Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C28716C6B7
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732182954; cv=none; b=U+W75BSBCG4PVGeowiQolidyvTYNyDfifXcUOQLF7wAOr55E7tGHlyGY8crfOImVJKKaCrZsQ5A/T32Jui30sJDXlh+N71GsJ0jMXr7XVM9emHTHhTf7Tbdtenvu35IR3zOjiPAfRR5A+sLOCXmtC5Hy4TKQOq7Bo2n0UTs4qwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732182954; c=relaxed/simple;
	bh=ttA7U7pA/PRKcMkORsWTz5axIhmaOfrhUReIWC+hs9w=;
	h=To:Subject:From:Message-Id:Date; b=at9bDJNTINC101A6Lxzu+s3b2BT2XZ/VUv9C6FIguk3tbEajf3RPKnwtL6eOqCK85m9fxRCQoT60XER9o7kRcO3WMBN1L5vPdU+TdYa0VsZQEcYZ4zaowO6DY1I2Mhg0dmrD2DmM8NQiwIKsBpKJGI3idEAqN4JPH2XDPkcoxY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=COyvXJQm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="COyvXJQm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C8E5C4CECC
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732182953;
	bh=ttA7U7pA/PRKcMkORsWTz5axIhmaOfrhUReIWC+hs9w=;
	h=To:Subject:From:Date:From;
	b=COyvXJQmGz8ElsSWlZyTlIL2DWCnZAQYgG+S68uMUUf+UWwryC4F0/b/fY+wKrN+4
	 5WbT8KxlDbdVQfMMCqmtzKlPyH+DO8vFBpZtxI4IcRUFyEdQGGZsPQ2uWhbr15OkX9
	 c8pTgIV12/jM7NYhPpVFYifrFT2g0gVSUm4EjKeJ1FTEo1anRzuY2yQvQ3iWxKiPXo
	 /D1FmBQE0i+f7Ylv8g5NeO+xmwHzc7K0hWvTBCYvXQov2ZcHirXu+g/+NBuD8CHgeh
	 lph0vOUjITRJkFXjINgbP2F44jdLRl0VAP/8eV+YyZqcDPhiI0elVGJ7UxcgYak093
	 Q7Sxhgu1DdLYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9186DD6E2A4
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173218295358.3582.11847827414291581529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd7dd84bc5d1c76c1a4a640eac0b4f59f908af6b2c6b1f10e87a7f7a82be7c04
Date: Thu, 21 Nov 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732182953
