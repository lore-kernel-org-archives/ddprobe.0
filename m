Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E8529CE8
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727594754; cv=none; b=JsBOw6wYhoCs9TiFTY0Pn8S39xiE2wCHFpZycbES2xpeyoCQc1+cjCzB4enqVeo8qEdXf553txjA/l2PRRDA4xQYLtQGbQPcGMoAYeddKiQ2790i3mtcSFJ4Chcs1ziKVSgoHbVfoIh33XNan5A4VOdABXJB1T/lbZZmkPDQxJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727594754; c=relaxed/simple;
	bh=BsUpyRRHZJh48q9ekibS8rp7RhtlJeVoNchUNDCooPI=;
	h=To:Subject:From:Message-Id:Date; b=bZo1ju/rQG7Whg66nWvoG+zkam6yEo8UAiuN9iXf2g2gsy4IDEy+urbYLFU8nlwbi2aXvJf6qoRNoZZPr/+MRLs8VsPCCey2dGSlXOzqxrqVBTngtYdm0L2MczV6ol1A4563poY61X2xwvYEHZ5KxEvP0dU12l7/gkFJL6DSNsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bRUe66wQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bRUe66wQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8C45C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727594753;
	bh=BsUpyRRHZJh48q9ekibS8rp7RhtlJeVoNchUNDCooPI=;
	h=To:Subject:From:Date:From;
	b=bRUe66wQaqkRFdm9Ky/Cm38tODqH3wOBAbvj8Z8Fd+D+Gi8vBz6phOT9ECg5VV6Ru
	 Et09t8tVUezYXh8CX7HreKL18+OBgp0iAGQUmEkUdglYMRLFCQurWE7Brdel7e7RHI
	 hd+shRxF3q6o5K9fvu9RgErO3w8fy/OGn1QZIO5dnadY1ELKE5JrK4L5W3Ca6+Nu1F
	 6sQTJe6qwbYsG/AFfTZajKJ185IZQkuzJ+9DO5x/+Ef7QEh4LPC21uBFjs43L33Gq4
	 1Wpob9UhfX2SD1S8GATLy4TYeYtbfYfWGJCrdKrtPjUvmH6eb1dyqKc7UJsSmdv6Yh
	 B87crsN9e4CtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A55CACF6498
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172759475363.4617.3488724920526879388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51aec0ad80c3df349dc38077bb108428fe08ab3c125518dbf5129346ea0bfe59
Date: Sun, 29 Sep 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727594753
