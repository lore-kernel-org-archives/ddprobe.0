Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1CD2DEA84
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756930194; cv=none; b=IEp3Fr7UOAXnVCNaPOXxseIf4wKfz/vRkwl2a1MvvfinaIZrrUc30IsycC4TvAMSRFP1uuqMAclu8sFg9PrDPShjoJTYWPHMwbSP3a87OZGbutD2Y5qltzGoG2UIrN8r+jZX9+OdyHDy/7cgii89Qkqafb4hXMf5Ml8oGTHuLh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756930194; c=relaxed/simple;
	bh=rX4pm5g8rtllVZC2669+sATJcAsmfEmAeUHyNGRXCKY=;
	h=To:Subject:From:Message-Id:Date; b=uZzEUV60za7GTOxpomYmm4uXUedgFaaUYep4UuYk1wf21E4I3zfQqRdyoW0yIky00xV3TgbWDDIyDxIZGXe8cUxxgWBOhEoW0MVqg4lb9QzQgwLpSIGPa22PxmWl7PIcNDnjJPgb3mdp1xcH9qAhizVQtkgpTCvtud2weww6MeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pg0r9NaI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pg0r9NaI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBB6C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756930193;
	bh=rX4pm5g8rtllVZC2669+sATJcAsmfEmAeUHyNGRXCKY=;
	h=To:Subject:From:Date:From;
	b=pg0r9NaIIeBcHNKhmO/GZT2VWEGfu9dn1Wwa/A2B7t0GtkXaY3Hz0fllN4hn9jj6F
	 5ja85J7JEo+bRErPByrbYkdOSTSpfogo79sYkdeXrlOSo1vHY9sBDd2cBiWzxuW0q8
	 DONF+Pvcuer7NmRmo20++KcGlL0zUssiakU/V+IrIqmkhpDaqowIP3YEWeIGuLWTdj
	 MxuxJ8ZBY01kDE4z6D0LSEX5hE8SWaDIYrQck099Vph2jgCWaOQQERmJuuajehH7Vj
	 QHYhADPj4Du5HTZlVOyYKxzIibkL9sZO5rT3+F5N/oVV+hPERIGLrgziZuOEr1jF8s
	 9D+NkWbxdBquw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961AACA1010
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175693019359.31726.4952279633582348730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af84e81da464341e93328ab21bde8e7d921e770b1fc800dc6abe956cd810cc0e
Date: Wed, 03 Sep 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756930193
