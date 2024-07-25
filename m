Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FEA220EB
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721933154; cv=none; b=XkFZBSMLAlYE/6QUFEO4N2TFIyYx74Fdxa5tXHATD3PXojJzONt3izNyFa/SEV8nij+9U4jDombx/PcgrQEOKsrbzwK7iAUpznyYp6Yme3NkZUr3MxRCpMbipObkOfToCJCRoXoWkcnV7mkLcTerMsOsO1kZmlG/f+NKm6bab8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721933154; c=relaxed/simple;
	bh=bKuDGejbFL8ju7L+8h5RISUlDub7GxEXN6FkmpGqq0c=;
	h=To:Subject:From:Message-Id:Date; b=Ku3lr+A0zcq02gxqfJkJrzMSmSwrtlPv8xRg36qdqCw2G+e5lDMu84fYX1T3DaINiGUK9cNUuWBpXU+zHg7Dh+UMbS3l5+iqZkJrobp4u3iR3zyzlQHGLIax6Z2Ni93eXAxRtgvJHVWykQOQ2xFpMivZvXi5gC3mzuJQ+Pbe7AM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MwSOlAD5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MwSOlAD5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5577C116B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721933153;
	bh=bKuDGejbFL8ju7L+8h5RISUlDub7GxEXN6FkmpGqq0c=;
	h=To:Subject:From:Date:From;
	b=MwSOlAD5sPwF62ZqS9WAJ/gkg2SeN9b7ca1V3W+2nyFgjWyNokOqPY6M0yeFfmpV+
	 9qZXyBhr6ffIvh2WWKzutKABpxHxrSGMENdSD3y7ITdYQfdqQEWaoUGqtIQ68d0/Sg
	 6doAGkJqpyIjeDKYGFw1IdbKolDU7P3OtYMFJARpzKs7O0MI/48p9IkahwT+Xb4juF
	 e47kSk6G5zZkJSnAwQxiDmXpZc2DYvm9HJa3Ing/hsHom9M8Avz5IEMYEIEp5TwqfJ
	 NG/dbDJRk75CydUz7kIgbOT2QL1sDtBQqv1vWrsS8IsDULazanb6eyGkMrDAz84Zel
	 s/fLk2+HkKinQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A61A9C3DA49
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172193315365.17060.1242374750953023245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43910e19e1142620018fa534a80ce0c5dbaa86634cdc7bfa1f36cb0ab31b3bf3
Date: Thu, 25 Jul 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721933153
