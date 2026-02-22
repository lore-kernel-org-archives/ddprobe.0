Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3073DB67A
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 00:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771718694; cv=none; b=lRWvAloL3LtBfeZWus47I7Iix+j6sQENcmGSOcSzsP/UN+k5i2IRN9KK9DuzhN9pDAAUoJYr0k0rGOzC4MbbyPdNzBykeo9A4csvvX6uGiOtb14xagEUOBDSySv9uQv1hBM0/PvCS7NChsu95eBAoJ7QVicTfO/cMVZpNiA1a3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771718694; c=relaxed/simple;
	bh=oYBCsIB6uXYZ7zWQmzon5QMbff/e242wmrTqp2MPTEY=;
	h=To:Subject:From:Message-Id:Date; b=H4PVeDNCUfpsCzxdR4DFb9VusUMm5MAxZ0m8tJYD5jDzbnypKmVr8K4Qcz129tVfPHWX3jAyXtmLh0C0GHiO3hgDkPS84OGUCWK3kpCu0CUSNiRFupAGmUQEEHdOhPf2INewnM1qiYOmGY0ztCrAfRDQENFs2ys6Fp85RAyIDFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s7nDk0bx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s7nDk0bx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEF0AC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 00:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771718693;
	bh=oYBCsIB6uXYZ7zWQmzon5QMbff/e242wmrTqp2MPTEY=;
	h=To:Subject:From:Date:From;
	b=s7nDk0bxXiqU5OyBu4F+j3G4/MqiH/Rw/Lq43XWLCO4vhi4hEhaqc5dJSLQF4qy0c
	 fph4M8zuucNMYOm5qZJXUSKuOSwOasdqP6i7N7rQQATK8thQBIN7vZ4swRwo6eZAa6
	 6TO+Sc5UEefHcijW7omYZfDXKyJ/dwbrr9AtXm6XeE6aGZ4PGJIDDTochVBS6X0fGz
	 HaXItC7/iqgGMdlIseh5IXSqECp6D0F1FdlJXzk958sf40kOPAi/YRulM03Q5d63LX
	 2iExdIYyEbVBZgndlTDC6CdU+JJ1AgPddQXgjNs5L8i2GkBlHpLlP49EuPB40ztvVE
	 JF0F9WfwS6IuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9771CC624A0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 00:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177171869359.7426.13669100789259701017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 954fa15a398f14671876f9382c78273737a23894d7afda9dc4765a80ceacebc9
Date: Sun, 22 Feb 2026 00:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771718693
