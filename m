Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59B541F0E43
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736268354; cv=none; b=LAUbRjYW4ccRiqnRX1Fy6n/f0b4Ngj79kVdGkkYe56e6q7kgqIN+9lCRhV2lQ7Ru2lRua9/gpVitizUIyxAMqHdrj6R4YNBgGq+fhhMqLRx+Mbh6g+VL9Mj4uZFopqq7n4J0nSt38QEJY05s/ngLq4FHC6rm6CntmfiGPq40LQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736268354; c=relaxed/simple;
	bh=8VYjLi2LkfcJELxVKVBOhz1gGRwoQTUjlFFKoj0uhXY=;
	h=To:Subject:From:Message-Id:Date; b=OaA2QzYPaODkZw0fM4pVTAU1IcavH/K37kmD75tqq5MUmJuw8dufzvHy5zuPn+TkY0HUSMEZQCdZniyl+K4fLL/Kr5QTee/03yvYooXY4DgZKkvJ797Geilvm+w5MHQxpBn6hydnDM01iVz5PMEzgIHVjZTu7dbT0hv/X9QYEdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y4rAK53k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y4rAK53k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F26C4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736268353;
	bh=8VYjLi2LkfcJELxVKVBOhz1gGRwoQTUjlFFKoj0uhXY=;
	h=To:Subject:From:Date:From;
	b=Y4rAK53krslKxzPe4yuI2HfNIK9CXeiCf+1FbAqIteqh1MILEPsezdgZSWCYhh8To
	 p6/rs3ZXzyvf7Hy+jJeqKo9RXddAGywdLThe95aLSSH8AGl2Uk7YGmPieXL9/vYOfw
	 h2caeBIuJiNcnUTBXJI88q3qI+e8Cm6DqEouXlPMnA4I31Jvv6xV3ibegy5X8xpVIV
	 172aayUug86b1cMTRgGwN9k/vDwxVxtBTWAoJuJLmxY6Utloz26zuaoKcI6BRmf205
	 8fn+o5nIY7AVndTeaXofhjAdbKVCsLWra3JT0NMP3JHU1fT1DT1ArwAYZm+Am+TAXh
	 jOqjNM7MiBkJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934B5E77198
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173626835358.6625.17252370448766636602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94cf6dfecd6d37fc7c4cc1bfe30bb70e16dbd5da33c9683eb5b741d8d38981f6
Date: Tue, 07 Jan 2025 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736268353
