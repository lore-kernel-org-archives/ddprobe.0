Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BDC8635
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731033954; cv=none; b=F6EpP0Ws8TDPEwQY+dwPG1EDOERuJO33Rht93lV9cNBYzn+QbvxxHwqi22y5otzDObsdj+PLbwXEl307754vOqgDbL43HPKJEmGvi759EkpkaJHFG1xk3x89TEfwcok7nEIUDetMggrkPdwiTNm9Dg4RYsVesTeeGQkz93vH/Wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731033954; c=relaxed/simple;
	bh=HFX4xexaBxRa9KwTZPGXcnNbR19rYyrsx0PTUxkYG5w=;
	h=To:Subject:From:Message-Id:Date; b=jMSVnEAdRcKLSItCqrqk4tNn2u5F4OWnUoMOByHoeGxy8NRGzeokfZyXqASXpie79HTpJ0/3uM6/RJlKF3yjpMxxpBEgvCuwV7bET0DeLf+0qgG7jksZDdrm5YM/um2WILcP28vmXJdR/xeDlYS3b7QaVv0WbD/EKnUdFyg+Kjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PNsk/arf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PNsk/arf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B069AC4CECC
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731033953;
	bh=HFX4xexaBxRa9KwTZPGXcnNbR19rYyrsx0PTUxkYG5w=;
	h=To:Subject:From:Date:From;
	b=PNsk/arfvrNZofGEpaUum2s3A3PMdZPGh3zpmCpKrMTsIzuesOOzG4rIGXOpu3HUn
	 6rJGZA16xnPjcEvQNRGEXmYjZf/QjKEgxGZKPVuy9sc/x33ZI9cwGgBPyfdREjqIZf
	 GDPXFVqVQs0Cj4lQjmRT9DtZTB+SIStUwcmbCMuKSxubEeAL1tUXgI3PXqUZEW0pHR
	 6isXjolKHruI0kcezVVLZvhU21go8gLqR7MZ+dDaj4JKdX4ug6kh6B7e17CY5eSFIu
	 bkbhFHGL8ma+eDAP9l8M5NHXry87Tihc/O/hTWHluFO7pGv6kpr1WoOTvlKspILjxK
	 6E1GmQVPBY3dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DBE5D4335C
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173103395361.30751.11767430444834335634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f89d56e16731d28ec6152622bfaf013359188390a89348797d61defa37fcb287
Date: Fri, 08 Nov 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731033953
