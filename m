Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219328F49
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 16:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764002514; cv=none; b=gie2PfOHSeth1jmL+rNN+/ge3DYNazr9qm2f+5wzC0VQK5qN/v1aGzT0cyv/Vn5SrjegJ7M4hErIJOH9LxDYhyDsHDbnznNa8jbTV4tqg03WeFnPncXabWVxKQr5DJSGdUtqnqqt5B/FHbDKnpA5g9+grYVuNmo3N/+Wv7QTfgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764002514; c=relaxed/simple;
	bh=KmPf2R8wein88krP5QABlBf0cJqDTNBsNaBbeqnrFvQ=;
	h=To:Subject:From:Message-Id:Date; b=l5Rmm8WVcXnVPHjlsPOkVjvBtmDfAMCPGAgkOqjh5XekzG4zncRYnHfxuQ/QnR72jMLV8Zvssf+5x489Ap8VSx9Q3GWsODjfaLP++E475HPm8zCw6O+vgHHkbAj+eqJQP7nQF3yvGE3nJLEeyWTJ2rLWogGzMx+U/8KgjLjjDaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FDpDEpou; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FDpDEpou"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91C6C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 16:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764002513;
	bh=KmPf2R8wein88krP5QABlBf0cJqDTNBsNaBbeqnrFvQ=;
	h=To:Subject:From:Date:From;
	b=FDpDEpou7Q0J5U+K97gFXsuyo0UDZIl15USLa2U8dwAnJ5QUagyKXNqU7a1eKMg4C
	 OESYUiA6AQe8MIcqNcUQx0fb+nIH7qkR6/SoMSuXU2TyPXVQuY8Adh+6JhgU901HmD
	 UcK8jd9tolrtFGaxSGffwgj5PN16Zg+3sHpXnEsSccnN1Am0E/M7DsSEhve7Jzf/GY
	 1R/v0WDzThHkog8htAm8KWDl+qVwk687LwYTTF8qn8MO367qo5VPDc03iRvoWAXhDx
	 bJ1VkHV5dyINwkFuK7YBd9RO7m226viX4K4lgVtZX2i6xuLv72KFZ+D/jeReHaqOOP
	 1D59P5woZ8UiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99338CFD318
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 16:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176400251360.9509.11198665232471209815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a64c5a0908d6e7e7a763db760aa2b8c63c207179abfb932c3b77cd0c6a4c13b0
Date: Mon, 24 Nov 2025 16:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764002513
