Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48F951B219E
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733430954; cv=none; b=SB1kOj8NX/CFzNa5xx2x0XdCp1ykl3+1SCkrgwk3vi0mUXqbwlwsFKrawPJIhkEPR8Pay8QpKfnn4FA1fbGz25vjc3k/MHmnEh0e3Zu19HCAYsmB1Qn2nJqPQwIQ4HN3fpM8pC3qR+u59NhKGZ9bXmm2IH4/qIvCjai2v4B4k1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733430954; c=relaxed/simple;
	bh=geyhzOAvC3ujCIQ/cd7ilR11K1kGxfOsaB0QH/6IVjg=;
	h=To:Subject:From:Message-Id:Date; b=GYJCtpxo7+A50jpZvTelhk9PkfSsHs+kaMxijnR7S7S+Ggn6R2QrWqqQuJzGgshB11INNMTKe1QgeSEi4UeHAiI66h7iX9h+cNOk8d/USOZE89eg0hABVaMCEic6akBUeIAngh22obCV5NwFxeGAlNCdleIftAajreNIbrEYfzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AbEUwqgu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AbEUwqgu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC5DAC4CED1
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733430953;
	bh=geyhzOAvC3ujCIQ/cd7ilR11K1kGxfOsaB0QH/6IVjg=;
	h=To:Subject:From:Date:From;
	b=AbEUwqgu6sC1bcBCqdTmAms97SIGHrMbZvGA7d4wqlEsSwFelDvmGCuIVA/0Pz3JA
	 J1WHbjIU99eaNY1RfOPdE2aSCDK6J5juLBC4qwWQwoy6LC9seSTrIR5aDQ7Fo/xpJQ
	 9ejz2nROeB4TFXxfA5qqy/cjwxdkZK+3lQFYSCH6HT77iThYOwiGzn9B7ImLWiFodW
	 fEHjLtjV3nVynf/ilCNTTzx2YkYVPTDqnEEnYKKAM9sNLDuKm3H6kiuCxf7xC5k/Sd
	 n3JSZ+ouT+c08a6+Egk7F2Lm69GjO+uymOE+uxGe0J7G8O/4WhkUl7PIqO5Ho7YsLO
	 5XG2+yOkuuHjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A75AAE77170
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173343095367.20901.12021988713694816896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12cee117d0a9af90c4a5838ae44f599f2919f1114618284c2b3e078120066725
Date: Thu, 05 Dec 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733430953
