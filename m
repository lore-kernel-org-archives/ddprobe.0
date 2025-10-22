Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D33331A7C
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761131994; cv=none; b=mqZvtW1BR6GxFG0I75OiciDnfCSp1BR52WHhbfamuF3Bcds6MB8SHQjqFA2pCr17ZiuhDed6J7Q+zJRmjkRfK8FFR/+A9HGwiu0KzTzXvf8dH0JbqXd4/8oyBlhuk34tYOmPOWQ1ScBFSwLeHksuJ6BBvwJfs3KPyhCaP69mTEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761131994; c=relaxed/simple;
	bh=E4koV5doiXiYbYDbcXSq34B/nu1OkYYMPgKGBmziTqA=;
	h=To:Subject:From:Message-Id:Date; b=WM4XtOCQUeUJ9Ar32bxz8MqXyV+rZhgYa0kZPZRL5r6KsarIb2D3bew6YZeyC1wJNN9d4BVxionVXdJobAXEwQPML9gss5N1Jn9ZY8sja2RvPsLqLkhBu23zaFfmmK8/xZaV+azgDa3nZWmJBKFsC+0C9v/ByvNGXbz/Iglb5Bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BesCHwyb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BesCHwyb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC116C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761131993;
	bh=E4koV5doiXiYbYDbcXSq34B/nu1OkYYMPgKGBmziTqA=;
	h=To:Subject:From:Date:From;
	b=BesCHwyb3PK0hogHGs4q+SAqJC/L3c8DuBO33TOqAkV1Ab7h6SfPH/MIGb9MZlEEC
	 qyrAttJ4FLEwgMYKNKH1a4P9Blps5gcgXjkSi25mtcqcvzmYjBMA7tv8/RjiQ8G3bt
	 G25OWxR51RODxBCHHSkqclTYBn6HSRsZHlApGduMFbUwr44lFW83ev4zglzXaGpRDg
	 nNUFxGDSknZ6mKS+PTxnGzZm5qV5PNtY4rqmHhf++a0JTqEnqcQYZ6x5PuPQOrXkev
	 8bBYtG5U+PpKWqSecI2a5eZSe7v4mnU3nxWW/b0KIm/rVpJsL7aAXFV9RmIHpR0gs6
	 S5DHXXiCpMrcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4D79CCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176113199364.1091.12990892351531204872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8be85138da51977d458e5da90ba41409d6580e3001b94ab15ea999a2ffa967b0
Date: Wed, 22 Oct 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761131993
