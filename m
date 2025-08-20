Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2318D20AF67
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755734394; cv=none; b=c0AoLolN4YmNeD5zOshQAWjsiCyCToRb30J5dWYV9ytS7QSjqBQ4gKlUObD8QZJOWEqvL7KoLcvIepjUVEwLGwuzFc9oYxloelgWlerSg+i+ANIT26au8a8wxDDIiqPmhyO8XGyKje3QiAri0Yta1eWKMp+NMXy/DYkP7s6r+7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755734394; c=relaxed/simple;
	bh=0Go3Zb6cgrhSyTVRTxDAaU5fXnKaq+hx7Xc2XiMLY9w=;
	h=To:Subject:From:Message-Id:Date; b=N0//dS3sFhmp9slwznmHXsOo9RtArdehOGHLmkiEFNXQpiZn2bO2BSgVcu98hdccWw4oO4Zqaunzqgtiu3UUSSWnbCc9tp/Pgq96FAcSlYHwooH0iDoGlzvG2vqGF82WSdEwv9cCCYRrTlMniSB2CCJrdPe7yNOKWZMNRHs/2FA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JQNxhfSB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JQNxhfSB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25FFC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755734393;
	bh=0Go3Zb6cgrhSyTVRTxDAaU5fXnKaq+hx7Xc2XiMLY9w=;
	h=To:Subject:From:Date:From;
	b=JQNxhfSBBOxDP2Zzq1p/DiOmPC85uNO+S6BywHVSx4UZ+6Wkt2sttnt/zt/wMGimi
	 9iXy/Ed58xUvCErFFjtR6t22j4tbxEp6+ptOe2gBVvtd021hpHmZkeQvXfltHQc3Bo
	 4eC+engX3dTJVxngqtLELzqTFRe0Uue8ZdODbq4KyUgFQKcfTiZB9C4i57aV8JDYG4
	 lJTq2+g6hr281rlxvvG1nIweUtc6Ly5g6RQuH/wPofdsoaqsI+7x7g/m7jrnKTUn0Z
	 HABrLhTuo9tcAGlimHtnCvzxzf2F8sClVPx0QNrdCpP2bRFYD4inepC1v5tFeF8FMZ
	 ZDah4eEwv2ZEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC8ECA0EED
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175573439358.1343.7609647933913135797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 927c36c78110f3e9032ecbf0226c52244b5daf723335fd3ce235c6c8b98c0133
Date: Wed, 20 Aug 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755734393
