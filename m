Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19848184524
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 21:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764624174; cv=none; b=jWl8TaRXDrKu+T/k0uk/F3cSIlxZTw8s/iXwT7bld4mdjSRqRAHT+ePvozCU/HQxdqvckkxXwyQA3SoPDnXnUG1CWh+yU6RTuQt/viVnNuc/DPwl6DMnVDZN1DGnA7k2rdsSPve772lgztKpNOQ7qYIuqgW+pUJeHCIMraWIHME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764624174; c=relaxed/simple;
	bh=nf2zqaxQUn6ORioON2Td1jc/D3Jw4KIVES5K5mkAhZU=;
	h=To:Subject:From:Message-Id:Date; b=uBHcmiOYFOjV5vFvu+8j7CgqnaLHnXpVXMlXwq0UCNJVPn+uwP8yeY0I8wQ58s5jRI9r6UP8vsSmqUQ9+ErcT9YqPtbsQtPT+j+pXkK+KTbHqChCx2pTGrP2DwW/3XCtjKCBTM/IOUa/p8zwl7/UQ67ZK1KgYbKcU/+MuW/J4nA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Loc8fPHl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Loc8fPHl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0AFFC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 21:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764624173;
	bh=nf2zqaxQUn6ORioON2Td1jc/D3Jw4KIVES5K5mkAhZU=;
	h=To:Subject:From:Date:From;
	b=Loc8fPHleZP6Z+uMpziwJyzJJSC+ktww/9R2vzb/Ih3RWXOfnezwyocfHaIZgAyK5
	 ECMxYhgGPm2Ct0SxCDbSYCvOiqNWUVBRL66N0ViRoMehT8ixKTgRcKh6XL3nVRO0Vh
	 4nAZ09tqyP7SVInrdEtk8W36wm5ep03+I5KDu3mp4aztGAzgs1VaTXSsAb5hqfnSsu
	 7UB89eTxA1fBSxu3ejD0YYhMP3sP90814Ymuw7CVIHHWU7om30FrTjxoAppnX9xtng
	 Lx7X8oJ+VKqIEap3Qj0UGsLTQouq6olNLA0Q5J2nPoUrLnbf+ymyWhczTV0WpnlDXB
	 8Luuo6EcxKlHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B3D0D116F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 21:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176462417359.18813.16267846289527644068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1811dde5b0aa96417274b29d66288aba8886afc8f2ec3a3b675f4e63322e4491
Date: Mon, 01 Dec 2025 21:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764624173
