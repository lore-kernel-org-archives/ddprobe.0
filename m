Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC2A262BD
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767526434; cv=none; b=IwYeVBMSDV3zvJ/+Hyn7NdWEbIInWdWbu6pqZFSNOHxZhY8CjWkY54MqH0uIXDK+gSuLjjCyYxbRB9hzD75qPnrWjNOG1ZOTEoyX0urJ1QZUj6WEq96be1z3dMwhZZfO7CvHZ4U/Gp5rT9D+oR6wZpn1BfOEPL1UhskwrTuZcVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767526434; c=relaxed/simple;
	bh=qb7KhocDrdvf6Ok0PHHIaz7IkYsC2dWTJho76K3C470=;
	h=To:Subject:From:Message-Id:Date; b=hXlPkAGndYWr/UWv/oUXKZLh9ICBQNMsx0KNBO25XjlQNwJyjsV2e4ZhEOyFvvpe+0YGuppx2UqA0etMrhpgELO8J42FinqmxDkUoP8HTGct1BCOCTbaa7zJGz0npbKSSeY0/irnIixDaBuDIWauBeDGrknW881+yibRpTozgVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u39L06G6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u39L06G6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67B0C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767526433;
	bh=qb7KhocDrdvf6Ok0PHHIaz7IkYsC2dWTJho76K3C470=;
	h=To:Subject:From:Date:From;
	b=u39L06G634XaV19GaBZDsXKFf71cnR08Md1+NUi8sdnQdiaIcoD8n02e+6VxleXFz
	 zounwViT+/vXDumaV9xSGE98yKaTcrnAhVoGzmwp3Ns0+pbuxpEPONtbQb0rtsNod5
	 jAK4WMYxBhhiS9kkuoFRnhvam8Fe5UQSWyEQ6U93Vv4ahwa40jGC3b2NaQcx1wgGp3
	 0Xc0qfjTDPyeuoJB2+6SlYltiOavfMFL1Mk6n4GTyopSk86U/KqDrCkspuhlkEbtUe
	 jJRiI/F8dljniXsmCH3674Ie0CljswZ0NpFMbXcxtfN0mis06sajIQhS5XFp2yrotQ
	 4VGnAhP7npzrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CFFC2A074
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176752643357.5867.241110279591241929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f348076e6cc7a3c1be566a3ccee20f658b2a5fdc3805e40f5b5c4a688cbf6749
Date: Sun, 04 Jan 2026 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767526433
