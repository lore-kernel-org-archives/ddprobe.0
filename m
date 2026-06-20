Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6F919D092
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 01:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781919394; cv=none; b=Tl+BViKN0IgXiBsiJjaGu7HnW5Nvy4D7+pW2lxrOQ4AVhT2EvZjLoxOBtedLBGyBoHEP8LNf7Wqd8ZXnV+NmbilCQ/Ny3/3oeEE0+dNs755k4JBFPTcPSNfMpEn0geOG4Uovo3TpRPkAWpjP2trLtqnOAFY75xffYtgnuNydVcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781919394; c=relaxed/simple;
	bh=Lw4BlIFBlimrRO0Z7kow00MUyOhjJmnxY4ZbofYjwDE=;
	h=To:Subject:From:Message-Id:Date; b=o5DjPfyfu1+WSqpyQV+gTtHuXRJ3wbLOBftr++pfqZU8U7UlVepL0kbQlxmAe/ZsIQ6kHTbKm9HYw4AdLzJIAh3DoRYMspCssE6womOBpyQ0il+Xs/c1ZLAUpnpuUONRP/0oey8h0RwmK/5WC2nseOehwLPY1+KY6LceP2OHdhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hfaGzFX4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hfaGzFX4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C74ECC2BCB4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 01:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781919393;
	bh=Lw4BlIFBlimrRO0Z7kow00MUyOhjJmnxY4ZbofYjwDE=;
	h=To:Subject:From:Date:From;
	b=hfaGzFX4fzQTTFbFSv6kSVLTaZC5zxPnNvuXV9hP7RjxEOgjV7+m+3A2aqSRo/DAT
	 FQ/oBhALV55/Kib5AHm0m5fw61NteAANHED30/JxoKmdG6zz+y2jiTFjsCV1LBMD+E
	 jlfCwRI9ivuoQ4RukAEdGb3UctBKKhHvY+R9BqWUTOcXlPdOoKgBeQUOPLw3ALano4
	 dcDGvkUmVBE5OU1O2LQco+PHeF8da6gCqX9MTgooWlrnfEmW8vBhDcuAJ3yIg6ipLu
	 36lC0begj8IOTwaIDAd+8b3YvQEC4pAbV+BdlSuR/B3l0GsXTohUlunREeI6uq9wCh
	 pp16m/LtrW/FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC843CD98F2
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 01:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178191939369.3614.6566015459907062112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b97382292a1eb4f1d5a095dc629c1766bc6509c7f2a831c6e5b2295c64172448
Date: Sat, 20 Jun 2026 01:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781919393
