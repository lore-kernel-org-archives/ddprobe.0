Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2C613A258
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760326794; cv=none; b=RyOWbQA5YLLW2hLTqVwgXk7By5J2USpruPUlbthvyAMYf76JEAGknHqXxZNidCSyjlqh+Nh5WhXENT/qNbaGfQYG8YeLy6MbRmDQ6RTnACBneGIIpyEBpZw13rJD5u21ByijdgrDb+rhfYScpomrVgt2t0qZWcYKazUdjHdzbYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760326794; c=relaxed/simple;
	bh=XuoF/apInUc1rg0APHyZwesFkcwCaBGjT6CrS3evNgE=;
	h=To:Subject:From:Message-Id:Date; b=dXun1GaOo6dIz3zl7AYUwKpj8nrueZjXr8CfN5z6HErMs50mBW3t7MBM7aQE8HISz8UnBI4DYvRxnwCs9cbvTYXPHvh24H6zV/tmK//W0OWLVMRKSWVBdk7KY3Li2A8AmvxpjTMnK4zDEAhxnmuVKA93OvgDigV5eNajrclWgXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=it+bZwKK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="it+bZwKK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA5B9C116B1
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760326793;
	bh=XuoF/apInUc1rg0APHyZwesFkcwCaBGjT6CrS3evNgE=;
	h=To:Subject:From:Date:From;
	b=it+bZwKKWds1O5eHrw/g8CFwQyOiAd+qy7/1uBec6zVnZZmNVPw29hY9DOBVSfI7g
	 syOv3kcsWPSiMEJ3dZ8dDa06p/pijjgShEWgNlDjL9ihSjt+pWzLTTBcuM3Hvu3ls9
	 T/MciGP8Frj38HqHYhSQj5QQSqHpR4sZBfTh838IJTWFKBDbYFZZbYSpofRi6feeNX
	 Yx5RZzqejil758g5+zYQlgudPBA5vrFwK4rOeknkXIemld88/sSMrNKILhgwjr9q/o
	 84yWpgJTdRbVBsAruY8orD2ozNYo5Y+umKbW0YYgrmI1zVBcXOnHjidBp2QR86/U/H
	 4GsiOCjqSJKoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EDDCCD185
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176032679359.9645.1861641459919858665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0ad710b972bcf2d102802faf518b27d3a05832576b14bc1dcd197b212e76a37
Date: Mon, 13 Oct 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760326793
