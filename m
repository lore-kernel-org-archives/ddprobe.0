Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5B605381E
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728662753; cv=none; b=k9zfqNlEvEmIkUDBuLCjA9/PZUWsLpkeHcPT9dsLO9nuroE9QN1bTOoSLeATo6/NJ/tRH/0K50Nl81Njs5iNs36dHSLM4eTSgNQcAAGioCZ1RNh0dru9ea2xTXV3Gv1MQaU306ZZFkZFWaJ3rehQDTGCsKY0e7W3xfkye0rrduQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728662753; c=relaxed/simple;
	bh=wcy/4OQXrIoHdo2pT6e2DfWFTu2tY3qVXYAjRfSpnKY=;
	h=To:Subject:From:Message-Id:Date; b=D9mjw/rV+3IPCE9Hc/MdbQv9RXU9zrJcH3WxBA+KqpS9NpLKySrlldQvgIKNbvohPz6BuH5/9k+Tg7PsP9Mjbq5EQt2mn3BP0KmEUmn+AA9+eDxVBPSM1BnRq6BGDyn0AYBKQKfjos6pcd5rujgGs1PSYBxLCXSpRacgx/M9ntc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KVIMxjgy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KVIMxjgy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB033C4CEC7
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728662753;
	bh=wcy/4OQXrIoHdo2pT6e2DfWFTu2tY3qVXYAjRfSpnKY=;
	h=To:Subject:From:Date:From;
	b=KVIMxjgyPyRhSvRjPV5VL4T+RuXUGAvqlfRJC08hTbrTX2v/DksF9AwtWe07tl7z0
	 dWDdZzqbVm5/tgNRUD+cqjbEJdgu3tQsTgmdahZLqduxJRhiDFfHHCXHIRNuc9OPcr
	 QSPpApJyWiwsjQD6GzIR6Do9BZDjYwTTbmiiJL+ESTNCvskWuv1moAzfi+479b7YK8
	 fwAUiVM1NfrTP3gMcRgJEa566lPhVG2r2Q+SGqOIR452ADbhHjS6yWQNpL+DVTH/o7
	 xok+T/XBumR4bQCvbxJnClAi+iaHwnO7VoOtPftl2xeYutVBFhU8td6ShevEWIPFj5
	 wQ2F++F1hLk/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B824D0EE17
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172866275362.6144.4786609182501288024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73dbcd71ed8d43d9bfd6b5bba50eaa86d1f24b8d3fd2c56b9919fad8e2681d5f
Date: Fri, 11 Oct 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728662753
