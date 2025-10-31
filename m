Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B28F2C3256
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761886194; cv=none; b=fJBzmO5LFhCB21rEMvtolJsbqIAm0Ow5GyaDmsKPoYmdQeE3aLlEF3k8YGfqskorZhfTW9x9r98vXdj6l3IPtwvd994YuxeT+9amnTG+xM3hulyo1reqtCrUMFKgR/JzMispWI0GLjqD85FgIEMYGF5HszOey7LcwRLhTt3FcD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761886194; c=relaxed/simple;
	bh=hDvRVTmFRgM6RjBAimaQhzad581hFF6eykmjEw2d0Lg=;
	h=To:Subject:From:Message-Id:Date; b=CKIi8mzbZs421dApRMmnK4ncMrgpIFjoHF4j9ZIOnKPnXUtCz+ZAsWPWc25QAEDy+L40d8ixuvUflL8CWVBP1+fEsS2ST5im8xi64Y7N7tbkyYTBcPRgs5eicQRSuaY19AaiEaTGo1blnUkJX7x9Erw0FnU+55m9IyzjQcHEs+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bKWrLm2P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bKWrLm2P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6223C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761886193;
	bh=hDvRVTmFRgM6RjBAimaQhzad581hFF6eykmjEw2d0Lg=;
	h=To:Subject:From:Date:From;
	b=bKWrLm2Pyht35zmjjkx5xseHfd9IYI3pnyqIe7ShL55ug14UoM4GpYuBFafmpU8G0
	 hh5RpvwRD/mhehUSR28wqzc9oJWdLVtLYNBI7vgE7wpgito4Ge4h1FNHH1MU85h+vE
	 xogK0zaIRDrmlQRuOGZ7SY8OIuYFyRVPyM/Nphv7Vc96lR38D5rPLgU0ZVDB4uQt3F
	 7MXSw47byZ6CRAM7pCfTpfXR/VdotM89wnS1zkRfLSn8+lyleVbjqKLpdLIhyjQm1B
	 UtWKSmmN9pVV/ESjawYxySS6Ms7hRm55fDNurzgny46JoOihdyyOy0uyaLTwVfRiUx
	 TiXappagvazaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99361CCF9EB
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176188619359.32350.14911161380322199617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec0254928360c49c4b4ba88a62af8e21e06fcd523c66be3172da2bc73f6c47fd
Date: Fri, 31 Oct 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761886193
