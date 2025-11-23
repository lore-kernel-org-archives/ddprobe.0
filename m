Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB1C21CC47
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 11:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763897514; cv=none; b=hInu9nQct+m2zRJ+Ebk5dWO1yn1wU9GrSkaTk4L6zL7yhnBwSNo0Gx5nMOWXgJ0Saiz5CKtzX5Q9Arg7aZDg7uprHuwHK60gvkkwZJKOwIvkVpqxnaYMmIOLtDyB9Vqj3lwdfu+o6x1vmotCNkTibgKzCve3O8znLHwPqOLbuzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763897514; c=relaxed/simple;
	bh=qi1sJKLr9+q+5jongUMI9DbGr1BA4NkwH2fM4W21cP8=;
	h=To:Subject:From:Message-Id:Date; b=suTNImsjJ+HrHEOeX45aeppZ8ZuOBzc3gG8x+6bglow1jQGx5hXZQViferGJdThCJdMFDQy6FqbcxVwvOWSZ9l1UyIUXDTKm5fEJDkhCt9kU+9E9qmZ25cH/7eb1/C7oRqk86iM9mJj4FGl7+z8cWfqefTxzTYJyGx9zEjyugIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fhL+ETpI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fhL+ETpI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58A0C113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 11:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763897513;
	bh=qi1sJKLr9+q+5jongUMI9DbGr1BA4NkwH2fM4W21cP8=;
	h=To:Subject:From:Date:From;
	b=fhL+ETpI+POFxRi7Fyvt1EtaxHtuJ6iHyBx61ZC32Xy7TyMFz//ffoGncMDFLAfPj
	 huYRTy8ouORprUgggCKY0YukJkOC7v9zps9qVvvCjGSHGxC7GQXpNj55fQesb2YX7R
	 ThCRAnVTgTuGRovHXbAVyYs7mUsI82Tw/qH/hgoxlQW7sEhnq0amRi32cpKF1Q/GA1
	 CejjMBV58wNRB9/HpaRenNgyHh+SEY/QeKholkMqv3m0B4bksMaYSsX1PO5rSuFAhP
	 duMhYfvuL5iVs9x+S3p/CrHyJuFXmZuz7maGfwpQbHnXXNug48WcHyy9jIiLtrYeqT
	 ZyKdu2zte4MSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93ACDCFC518
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 11:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176389751359.17400.5156053851293102083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 795c00133124102af82e876f753697a360b2a28910de13981f5ca9948371d4b7
Date: Sun, 23 Nov 2025 11:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763897513
