Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2DC19E97B
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751812194; cv=none; b=Tm7oO99jRtxyH/emfEnXDt5zSLsDtmTmSgHkOLXa1qTPc+AQtRgKjZyI1vqrdeEapgvE76FlCLacWZI0TyGbJbm6QcW3+aeruiA75+3tAGj1MghZYLHYSAWOd76f+YrY1LV2iwRL+cwk61uZvCdo1D9Pg+3obhMVVavKER7xdog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751812194; c=relaxed/simple;
	bh=23KYEi+Bdz5XHx97jsife2iY+U3f1SMNBtKEhRW3W/U=;
	h=To:Subject:From:Message-Id:Date; b=OuMo5F0d5KChGkQP6f04eDJWf1fHYJVSmMB8/EHh7+ni1k+sdEHHL0Q/UU3fjFG8oqm58usjcsPdfAsWWVP3xbV6xVjaKn3B/0acjqkFxFpzBTIg4qiXwF7OkntIRXgc/+gDQkitRloRL6hC1EgZOMx2LeJ1pOd4Q1iHM3iN5wI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CpZTYMhW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CpZTYMhW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1677C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751812193;
	bh=23KYEi+Bdz5XHx97jsife2iY+U3f1SMNBtKEhRW3W/U=;
	h=To:Subject:From:Date:From;
	b=CpZTYMhWKxI4QKsLf9YCnk02Ub4jgzSN8QG84pBcfi/OOOxNxUdjr0jk90T+fc13W
	 EtRxAFPrGrEkBCMV3B+h6XUMwAGFLFL0reoHpmmKhPGY6fCbCuOncQ8PQKsfHrs6bL
	 LZYf8Tq/L3LP40CMnOsubvPJjqOZtitfinvRBSBywCPiTnPyQGzawmNOL/blO3rdrc
	 Pv4eprrqc8gNOe3peo47XB/iyCx9ZXQvwm8MI0hWE8etKB2RjNXdnJpbUXxGA9Dy3l
	 CPSUg5ctWQdFXXWXmHS9NJHt+o+2eWNTd1DrCR3kO9/pHxiw7EShUNLuknHqo7eEn5
	 C1G0wvfe4s2SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9E5C83F05
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175181219357.25963.1929042619121718001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 171947fad9349e104c0c88b4f1b04e6fa310c7f0e441f707c057f5b9b2f5240c
Date: Sun, 06 Jul 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751812193
