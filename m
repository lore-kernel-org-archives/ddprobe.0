Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 464CA3CB552
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789443634; cv=none; b=Xt20jK4mavkl3BVhPEMPYb6c12G0w4QCHcMOIQDNZr4qD9XngiQrbDaFnz+pr7h7HqzHZURgRA9mYqM2cHKtPYkECr06/eYTnLZDlBk/x9N/2lw/PYug1kKEE/Sfkqxmil/+D907YDgAVZlTeOZOBvHjmUroOLmY74Y+ORiEKtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789443634; c=relaxed/simple;
	bh=gWJnTyK7J+jeGlIrRTd5nulx5+vwBoTTbO7g5nxqCYk=;
	h=To:Subject:From:Message-Id:Date; b=VhYmc8fPjgFvmBLk1Jz8JV0ktQfusclGU+6at3OYM0tW0fHeqFqYBWlky9Lz2XL4f1gpp2v/d09QTjFjpjq/axOyoAMdCvZUdoOr69EjrT1yXbTnfzJdQ9JKtkhxtpiBVQ3xYf1QLm/nxhOT0aZtVwM7ZA5mpwfzKI33wkW8WEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zg9dNNLt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zg9dNNLt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDC80C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789443633;
	bh=gWJnTyK7J+jeGlIrRTd5nulx5+vwBoTTbO7g5nxqCYk=;
	h=To:Subject:From:Date:From;
	b=Zg9dNNLtNrSks1w6bG24965kYdAh/pbNt1FK4/ou1c5tKakoQtKc4kTYLx48qZl52
	 KPj8vqInCiIV3dsanXpkrzgE2OiaFzMYXEfqWp9enC8AVTZvRCg06Z4gRQZxQ+cqE6
	 SSjiGfr1N0rzpFneWuEppZxKkuMFAHSURPIJMoMCnrw+3f6dtemLyR9ZLzgmbxnm0k
	 RiwOcV+11kL0CjM/bK+GFjoxq51X1xdqM8zp3SYc98A+5suYq5c8pMVYMswRUaq8kj
	 ix8u+1lT+fS4mH6b/J5dYKejpNsef/Jo+c9XQ+MXDYHYq/knAWIlgd+m2rwIQbG6OH
	 2BafOzzETLfYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5AC8C88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178944363370.31470.14572435788671553066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 254920095fc82d81d706a7d52b0757643d6336cc845ac382e783bcc41c0f22c6
Date: Tue, 15 Sep 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789443633
