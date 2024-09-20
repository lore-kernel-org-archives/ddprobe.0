Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2880DEBE
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726854954; cv=none; b=G6s+r13jiIqBzTiAw1gHHMOVrNjZNcAG9xqn20EmouHLtUKiKXNTOBdZWsoWX5U0OzWk7ulDYqb9+gCQ/Qv7kvknwYhmVN3sZBtrrurH4Q5SKUiLIklL7LIXoapA+bw1U4QX9SEapQikjNE7frkr6kA4YAOEOog6yC6JUrpsAM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726854954; c=relaxed/simple;
	bh=puZmzZgaRGZjY+VwtupkxyHVAOcq4trIdiyMI4cDJqE=;
	h=To:Subject:From:Message-Id:Date; b=dHXa4aoRCYjKYIJ3NPnHvk9R/K/+vCgs1xeu4E9Iu7LZlzW5UnT+LSqqH8UG/4Wn3TmrNKuj7M9ydPkfodUAP0xCtxKws/DIzIoP93VUJwB/Synmq3QmxCWkZtn+VyuCRSnuOZ7wGJw/sN9WQ7nbu7Ny8xILg13ohUX6leJLcU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ltyFQdRd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ltyFQdRd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CA1C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726854953;
	bh=puZmzZgaRGZjY+VwtupkxyHVAOcq4trIdiyMI4cDJqE=;
	h=To:Subject:From:Date:From;
	b=ltyFQdRd8X4AveoiIxQGo7YowupM5bNWn6o60YplrEUbJv0rTAW+4yYbd0PbyulKU
	 SFjuxOYbbTkgGjA5F16hvmDU/UxaqtRCOj4TTelijnJN+osFZGL73W4R4tf2ab+fiC
	 k4sjtibo9T6biC2pTrl2+iHoA9oGVfLdjpMMm08eyi62aFKExETplqDHNNeUPh6/Vf
	 vXgprOVfTjc4OENCCLirDvU3die7gGRtH7vcXc06dUxX/g6ouG6YnF/fVSmIbTXNsf
	 Lu6zM5GmLX4o9TwEojGr723k4R1URxj5LgpaThQi9Wua2SrHlG06XCADpt8AHKJAEg
	 A4OQH8wzCsREQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E75CF9C60
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172685495359.30881.12656420690573758942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 251f47af91aba0d312922f761cd72b9e307e6a17d93da7b475aacfca96de0650
Date: Fri, 20 Sep 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726854953
