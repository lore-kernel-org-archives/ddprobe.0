Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C5971E4BE
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 23:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765582374; cv=none; b=NssITC1YXRXZYcVOu5wKbxcJ0vI7Eqs7CfYkviBS6FdWrVNY5sQEOGXDNQumDcFSCnP4fVEejTTINWccuBmCQ2X0QJt5T4vJ/qa7yRey7W094VANxtdFx05fRAaUIJpNm6PC2Q6FmSpWoalKRm/myQOHN+P/fshf6lTuLtxXJtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765582374; c=relaxed/simple;
	bh=xvB1tKtEbkP0i55y1wZjVT5HsobaKU2zN2WM5LJuVpo=;
	h=To:Subject:From:Message-Id:Date; b=iixyaMt7Zi4NkRwKJTqD3MKmwb8z1KosJ6q+1FzutxJVoAKcFJLS60Zii16efWKqv7M+F5y55zN9LZ0+YmoHVHuiEymqx+lRmEnTL+jTTPCcWPcoE+7iFJOqZgfjY+ZtKIqeALYH7eITAmO9OGHKHyECk+1QOUrLjqPyyF1bh9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O6PMWtne; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O6PMWtne"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C76C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 23:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765582373;
	bh=xvB1tKtEbkP0i55y1wZjVT5HsobaKU2zN2WM5LJuVpo=;
	h=To:Subject:From:Date:From;
	b=O6PMWtnes40o+HchZwNHhIeYBBVqgYYrOMvKzjhpb3U7jgZyG2/U1PcWQv/dRnBaN
	 QfWpYbC/W15SZHM2HKiyAt4pz3FX9GZTk27/L/Ltx5Fdz2vzyxYVN8/6jVsOWbzSmR
	 soQBWNjkn3Sbf1BPxLYsiSobUXbEW7BAGeuZ1nNgxcAbMt8pHr6cTWHYcjOu3Xj16P
	 Y1EWzX0TWRlzkLNDQ17rfxbAPdiXpeytDG4pBdCDE84I++lE+w3fThoXlYN5ByX5zJ
	 /AfI0pGxedJgcUX57V2V05WbviU1AmYDe6vuySNQCOk5jLfwovk2Z8LMK3Koe4yuUk
	 QEX/Gw3G22qug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96475D59F59
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 23:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176558237359.8502.3737089580897796359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46942e22250b8c6d741dc0cd25b1e310c3e97fb48c9a2ab3500d5747e4fb67f1
Date: Fri, 12 Dec 2025 23:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765582373
