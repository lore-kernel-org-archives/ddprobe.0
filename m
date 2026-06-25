Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56FD22E7394
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 15:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782400054; cv=none; b=shUPi1joOvX2rMNCWY/SnXYKgjfFOt+ANuvQC8CQ/MmvBzDhOWol/XDTKLe95iwOVtasqeM9Jg6nQAqw0ouzGBQ//lE2Y5F9UCI6aYcZ7X+OAX6F21E7SDEPBfGGMbqVQWk9H/Z+o6zo5+nYVeWKO5Sz2a5t5wnxQ76Fl7O2fRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782400054; c=relaxed/simple;
	bh=EM/0MC/uBLSp7T4WCwOR34xVmz35+K47kdzSfSgRmGQ=;
	h=To:Subject:From:Message-Id:Date; b=ZHmCd+iD4fmGtFZSu+XEnUtwnCoQePLaz1/leP7STSXklYfaAT4i5Ik+lTpXsvvMNg8O//JArGxW3TFh+qba+q0QtVGsU51Oe4567lqcIHM8CEbzEzNxgnWYZ6pChPmY7BXywqjCg+/aCYXJkFx0/RrfbavyRCIDQdDfc105tog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PJw4xeF4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PJw4xeF4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E84FFC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 15:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782400053;
	bh=EM/0MC/uBLSp7T4WCwOR34xVmz35+K47kdzSfSgRmGQ=;
	h=To:Subject:From:Date:From;
	b=PJw4xeF4u39CHPnKZAwodA9UN4PxKYFYc/sDtbPhE2X4KQw6O76daJfm3Tf4kLYDo
	 +U5Oz1dB1a6pnUdaZaxqxa3uPvtdUcSkRdfgBWVZSFQdspC5bTQrzdtwK+sXhWj2f0
	 SptihMl9441MHMJ6KKXM4ixom/CvfcBL/7sGPWs8GxeHJCE3TARqeQdg83zjZRdE6K
	 G2ZAI/NubsM9J3W3IKk6ecR0iMje4OpuYvG98bM6IrtoeIE2gAglVIBmaQOFlVuf7o
	 aNO5I++p7NeD56TOfNy+bZ+xSyKzk3/v3jFPK/cKSLsz+O4QFLz8nwIGj/EIqhSiZF
	 A7RX/9Iym0rPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA4D8CDB479
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 15:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178240005374.14156.997509721637890013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f30f7f3e45b296663854233ee9e289dac96eeec1970bfd2608fb63b522bfa8d
Date: Thu, 25 Jun 2026 15:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782400053
