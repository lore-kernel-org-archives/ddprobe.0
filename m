Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3795D2FF157
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757011194; cv=none; b=F7lRD4Zkaxl3KocW1Dj0xw435kwH833/m1AB4It7pfkUC6sw7slsJpDTXLPiCR+rgb0NyBDXhA5/3wWOvUklo9SNVdLtgFXR8oCxs0z1OoixxkLSvW/aLL2b28HdiVod5cDQbsYeSLq7+J0FPdtOz+6XIBQlnDvNfOdkXWgElT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757011194; c=relaxed/simple;
	bh=Wf/bmUrnAYQaWhTzzVVMnf8VDd0AEPuxkTusbWSn2AY=;
	h=To:Subject:From:Message-Id:Date; b=OftBRUaGmrWg+TOi1rKzqoaSwNZOf+8ufLfb4RfmH55UCZzaX+heDgwr96/B1ebYGTBvww77glcbwsyPQg2mq+4jSZn1cBM9RtAyiuac8+3YUrPf5W9Qx7t2Dn7Q8mJnodtv+AhmlHRg2zU8Dc4J46y1LGsv3BJNBOw1vGz0Sro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hgn9SnAK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hgn9SnAK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB1FFC4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757011193;
	bh=Wf/bmUrnAYQaWhTzzVVMnf8VDd0AEPuxkTusbWSn2AY=;
	h=To:Subject:From:Date:From;
	b=hgn9SnAK2T7xpxZerwyDxr9VNYh2fyxQeVXHi7knALorigasf/XpLR0ztJwWBnwkY
	 zKnC4tFtHn5JvITBHVnIRX9SjL6QHmmvqJPh8XQ8daGdGwYQe8vu/GVHAqxK7GX9p1
	 yG2KmzFmYZW0mUg2XZpXmki28lveegrrb6JiEUM+J6iFQP1kQ7T0jbgTc9ESPKISUy
	 /HzplT3arKpHINf4sijgInKyhKxHQovKsZHvNCERo/6FS07F6B18B9oEzXmRboWir6
	 LCQtYhYhiFuvHgVVivD3gYFRubNw/DjL8nYKboIQdBKD9vNQI5wDsbOFWBIzXvkWMQ
	 LYMe0+n+1lC6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920D2CA1013
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175701119358.10026.12018544061441537217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7311dd1a8db021572a7a9e4199b1f5ab04e3dcd4f9dbc33b3bbe975b91d46ff
Date: Thu, 04 Sep 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757011193
