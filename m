Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242EB1991B6
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757989194; cv=none; b=qBtsKWVIt/lXzjRlRY9Zgwb9lLHbyM4qcM8cJEDkNNuGG1th/C2916GRF/gpDN4ki+2TQSPmJjpWWJmhGs61v/DMktlsHCTl09f5gwKmoM9HZQ1yCREvQlhTO+6jzhUiunEWB73gJZvA7qBsF8uRBUINJBtZ/+BlAxNjvPXCMVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757989194; c=relaxed/simple;
	bh=mVuK6HMBGABz/JYAbIvvwr1mXXivVYNU5IiVFRYerAk=;
	h=To:Subject:From:Message-Id:Date; b=mcfO+TteEx/H70km1BMYA3HfyE6B2pqmOaHraO7PVZiiVNuytRMu55tzMyereWS8AGpBQjZ0yfW7Es3kki8mQ9fhtkGP+tcnm8knl59lSDufuZqYWx30oYoyG9l48TB7E2/P3uyPKvETJTTjaz+ApK5TlWApFxeouUJpXxOD0AI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JU/I++KK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JU/I++KK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F321C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757989193;
	bh=mVuK6HMBGABz/JYAbIvvwr1mXXivVYNU5IiVFRYerAk=;
	h=To:Subject:From:Date:From;
	b=JU/I++KKXRTZOSeZY4Ef2cqEyP7EKxTkNlMJGSS1gzP5RVGvCEq8UuMltG4Yx4cmC
	 OZ7+R6tuD6lTWEMynEUdvfh0FAUd8S7ceqCKLZh3pg8I3Z98ahedMczNo9STevhuiB
	 rzffoRLmQJKE1q/QCOlLBqrOy07ZlHcz7F6nMd4s883SKAflCZQSWi+5zO8G4mA7j+
	 H2wvnXOhvPCxcWOzIwgHUAMFnv7+mDx8VVNosqp8EwTYzLgNvf1e5sZs7yMfYM5Bpj
	 zW84jrdy5YwYsdLDhdXi3XQPUDT0x5N6Rheunre2OOeZdDsFcCeDx4H7IRcVtHO/xT
	 CUh8QheIFlVmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9079CCAC597
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175798919358.21547.13749415954228781356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23ecace5e96c73c154cee99db5e9ce081823b7b0a0468da136166f42070b0a36
Date: Tue, 16 Sep 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757989193
