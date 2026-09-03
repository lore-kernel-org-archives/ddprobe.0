Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 893ED4582D1
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788436234; cv=none; b=pyGuojh4DxIFLLAR3FzOJLWUmXTgfngpKN7ZebCh3N8c4jOtZas1X9gTmwcBjeTNRCYlKbqwAc9UnvX6sWdZznGk1/aNqM0uYvjZlb3bVPXE0TRg7nTZWUreo5uv2KgiIaxDhl5+CbhndF7VHtnoDQYOWe79n7ytIJXikr9jdkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788436234; c=relaxed/simple;
	bh=iaDoaDFVxvPUVXZGW6uP1e5O4ICy88wzdCygJU2qyXY=;
	h=To:Subject:From:Message-Id:Date; b=KL7bIkqM3flF0xt33wzzEsFWoo/Mt7rIW3ZboZwaD93nSKxUZ31lcPS1xn/br3eOU0iXmH6jGHg3cK26H2VgexGnpI8erQSDmzSsx2/FHGcl7ONysCkqsJR32tT24/ul4Uw737+IsDHTQ7zSS35qwdQQ/nRdJimIUqJ6OibOLG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QiqJCMks; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QiqJCMks"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE15DC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788436233;
	bh=iaDoaDFVxvPUVXZGW6uP1e5O4ICy88wzdCygJU2qyXY=;
	h=To:Subject:From:Date:From;
	b=QiqJCMks/pK/qEP71P0tCwlEuAj79i2SLP9ubH1LAFs4Av7kVM/0k+QkKiRBW+5ep
	 uUJVONIafS6zFCqz2RkiFWpS7cK13faAeqCf7dBb672vj1aQPquwqVAm3PkVs2kj4t
	 YAXR+GLUOqNiwyu+uKsNTgHnBR7dxnqT0I1lkysi4hHMEpmohu5D4uUdbXcFJNyfcw
	 unhJlfshqa25M6cr+ykqQZPmc6uBQO2MBGU6xa4HfOQ3+q5mw96nqLCaeNQTTj56q8
	 k4BZz2b3KQxICRFsRm8Ous1h/3QBQgGskwPgp5TF5IMc9MNOc8Mgk4Ydx7U/3x3G5l
	 JxkxxcZC7uXCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2E1C624A4
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178843623369.18402.16207969513567643871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdedf318261d897857631cff90628edbba2643eb237f54112c7dc9c0354bfd93
Date: Thu, 03 Sep 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788436233
