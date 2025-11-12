Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338AE285C84
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762983594; cv=none; b=e6aUJ7q1k9aNmZ0boEJYpNKzdJRpGzQdx1NhTnJpUFh+4pbNuUn2NepOp72I4VgKaw70+RnM3q6mipO7l6mUiv1cf7Fa0bm1Ji9+ScyCGKJ7/RFmsM1jPiM1giX5QTVzj1WIfJtKj2OMSLy8C4EM/gL51GL/iAyHPYJdBYPmrPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762983594; c=relaxed/simple;
	bh=yAyxfrquVcdgfoZFIVIG0txXIfnVGknVNSPC1v8jFXY=;
	h=To:Subject:From:Message-Id:Date; b=NTNqy/oLFzuA41lcxhS0ra5F9jhdooIrKOYn68xc8m/+paQ9wQViphxZsFaqgANHW00fbQdrjrDd0GYkAlCasJEzharZ/Rl1jmxE4ApQc91SwAp9KYfQ83lFJ6ny+sLgZ8d+uusU9viDCpFvs/ymOjg05yT8u9MDZujqsqxIoKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EvNUPqjS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EvNUPqjS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE08C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762983593;
	bh=yAyxfrquVcdgfoZFIVIG0txXIfnVGknVNSPC1v8jFXY=;
	h=To:Subject:From:Date:From;
	b=EvNUPqjSha+i3XzD3mRXjlkHQACzhzVWcAsQD3o7d0dopfroLv3p3o/GbBiNJ+2C1
	 euZMUY9bkmiZuXbJY7JMyY9JM5J+o/jHEQY9QDgGg7BzjummlLDqujiGIKEIpfrC4c
	 KPumz8wwWo11sMRyAKpKgHahZoTYtWnzjdmLe0q21LDXk4vJYjaHOn/CvZvb7K1UcA
	 QrOSj5sDIXXmUZJW2r4hbwax3+iNzP//aKRtTLxwYf9bIahoyemSYmH30fYi1SYqTW
	 A3Q9c/WksIv13ftLYC6nRRSSxHUC6OI7O79l5DK8LU0JbW0dQulThsqiXOHBpwbfQn
	 7Dinyozh3LK5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC58CD484D
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176298359359.7271.12842217685310846004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1c7a42a385cab4107c606d8716e84017098bd63ed2ebc4ec53b4e50f0d9bd27
Date: Wed, 12 Nov 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762983593
