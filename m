Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B7472AE90
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737774954; cv=none; b=Mt/6L6kdXmFRaGvaM0KnJwEyiTchd3p/uDbxwZN6plYlBK+o9p8hGruMjOXGNfxorn0CTQC8rfOm8uWQkunez1DgA7QO0b/I/g5DZc28u2yUdID7doShW3IliXkXdE4+5gz5GCjUo2+resGPW/ksuO10YwBpDA+PvSHNVs9cMxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737774954; c=relaxed/simple;
	bh=gVDb8K78S3R0qKU4PzTqFVAxEzm/afUJmdX+kE1FW8k=;
	h=To:Subject:From:Message-Id:Date; b=Y/sx48x9iJEiw1MJN9JulZmGI2BmqipqTll2OXclJeiErFJL/HQnGx4jFwVvBy6Dj+iF0pxbyOtgN2XowV/nBn9NI4HeDUSeCc18TdzdECju8BafMJItE2OOnpfGnqIQ8oipTZP+VYQov9yyeCVbNlCZIr8GzD+vazGmUIoHSaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cX+Zdg4S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cX+Zdg4S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B09E8C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737774953;
	bh=gVDb8K78S3R0qKU4PzTqFVAxEzm/afUJmdX+kE1FW8k=;
	h=To:Subject:From:Date:From;
	b=cX+Zdg4SQCjDkcW0LADxbQCVuhVXqNzbp07P1f5eYDTMtIqf8QHrcND5rRzPnIsWa
	 mdcQWnpxwmj3gEmlj/WPVNC7tnltsZ/1dkYJvGsRM8e1yKh75Wu4QJR7V4N+ZgLXUV
	 kAWI99nAe7fo7Q5rqXi6JmiGicQG+qYnuTXw3N4VgXLxcOTbCwVDTFAt5x1h//u/pP
	 lnXPErth5jyX8FBaBFuMbLCzBs2rPDL5e83TBJjMk4zWv8gsV/ZdZ+CZO4Zn1W12WS
	 9byP4XFA/vIbgFMGAFBX9S7t+Pxv6xM8srM6SSBVExr/0ZFGx28fntfi5IIZPkKUSp
	 X+4wJbufamahw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A9DC0218B
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173777495359.31375.10785823256847147222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15d12a93438d28066b59b21c6015981742f3c833c39dd4f650387f8d260951d0
Date: Sat, 25 Jan 2025 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737774953
