Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48244F9F8
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726924554; cv=none; b=HDvyZC87VOuKx284Pjpj9I1DQt2pvSM+tVqsmjQ5cxkzV+yg4B6d6jCCCmoiAMZcWtpeaNye2GaqnG1eF5B4bjtYBY+Ggsx8D0rwxv9DOE2JaX5YxvgFvJaCfahLI+fZXgrsY12lZPmpx45cXTIFZptYhYv3wG8DULnwrduywCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726924554; c=relaxed/simple;
	bh=oRa74NIAM+/PkHIdC5KD+spUwjpecTqPt0DyM31OaZo=;
	h=To:Subject:From:Message-Id:Date; b=EGGhp95Dsg1fVtVng6oDQDZ1nWRHkZmawhsINuHA2E4pHWM0/Fp3sXa/Zn4r7gTurVYKld3U0KJvOmsHuBSvjkkniu8ElOy2rBH+rrJtfYZXsd1TcVrNLz3NfXzynQlRIDTEI2dO9Kbe9hDLCpjIy2CzhiEjNKuKPjheNrayGkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uj8w6zcD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uj8w6zcD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDB08C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726924553;
	bh=oRa74NIAM+/PkHIdC5KD+spUwjpecTqPt0DyM31OaZo=;
	h=To:Subject:From:Date:From;
	b=uj8w6zcD3z5GpWgvNkFvtukHMAVIC3fk/eDL13q0fZC55NZPrDP1fWM2URh4kZCUm
	 ENIQJk5AmwPsdif0ccAQI0i3tO5mTTHDDeutOBAGqzBxkiX9cS0PwMELuSgGwt4aKs
	 s8yD5GLnxZV7St1FShpkH3cFVUNf2VoT4nB3/SUVE4A2XorvD8lDhlKTQQCijZoWv/
	 w8xBMy4BRcv+x7OcnFqAgjXS86yB4tkTYRF3x94SCygYZG6W4qT1Czzf2MT9qsBykd
	 FvF9IvgLILAoK1bbOrXrmXzgzE76OSjOolhISrMu/aM4yyt0gb40qXP+w7N96px7a4
	 9fWnGfMJLncrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0882CF9C5B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172692455363.27095.1549312854542883570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d58f06945ada531f8d7603da1ae0ebaced01fe6335fcb7d0a18dd85842daed9
Date: Sat, 21 Sep 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726924553
