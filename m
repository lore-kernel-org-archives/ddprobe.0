Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 171CD14E2F2
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757038794; cv=none; b=IADdlXDFCFhOSAh9ZetyOBx8S0LdC0d7101cbH3qPz6gKHJPRmCtLOklkYf4glG7xmIUxm8sND1bD88L0duO+IezVtf4Z1I6fUaXlV+smqyuzRoeJy1IFdgLnhymS6zFZCwcbEz9XxHOE67VR/KwQ1LpSm0LxtZjkQZZ1qOKGpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757038794; c=relaxed/simple;
	bh=Gs3/6cdbjY67NRk1bwGuOWW+8D16OwE7v4uzT8Ig/v0=;
	h=To:Subject:From:Message-Id:Date; b=it0ehy7Klp6gWcyVzkrwLH6beukffBDYb1gifnAim6Fi/+Der8aKr28NGliIJ2C/LwRg3GFPC3QSHPMFyRlTJc8XNNaf7JVZalwrWsO6cUBCidLlD53V/JxPqqePW/DuThgLC51KNHplF2TkPE1zsSQw4UxGj1BIXpxA4ay44Pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rfbpJiKw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rfbpJiKw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30CAC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757038793;
	bh=Gs3/6cdbjY67NRk1bwGuOWW+8D16OwE7v4uzT8Ig/v0=;
	h=To:Subject:From:Date:From;
	b=rfbpJiKwy1u90eRH3wrtVWhzGnZOTN4r81M7RRiiM5TFGtp01MoNDp4hDcyfcDfk/
	 +tLRbJe8GhcpvW1AWVNVFYQxtmjhw5xapmtMRXAmHp1hw4+wMFIG709xl7/zoSxI7F
	 mYfLrPI2Pi5rBLVjW5zXO4VLeX5vJcsvnd6ZBAmzo10YHVwbIqvZ2A9giC8ofMmemt
	 hPEGrUwSGOJ6a1q+OE5GkzcEalEpG8W1ZxxiQ6oW8OjJ3mUedDYhkTwT0XeftyX6dw
	 sqK62jetGPEAjf4ht8Chww++XLO3Udrys9wYxdNSpF2edlTyLTgAV7FrcTMk/gVCb8
	 GGsHKRnEJbp4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF32CA1012
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175703879357.21869.16588419778973181533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b1600517adf7007ac6e3888762564a140d275ca3233f0b95073e2564007b2e0
Date: Fri, 05 Sep 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757038793
