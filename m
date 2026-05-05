Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0EEE22083
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 05:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777958853; cv=none; b=tSNqXipGsVAOy98clmiDsmI4XvfJUnpmnOeiYBuOBIfqA/dNtwtuQnNIwvSIC8/NQKJ1dLB6/Y4D3+1z3K6JVpCb/ohUxW1KY16uVUSGH7pKlEwVKecA9CRdTsRbSIuzTOe/hhW21ZDHWbBmPFQXsha7x61uys5c5YrcstTPPho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777958853; c=relaxed/simple;
	bh=kHTFWR8+Uu/ytH3APBjTu7PurlsgFa9mxlvSCQdnmn8=;
	h=To:Subject:From:Message-Id:Date; b=JqwOYdDYRWfTBi8vEhw74mo1VfS8Chc+Od9AGAbVR9TZBrzhDvAn68tRI8hu/SwCYHJiw6zeWXamvXneRZ6rK27AVDiTS48vphBej60oHQZZGtkbNrCmeeiy20CYMjYQx+D+7JYHEDMdbU9qL29iQsLp3vDXlPP5Fzuwd+0nSuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T1Zle2jJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T1Zle2jJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7B3FC2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 05:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777958853;
	bh=kHTFWR8+Uu/ytH3APBjTu7PurlsgFa9mxlvSCQdnmn8=;
	h=To:Subject:From:Date:From;
	b=T1Zle2jJSl4ls1D8/6c9BanoDPOqIEYWI+DmrOj2JVSKXieD4EwAPGG6MP4MX3adS
	 cvVX22xCtN51SNfs/XhDINyfT1obvzzOVhPW835dp5gkQWCZDm/C8X3ttx+iawV6De
	 aMJfUcZ1b1BOelKDAY9ZrfINZmq0CuV5b8x/UwkN6wRXvj6zHtUHRmHaI6Q6RmEnop
	 r38ombzxjHy1BrHtWob2YMKJ7BAa754s4v16L/bp3TqcBl/7nwJepzoRKt0zIToDge
	 v5xJWM6Gp13pMtf+fy/essr6p4hbpJ5mWztf29Ksxsu2WufW8bzX5gL3DAoGprO9vw
	 lkMx4IT6u4fPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9899FF885A
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 05:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177795885368.3786.2462377571230667226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f78e0df2a3490f5df9f9f887724feca29db70a039016b2ee5120aa1bea1876e6
Date: Tue, 05 May 2026 05:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777958853
