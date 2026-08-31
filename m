Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6CF38655A
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788195034; cv=none; b=DqdXVTBRaxajo0qe88mwNAgqZxO2+My9y9sn7cGM2t20nxG4m4Z9Pkit5vM+JHkbXa3ci5mD+RtjDaTxkpbLDDW9kpFXhtKZswLEycVb4+0zlqKYYMVivcUW03qnT2xnv1odNCh5bH6MBpzBTq5COXvJVd77qmLhhJgzfZIcdIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788195034; c=relaxed/simple;
	bh=J0TZHJvVNZ/oJTnYarjVbQTiQ9m2DSGrvTtf9LgHMws=;
	h=To:Subject:From:Message-Id:Date; b=Bzc/CajQoCASDvDUnSfFx+uTDc5W3gNvdAwwQFrPtW5+CF8ij6DKpU8lxyuA+k2gk7K1oFJvv0ZeKJ9A09/qyUSUc21mvmDL/TB+HO+A8wfbd0vtQVgE9ym8phNh0wYFfk6KE8JNvSlPY5IQRleVYXhdj2c2KjuVkVZeq8nobPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N6MxqqZX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N6MxqqZX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D41BAC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788195033;
	bh=J0TZHJvVNZ/oJTnYarjVbQTiQ9m2DSGrvTtf9LgHMws=;
	h=To:Subject:From:Date:From;
	b=N6MxqqZXm+qD/SccIJa6Web10K73f9fHESDOomhZXAm8Y7LpUpAaKty1l8adeftgU
	 YqdLSZcyz+AbGdtYxg5xzbkeY9IVZoWO5QtNJImOlZO7eZRKGZmH/OGpBKeeKA0vXw
	 hLY1qcZGE731JQKSHMSYfhWK+H5Ew75ZAxK9kNK5P/R+N2E+AlHbeCCiHwWa+qVE8C
	 Rs/EVyHC5tqDxhVBGZd5GReqqWJg5EQa7Qvtcv6ZCMfjzBAW1Lus7bUuHE0Shpccb3
	 n1TpB3M5lfn+cOUo5QIE70qwGYR3n6k12GjzC7c3RW/ouDicTlAh0PsHCADsDJguYX
	 If/muqqZ6U5GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B07CFC624A4
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178819503368.12721.413354430773022991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 693bf709112ddb566c8ef0ecf7126e51fc6a6fdee759a3adc199fee7b59bf48e
Date: Mon, 31 Aug 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788195033
