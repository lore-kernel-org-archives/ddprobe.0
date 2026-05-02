Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D75922126D
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 14:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777733854; cv=none; b=DmpdfdPzwlQfet302NmLgV7XszRr35DRK9fbfqfKEaXLsFXStSlYeDSZthIjb0aSmn2munixoWH+zNi8lTwnxlck05Ks5FnO4IkRtJ+TnF1fJF+G8Ng8NlrYN+biCEx3YdMa6cUe263ckZmEf5QTWj7sKVxtqQfXqsTmvbmneQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777733854; c=relaxed/simple;
	bh=aEb5XtVJ+K8aoduLEt4v8gdhW7v6Sg+swZQPeIVdg0U=;
	h=To:Subject:From:Message-Id:Date; b=nvYc/w42SpMx170fGc0yGr7Fa+ULIjrjBNneCKD9BOpuicH8xBPnyjBwAsUmuuFMrgysuh8bOK0a0JFbDAGO1TrlgfzzKupVSnaS8mp0st3vy8cTm76IwsaWwh5IGtbsaOTSt2X0uZ37+ue+lqmNZGKmmlCPbQmOryf/1bcHIv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FU3X3S95; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FU3X3S95"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDE98C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 14:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777733853;
	bh=aEb5XtVJ+K8aoduLEt4v8gdhW7v6Sg+swZQPeIVdg0U=;
	h=To:Subject:From:Date:From;
	b=FU3X3S95S+SCT9aBBJrpwyiCIxMfOmedNKDKrfuvLdgwS40X3dQezhOO5lPdTRR8+
	 wNT63jtAv8qJzf1KbSDek43QbHEG/0DX9WHGRF4AB0JnSbygkrVsYPmcgIbLNUVHn2
	 giQzocrUW9L5TE30owFHQ4jVIDuoiMwcypQiT7mgLaUfCKlOkNk5JfrVENdM1xVbTw
	 E9KS3dJ/dTX8ymvAiEed3fn6ozAKpiG4pKeVNPY5td4/yr1o81TFVoslFKRK62jsgs
	 n0pQTRhLP84yhGnIiqkx1kd86eSAQmZt86b1BJRtBDAbu3yudPOlLKbj/B60Y1vXYM
	 6MDq0Q9cl+QEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC825CD3423
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 14:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177773385368.25710.13937737854058608920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f77df2dacc043de35bd77451527b0565a1ceb4c876184fc4d6e1b0b23b769ca
Date: Sat, 02 May 2026 14:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777733853
