Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4706B340A57
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791736834; cv=none; b=N1HHzBbSJuDzd2K9hMU+DW4vQ3AG+csmNerYjnYspjMoF5s0EFlZ1ovTBJn62FqNBDiUrrRHOaV5SwWF3qnetgOWeJZqeYgaC8V0KkWPsAbVDXksxUg5wGPLxH16GTf7zMeiZws0hiXqbBUXB2/JP6V/BRqsSLVsHGonPo6mj8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791736834; c=relaxed/simple;
	bh=Fnf4XGksgogqHspZQgjBW7GyPVZOPH08zXAdBPu8kn0=;
	h=To:Subject:From:Message-Id:Date; b=WsN/9MTttYBtyY+VgcMe4ZWWlb+JlEp0wFW4ZCqychMTZho+BMKRTzL9e9hYlfJvzTwItHDpx7m+hXAb1fbIWZn3wrQzOyCnRITaC6urD49k4iMYktlsIM7F//3bNgU7jz+FauCRimbQ85swlNZZ7dsikddwNjsMJwH9WxceKA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G0OATlw5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G0OATlw5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBEAAC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791736833;
	bh=Fnf4XGksgogqHspZQgjBW7GyPVZOPH08zXAdBPu8kn0=;
	h=To:Subject:From:Date:From;
	b=G0OATlw5Ap541AakwPxag/buidW167QwxpoADGbVrUpsYnm3h79cFWwJhBNNv4VJR
	 mm+dubPY44SJvGympaLMnwZgYkYTJzf8fwNXxIoTJ/pxLYYf/vXvTcWBisID4irpBq
	 91C6lQOSL3tAfcRuHcJT+ZBX0vdjqpwVFChbfx9Y5EfC1oyWhuX37h4p+F1pFIVEay
	 5yLW8cwVai29O3MP7PO/SxJeLskUU+YC+mE3gAT9nglVNwNrM+opkvT1x0ExzDueO/
	 2keP9MgQThAb/TgVn4wvo/EbH01W6yes4FSlOYwAjSnCnu++FgbB0KtimMwp/OlEPF
	 vQ8iUfMYpy7/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4ACCA9EBD
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179173683368.19174.5767531417765659851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb8d304c845179d9f0058a9b015b07f258feb7d4c1de352fdf923d8332e38a05
Date: Sun, 11 Oct 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791736833
