Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5279B6BFCE
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 04:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770611034; cv=none; b=tZHtZknP/Uzpr261v93jZsEu79jPxsZc+hS6/syAn5bauxgblOGeDAXveeNIWp2kfhdgcJHjby5VP+j/VHxRi2/7lChdJu1JloQwKDV7cnUaJEmE1xUmo6AOFrreRmlWBdue2F1Qrz07Zarm3THcBTp6EtRJS0e+3wnCfqMlhUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770611034; c=relaxed/simple;
	bh=u/Ta1wC4AG6W10Rby1YTLxvw57kLGaJA1zXGHBusWIc=;
	h=To:Subject:From:Message-Id:Date; b=NV4F6d/dDJk9kI7LgAbzy9YfvyAUlzwZBLX0GCcvLnizzStTF+UoWpO7ZqpbBKx1GHdoXJ+C0m+e3irSlGAnSGc1sl3ME4kZPQmNq4WxDyLgN9an9TeLURcuDJYZt6mxf2iufxP7J4CCX3EIwqy/ItBPDR7SjxToKZmu6XrYcZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aJV6TLJ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aJV6TLJ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3DBEC116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770611033;
	bh=u/Ta1wC4AG6W10Rby1YTLxvw57kLGaJA1zXGHBusWIc=;
	h=To:Subject:From:Date:From;
	b=aJV6TLJ11ldPGpYYSdasbw7tfwg1ZhKwQwjbCjVQ8Gjoj8i6AdpSuu8po3g0Ghb9Y
	 RcUqEJp5E8HDKKMCetSESfh+C0ZDF+BqmnpaK2uHj52pJTlOYb61IUbhaKUHZQccZY
	 8eFcSXOlYct8vjlG09VRggNc8QHG8BZp83qRbxEcbs5v0HWAMgD4d/XdHTcWrYBtO2
	 tISNdxg9n7fOIQLlq5WhI2YYkje2u3ggsYa/gsBODlmMN0Vn1KbWeSa3aKQN98MJz7
	 svzuC/kKYRAd/LX8QRGxEy+c/hdsaPz2vzOrpNqMZ8rBmBrtlDh8EtGlcqZdjMnAvD
	 UG4brc9JKO60Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C933BEF070B
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177061103369.7123.12156986196720182969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4361f424c0b3f6ae43c8f8484d205b6f624dda5ad321143f10b1b260bab5663d
Date: Mon, 09 Feb 2026 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770611033
