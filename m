Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6954923BE
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 00:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713056363; cv=none; b=sUBq7vQRfTjoERwNCaqY8plz2xOYrnVp9clf1+E6uVl0LYUvl8dNhYFutxb6IEGhUfXnSbvgtwPD86B3q5Bi6TVHdknrYOUOK3W3WoVlvuzSOgxRNWnks53cWg2foYODGbFD8Oe9eTCtu9YtdqY3txdD6Z1DNo6iGAxC8vO6q0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713056363; c=relaxed/simple;
	bh=foSA25VAd+TL5vX/uy2wlp4eIlN3MK8oPfo9PmtFqyY=;
	h=To:Subject:From:Message-Id:Date; b=PEy5Cs/wp4YIoGTW6d68rW6QbU0/yJgAC2JRrRYjBg285kqRhMs7jyJBwLQ8iDH9afUJ8rUDkB9xfmpjLl7m08fgzCK7PNarK9vZ4jPtTPkJtFfjs/ibpdMVUxcCkBxVvXZlMOUPNeJdo3PwjyPD/c41JzKJ9G0YaPLn4VlAREs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QCcObWs5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QCcObWs5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC852C113CD
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 00:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713056362;
	bh=foSA25VAd+TL5vX/uy2wlp4eIlN3MK8oPfo9PmtFqyY=;
	h=To:Subject:From:Date:From;
	b=QCcObWs5o4OUE2OazrGtZPnVdP8Wq/3WnCN0FUqU5negcnP3tyWgvymaDhy6nepBf
	 gY2M9OmGTCblfmODdCYKsr65fAgNYXlGELn1OWGjjz8jcdUAE7slkK+JdCmwX8TD1F
	 fzXQ7zZoO+Np1Vf4eU3M2IQNBkN5CZ88rzjZV9uV22TuKnTQ8VhaxjMAdSoC7raDHB
	 txIDwz9CR694VLJfl4EQDIBmPJWc8xwlzT2nnIQzhZLNbdUcMi6tXo2ft9TkQg5xfM
	 jszWDYz1aDREAUm2tFXQe9S18YwLL3Yzqxu8Ax6Uvqq0+wfoUiWDjflurnm4dzWQ2X
	 ZbPhyCaUcL67Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7662C4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 00:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171305636278.4132.10792901844765516918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97933513abc73a0eab2b4a73403b61ea2cf6f9f1bbb46452f75ec2749049b9bf
Date: Sun, 14 Apr 2024 00:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713056362
