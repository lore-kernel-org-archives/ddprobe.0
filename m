Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FB871A8F93
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737378954; cv=none; b=WRVHdRsWS/Tp07VOmQqhma+G4JeWyhhdTKTY3u2/Q7FZt1lNQ/aJJPJfqbXKuGGpCGyOAZRkJgdCn0iBZBTzBsVpyFMntigrq+QV/GbNxR97MNWU81h+0S40ZGYAxJnobDad6q/xa/aNOn+e8UGvT5AOnJH6EW+8LHOLFvtXFqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737378954; c=relaxed/simple;
	bh=WGqiMhgFHxF980MSRR/6LONKI0U0EfD2bTIJ8QY88nY=;
	h=To:Subject:From:Message-Id:Date; b=HZik0mKGnXMCkG1Zr15+5ycTe3wfiTkwEvO1PS6q7lERG8TDeriABiUaFIWmbVk2zra2YrpQHjaBQlX2wCwnEP6DHDzf/rRAhxw9bPxCiVrc3TBNgmN+wM+kocif7eqppkcwNnsvpFV97a7+9cibwUXNIis6E4R5nWDjZXytPOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N5QDI6mI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N5QDI6mI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9587C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737378953;
	bh=WGqiMhgFHxF980MSRR/6LONKI0U0EfD2bTIJ8QY88nY=;
	h=To:Subject:From:Date:From;
	b=N5QDI6mIzWiegyAxyX3SyZXZAepQwyEnQ/455rPW18hvH9un2IVrI01Vnmy9fMwaB
	 HJbTv8bRVfY+stzmOtjaI8Gam+nPz/CftCA/+93IpVmUjH2cLRzNDsjRuDa6ZKlvb/
	 3CnWS2OmPtjCm+3xET80XV2oPWs8cLZwPQhHXnZo4rgUfF7mfYpXw7+oaQziXpBSO9
	 Nu5qQ1ZM1ovrRKGS+bCPasJ9czDQWEZ2IwLU1QvErCGNXCLIiKrNkj11JOoLQMMMIK
	 UiQKQztlu5PTD4KbeYhfiyrUMImhBTBwTXtmoBPGGuoJOoz55OSl6zFW68zF9sAykT
	 7AhWEBNukbGwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905A4C02181
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173737895358.3619.15791961425966381112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1547f098f02a9998a57e8734911183ebe7aac1cdd4a73bcffe9dcac61ae9c947
Date: Mon, 20 Jan 2025 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737378953
