Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00A8C31A556
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 17:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779729154; cv=none; b=SPVsnDyHqriYnwsN8cn0LDGkqLKfBBIMb4psk6UPwadQH+dPSz3dY+uEKZ3EwJfNJgYsvkmIhhNWVQaL0b9M7daV65A1AtpdvIgmWCV3h67teGjjQtCjuUuYrcA/kHuoObN0k/P819emI/IXKnimW3V0yqmkxqr5vRl1RRA9pdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779729154; c=relaxed/simple;
	bh=JjRP7cpZiD95WJm0hiPishrLqWNUgwhW76sTcH6gBsc=;
	h=To:Subject:From:Message-Id:Date; b=c1CzFfSxMybUSU6Pm4DfLUFLlTX9xhMMz5H6VDdp01N3awL3YXW1K8Mm7n1SgoRc0qw7L/3zJQULEq3JCfroBJ3FlJV+MxUESUejkk1fAa2r1nfx/5IkpAmGG464WRDB2vE+EFXxM/iWcmoolhP/Cj+zrbE/IoBiLE63h8XPJog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XBlU/DhX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XBlU/DhX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA266C2BCC6
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 17:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779729153;
	bh=JjRP7cpZiD95WJm0hiPishrLqWNUgwhW76sTcH6gBsc=;
	h=To:Subject:From:Date:From;
	b=XBlU/DhXgP2diiFSCBCSO9pxw/AJbgyH0aspQPlvKIE6CRudcVHAl1IIiwoLkt4DO
	 PNIvhBxOFX+1BrtSPBgYXN7FZJ5rMmJN1gcSgRp+XlygjAqKapdVU+h1RyT9bGlYKo
	 3gzrSovkKipPwqQemGCLA38Eb+YSEWE3aYiDbV+KW0x5M7ktFzNXNxrICBXselcFva
	 M0DXDOYHaApmjrhldmB8CZm5UY+0SRBxM33gXa6Je/laCIQuyRQZR7oYDIdS/bIGjQ
	 zSmIadiJt65TU7Txe51nEdu209aWIB4hSPPiZ/45XuaHoX9VA2VbuTMOwBOQa+ty/s
	 KtgYySFzkZjlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EA9CD5BB1
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 17:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177972915368.4757.11182599075137513853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23af26644233f63bed56ef9b9dc34499ef4599b41dda1ba5f5426a73ec1ee016
Date: Mon, 25 May 2026 17:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779729153
