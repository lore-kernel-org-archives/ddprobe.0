Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 069A51DE2C5
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 09:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739956134; cv=none; b=fR3UG3i3uF0sh71wGBw/aJREOF+lBpqE+JH5caeGBX9sYeE8Q8TFa08e/Naps50zyzdecdsivTXXo4JHtlNW35GRFV04DxGP/bR9OtbgbNyUMmvWnmRcCrSEFYQ8UpGReYaVLuyg30Na9IR4p8f6te2W7TIZx2PfCjeyof4xB4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739956134; c=relaxed/simple;
	bh=EA97LAh/4RE5vTwVHOhr47VKlTHz7eAP8TSrGSUcVRI=;
	h=To:Subject:From:Message-Id:Date; b=odvKwacPrSTYjNWJylEsld159ZlpPimMIbhyAWE1rqfBZa+ZmXppAlVZtTtWs91OqECGRXw0O1yrzDvyML+H5C1Ocb1/iU7F+jDAvRmD7vpGqdS21Llna6BDRZxiI+uOfXYWEpa8eoizMy7ahu49kO8TqrRd6kZ/VeClXZG/puE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T2mEdk91; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T2mEdk91"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCB6DC4CED1
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 09:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739956133;
	bh=EA97LAh/4RE5vTwVHOhr47VKlTHz7eAP8TSrGSUcVRI=;
	h=To:Subject:From:Date:From;
	b=T2mEdk91qGIh5HCl3g3C/pe1RgcMXpUP7fAXfTSV27/fFVOCgxAEVrBi1PbX5tVxG
	 D/4wUDkHEozsKG+HYhhGfOPXM5aQwRqnDkOZWMK9n/I/qvIGdQuSqfMFKLFUWOmESZ
	 dEcFqQo+YdFPudPG8ZPly87MJ1bjkHW26DBclFc2b0fzRYJJCqR6zHD5IYFTPYdHhD
	 IrlG4OTpHrv+jXCauxEIK/l1YZEKgPpkLsg0eGnd/X+gqiSywq8upbzM7G4cEk+E3C
	 csEzskkZd+dg7hUyq3UaczucAAixcCALWDQ3hRwRPJ2fp4YLx9sQ6bUpr6/0iFhkwh
	 RwaBoo/9XPTSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92BAC021AB
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 09:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173995613368.17168.7717923943100058060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2c26770a765a88d24f80e24c758a2dafc7d206663674bf826c7a2544f947151
Date: Wed, 19 Feb 2025 09:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739956133
