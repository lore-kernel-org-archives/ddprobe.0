Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEAB322D7B1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769183634; cv=none; b=RXnzTHyJgIKsVwFvnGjkxKet95aHkYooL//0R/D8OxWs92qo8+ISKVeMbLGEma1mu0BBOKLQnRWNEKZ/x4HJj1eCdXcg7atFBD4tMysS3WuADmTuQ9TKbCQImwypANWhy9Ho8J0E9I/9ZRJJpKU0MlbhCcMXdqmkQhhOdgGBmTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769183634; c=relaxed/simple;
	bh=vNO/22Vh9OKVW6BuJb5aXpG5iU2S4A6jKkR839Anlvs=;
	h=To:Subject:From:Message-Id:Date; b=FvPWwziYi+FKtk98ltZg1mQ/0YV20PVvo8HZRkv+JVWJjHhVa8F4bpPXC5DtqXNbX3j7oQDER1okWgbikyuA1YU9kTNBEfnSL5dZYV25MOED5o3qXIqda5usfZlMskRIhvMvbzDzqTfDU+lEkQ1rnSzEJ0B+uJeoDHb/txaNYyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c9rNw7Xe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c9rNw7Xe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CCEDC19422
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769183633;
	bh=vNO/22Vh9OKVW6BuJb5aXpG5iU2S4A6jKkR839Anlvs=;
	h=To:Subject:From:Date:From;
	b=c9rNw7XeZeSVB6ZwM4C9xrf131ruKfkWqAhdFzkQILM8uFN5XdyvEHWB6PuUTFiwl
	 EZTWbSJbeHLpH14kI3chOwz5lLuBQ37utCckbGiS8F/E14YqrYTxwRTifE+JFhPT6l
	 7X03OtHCPA0LvmrEwGEswiKa+IZT8j28AF4v1OE33MgM6D7vMDnUZenurbxS6baEK/
	 1JCzS74rdiY5/JvLPO+0Ax3bMyYEL45HxgetIfM2EOfWGDAVgxfHlzEimaxY/tKIoB
	 dIkei0XTBMu83Zmfgp8xqC2dnylTFYISSrMAQy4JooDMZ/RhNPJpI5QJwHxfcVddou
	 FioXoB/URVtYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6E1D74EF3
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176918363357.7327.9625860863564478598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48ee24f918b7f83c7a58fb6b64232d3d819ccf4141432f7c9d9159a6129b80d8
Date: Fri, 23 Jan 2026 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769183633
