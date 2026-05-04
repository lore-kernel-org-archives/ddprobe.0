Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309AB194C95
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 07:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777878454; cv=none; b=jiFCzbTXoWTj7gCzLnpe0cvygQ/7mSDkOR7T0qHdG8IXmJ3JFErZW9ishHkpxFkzN7fVtF0JuW110dkHMf/4UNyC5xu/lkBOUOqTWdNloyZBEXPcmkfoJteK2f5R417wksO0V67kHzw7IfRQDrilrWHzoxIqSmWpFuY2tuDcxmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777878454; c=relaxed/simple;
	bh=r/unpwNFtCkiKgXPzgk+HaAfdD/kGyLjpA7ggB20L2g=;
	h=To:Subject:From:Message-Id:Date; b=YiCyk+Hwe4lY1IOTaacBXmdRS7W+IY3Ev7QEh4qevDLIU+oKlM+33RIzZX/iQZ3RhalKEFlYQZ2pCPBkweQZugc65ROSno116SscAps0yHXcNaOAYz2wwefWVqzazio1hCxrW5BjcB6fI55MUDBo3zFmBbZBjroWN98bce3C274=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WcaHCeg0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WcaHCeg0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7B12C2BCC9
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 07:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777878453;
	bh=r/unpwNFtCkiKgXPzgk+HaAfdD/kGyLjpA7ggB20L2g=;
	h=To:Subject:From:Date:From;
	b=WcaHCeg00c9ublATxR/wTLCZiC6vbZ0mZ+92YeRx4t19EK7Q0PY5QC8LoVvrlihZb
	 z9/zXDjOrhrlRpfZL7G9WhjP+fh+Soee1Ogt7N8TqeQe2uPbgooTd0esI8JdWR8hGg
	 68D9povV/0XYNlCvwtKfrwn+cHV6IsMyTAeAsiamWSTYab3IA5NkE0hi+RMffHG9M2
	 /ArmBpKZZhsWrPFJZ01NUnBv1p9eBApcyrJyuZigz8dquRnVLIf3QnF4C1gw5leE3L
	 OdWEihP2pEivpJ0xLJDnuOLRxSe16KsLZjPW3f6/ezVY6RSAiS96FnYz3jaPRxngzl
	 y9ZBF4uGymQwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B73CD3423
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 07:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177787845368.22337.17898216326832192708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 045047a5dffb9ed3252bc38b3a02935eb74c251f5dc1a7aeaf5de5088d001a2a
Date: Mon, 04 May 2026 07:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777878453
