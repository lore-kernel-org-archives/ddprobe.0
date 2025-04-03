Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D5524BBE9
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743685194; cv=none; b=FoiquDYoWYXBIfmY9L1JocSQHSJ3I1LLEe+0qfjA65TkLeYzlWbYhrUpEyj82mYi9hKnfA7S8TEFnwPbv7fxe4a0fJmSOH7Ni+CYfS7P0lkgJL17RgcWsvBgxHHRKwgGp/o46LsQ1R5TZUYCbcNw8hvdyt1I8lRt2dAeHaYVv08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743685194; c=relaxed/simple;
	bh=7iR/8p0csxnSUdRILfKg5oPLLva6G3NkemZQuSoskbs=;
	h=To:Subject:From:Message-Id:Date; b=btsEO0t7+nTIHbG1dRs+6LbxPhG114bK1FyYBOtOuMQ8gghYFPNoigqqWOnXFQ2b7lzWn2PQ9vV4zxivlzHvulA4R+YdhQ14x3zlXXLmWk1blbTh7TPRCSdksUeSQiGgNlkGcKg+7Ku9FXK/5idpZ/5UoD6L1q8guZwuniYq9wI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aHy/4/Ob; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aHy/4/Ob"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD70C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743685193;
	bh=7iR/8p0csxnSUdRILfKg5oPLLva6G3NkemZQuSoskbs=;
	h=To:Subject:From:Date:From;
	b=aHy/4/ObdzCpBwtOcJUcYlN8/SxJLsYLxSNZ0ax6kINP0Q/CrIpOoTnL7wMVWCTB8
	 Vyseu5VU4vjgLjaNLquGucWDyahZHPX4Yb9acaUXuEuukWb2B+K3d/c5T4DRNzLhpi
	 QrjcRsgf7pV8myR6S6LqyxmQZRVG8Qr0z4KxbEUtGFGDLNSypy9q/Izn2YL+cQR550
	 +Hx5gevef5+NZ5gHozC170IFYH/oGVgrhu412HVuPx3X+3mRMXPoAUfogVclLHWJ/W
	 UCAaUvoE33CwiZJ4aKt6sSn6OqjyBzWP5U41KfxzvjEnW3rQ5laH6kbQvGc/vyxq4e
	 CfzED5XKBy2UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93228C3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174368519359.11938.5812468699281260356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 317830cdc2b915e888e6dae487c420eeac57b6d491770aa0d56c862af57356a8
Date: Thu, 03 Apr 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743685193
