Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 518781DA53
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 13:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717077263; cv=none; b=dcF+IkjC+5YAAQCrfuAUhz2BBl7b9YdJVgG5qEErbg8TxsAaVZGmbtoyM/1lSZIQQRXMXV9y9Mpx5/Oxs6qO+6qBiJx+ZXKZI5OzOrtI4Q8vbYz6LFERxFmVIzmBZ5fJv15mnQmGh02jPOZekdOtcIj+9VMWzYye77nUP9OZqSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717077263; c=relaxed/simple;
	bh=OA1VczZUya1m3OPtZeExkv0aTCY/gog9XDj+GXicdnE=;
	h=To:Subject:From:Message-Id:Date; b=MIiTXNzgPGsxxbTl1imcI9vAtIWZrTZZ4SzurJ5XnZ74LwXP9ZAMZ6GeXKB21VQ9d+CYGvOoVbfnz5KcUj1afvDY/O8PyxSyjuD8fi7PsyE/cG218sDNF4TZ0QglTPffvvnsZ3cxMr+VsxJxd7mjeUrjCfsWQtN8PrhTwHNmXRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nTP/PrG1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nTP/PrG1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DACC0C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 13:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717077262;
	bh=OA1VczZUya1m3OPtZeExkv0aTCY/gog9XDj+GXicdnE=;
	h=To:Subject:From:Date:From;
	b=nTP/PrG1stGajNXUvv0qZYbLUpjiF9jiTpuXEz6WkqRgnP8OrlOB9oxzCbQoWWQv9
	 1B9585XdHjshifcGZZN1jxgtrRxJGL51SwNBUO3+dzyDp+UxFTR04x/h64ddiI0zRg
	 MMiFE01gLaKzMSBZKyR328+v1w6HJIONGpqruzSs072XqdE5Qo7b7N8ry5RDOStaS4
	 YVoTZ6B9SdUOWe8Z4Ub2FHvLUzfHHxBI+RVb9bER267UL5hqK8W8WKfOa5zd1JnDlw
	 xPcUkLX7R7Hz//rsf0uYdDArBZJR+uRoyO/8xvbDF9iQXVmajIvkDz9qF+K2/Zalfz
	 0HCDUhOAuOwzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C34B6C25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 13:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171707726279.8781.3391077067520973032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63e95b06cee3646b3ccde0c8a16650a7cf66b7f93b9859f925736cb9f43300c3
Date: Thu, 30 May 2024 13:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717077262
