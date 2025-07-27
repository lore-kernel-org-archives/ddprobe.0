Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F621A93D
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753654194; cv=none; b=GWlrgQTM3Gekb6KZFvfjY9Qg/WwKUxjow6vN/oLb6hotAfFLoB1Io8FXYggTjFYLCg8c1iQcZ1pprldcaxI+KgdkMCSp3rU4ywEqKZE2KIpwWM02USXdNHCbrqbPkK1czRg5pSh67dV22+yKGQX2AUIw7p5aJQEY/Pp2jWD/9AQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753654194; c=relaxed/simple;
	bh=vCNIRZ35ePrINIdgTLzIjtGoAH8I/QuBquBUXZ7kh8o=;
	h=To:Subject:From:Message-Id:Date; b=hdHWbyU2MeyMFZfpxpijQGTKJe/EXf8rPjzVRDIxVClSRJspuowQIvCMJMg6s7xsDMpDrIYC5iXN+YUF24QKT73ZrazAet/cwJzOYiOYjCZdQTuJ73B4VsyJ9cpK6CCesyZMTdkdYJZQhqPLdvdVwIcSooFf22c4gzgmbMWrp7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=boxr+jD7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="boxr+jD7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C7AC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753654193;
	bh=vCNIRZ35ePrINIdgTLzIjtGoAH8I/QuBquBUXZ7kh8o=;
	h=To:Subject:From:Date:From;
	b=boxr+jD7ehxSp0BGn7uVhvuK/I3VPlXol3Ng7X5bCytzTnRleN1kzNdOyUx7olwcS
	 BOMHEK6MFoEsqCa9JKY8DH9FNKGLL+TSPflN3Iu7lUha1IxHiBqb9YVK950aecIWEZ
	 mTLlL7zOHb4orytnWgaJXxVfd63xH+9q815NzmMaz7ANvBS+RzLg88ysgIh0khxavZ
	 X3KyUMg0/EvMo1Y3mUTYVd/GccRdxQXNUoD/tVxKt+AqzcwumCpdXzSd6HybZ9EWyl
	 M9p4N1ijwc47Zz29DrAvDk57X5b33eyG6tzTMA+mM/09rDgAMHNN6mBWtfN4g9UHE0
	 t7Vec2swubbWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955E4C87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175365419357.1281.4773946510459808949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c757f191905df56a16fbea6c65acac2e831a9f5c3cb6046c963e799040749a2d
Date: Sun, 27 Jul 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753654193
