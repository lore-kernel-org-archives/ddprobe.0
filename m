Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D45733E1
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735253154; cv=none; b=hfu40Vz8pzQdbqkt52z/f3xeTC5bZIFl31X4/OrKXD1hktSswXyNtiuXHG97mT+d1eU6Wi77qN1nWmvKjz8bMlddzFEt/DAXyq/e2fMbG6pUUoWlXKWbBLQvUwBbWhCoGpsfPeO3zPsiO6Ue77eUgTLxlJF+VIfeTnAoa5PzVFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735253154; c=relaxed/simple;
	bh=7eYHTDVUlXUBRWJgEG8RGa5+TCx0jcPUDryZULrPi7Q=;
	h=To:Subject:From:Message-Id:Date; b=GJ/zlPcFkNlH6SktTYUThUP5ndxWml8ST0BF7Ub1NiR4kEo7pqLf2hoh2r/21NCzRm0P/by/m2B9jzjhHjLxBe4tWTU3dWbCBuUyU5mAcdPuauONYYVC9Z8wZkRCONTmaelfWFlC1fc8TZqZflaSSS/EwKlWcTO3dE562zP+2bk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EaC0oXpH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EaC0oXpH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3777C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735253153;
	bh=7eYHTDVUlXUBRWJgEG8RGa5+TCx0jcPUDryZULrPi7Q=;
	h=To:Subject:From:Date:From;
	b=EaC0oXpHHF8YxRCTh+lrCYuLXF6H+EpTgVDB+l7YPR6ltW82VOmPta/veBX8CMDxK
	 LkoxTkGsqLqt5heYRnp5PTuynvciP+pxRnQmM/fmVq2y3I/+dwnKdxQDBhHQr5jvnd
	 zYLYyA5nr7sv+giYM5Ief11QFW1mgZukfL7H6mQTrv95ZyM72YwIJx5HtzpHsSidpB
	 J5bA0cps1Hj2KWapOGNo6qhvN3iteDzOyToROzpk9NIgjf/RD32JJOT0wwzD6sJqiO
	 LnqJUV/uXnURV0ewjaSw8YSDIrM6J4rYZio0YBfdacGEUPlgAvcvATAUyY/yPFHfK8
	 aAqwymZBrnv9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F527E7718E
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173525315357.10583.9082181099209718113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a57a280b549ee6a470d67cd1ce5dc1006af6aea0a64de8e31a4a9f8ba1df5d87
Date: Thu, 26 Dec 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735253153
