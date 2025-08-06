Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224321C8629
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754450394; cv=none; b=Eidj2vCU1ie5mAlJoVrdJ5V+QQbBZQGD7/lNbbHbUTvQZBl8JhNGAA4TtB9DlXKb0ZxVqapj0QtlpSBaYikEn8HGWNND4wvhd+oG86uj2xRt531KKkWaMYcFju9CESC9f4Rhopkb03PKcmRXMp9SLsBtq3k625lAN3XrlhfSjNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754450394; c=relaxed/simple;
	bh=KT3lSaxHx+1NLAGuurdezHuPaKDxWjAq1U/9b0nBsSc=;
	h=To:Subject:From:Message-Id:Date; b=iguRb9pJvugxS/0RHI5NUhV5Kpwsw4wMpOhG71NxnzdFfM9FBifVf9fWub8xxKnDYCdgsbBMKAdO5NVLasjPeyN51moT2OyI5zlRTG3F+81cMufgw0bQ/gnJD4HuWvInPsIKplnVK3zs3GZ4ursVAAvMw0r3hadYZY2J7vjw/O8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FYSndNd3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FYSndNd3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23B4C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754450393;
	bh=KT3lSaxHx+1NLAGuurdezHuPaKDxWjAq1U/9b0nBsSc=;
	h=To:Subject:From:Date:From;
	b=FYSndNd3J42ThpWMnUo1vBiMCriLhZym/+XBL4y/QcwiYF4GkQCsTMkR43qKVLkS/
	 oleo6wnMXMJoesJqts1d2/hhJlFO1oW1WrbNy6fjpQ2X3TSQVmSM6OLmxSICyHgoVc
	 SML0NGef7/VWp65geTJgOjJKg3RLvNlfT5QwBXcchE1LmdwZF9zhNurhibm6MrSOIZ
	 lPe7CvzLPLwgU9niiuuUVur/te7vCgJSZBOuTn4EkmrZ/TOApMHx7kCbVtRBaSEvQw
	 I9gyuIYzGJ3B32Ef12gHhu8vBePDrTwwjTwWcbipKg+gFKkyhvqTV0f09uSoM3wZTx
	 8389qH7qQ3IwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDC8C87FD2
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175445039357.31041.10207446121683360286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35f4931a74f34ecfb154fec79989ad3e581746d8ea84f96c5231977d309970f0
Date: Wed, 06 Aug 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754450393
