Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C6AE1E0DF5
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742424594; cv=none; b=YT9c9/ljpFGAGLub0XQaeeCfByiHFq8iy49u2uGjMYSNqZhRdHq74qLw1YCrM24eJm6g8oNiWDr1OTANlxe5EFdt9VwfbZMHQ4MVscTRWXsNidIIcmYOhhkfk0wTgchcLs0Ep5n+RWR+2rkC76wKF4P8NRU/k0wdQ782Nds76uY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742424594; c=relaxed/simple;
	bh=vtvD/IjgEZ9/jwYkh9iS+6blRU0d9FsMC4UgH1v7Z8E=;
	h=To:Subject:From:Message-Id:Date; b=Whvwk3RqO0Fk23yuvbbuTFBzl4aHXCcIA6aNlb1FUYeupw1O6GCk+6DQuyZq7c92Sh4H16tAW0UdPfEs6t9nKXraHaww7xqxdOx2sQuEcI3ck9TfLGzWKvcJ+iRSPTKe1hLB7C2GN2L+LNQ7oFKFye20zJHRueBMinmoJA4IsrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dPpE6KYc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dPpE6KYc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C56DCC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742424593;
	bh=vtvD/IjgEZ9/jwYkh9iS+6blRU0d9FsMC4UgH1v7Z8E=;
	h=To:Subject:From:Date:From;
	b=dPpE6KYcI0QxekYg/k8w6lgaB1L/voxRB64FRkkxo8G+gT7RBelhrl/9jxFlyx2Yh
	 ffsA0fYYXcXR0tDZalwI7ItYhoAJ7ap+v/Ry6qYDvJb+VzIzwCFyn+3OBgMnIbOzKm
	 9dkxIXQAN7AyJCYQD5lUUvOkz8+ouP34cJy5pnYMwhhSbevCZHzJ8dvuVJg8Vry0Q3
	 H1RwZHxutcVNi8wenRB8gfifSilAjAUeCgmoJfYVlJZQtltK20ruURpze1QnvjLXPi
	 nDy7WaNjz9AXG+9khGZt9fR33PtZpYa/D4YfVd4307lGFbbC3fcxaQHh7V2wJM+hYK
	 lQaQDpDNXpfXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD341C36000
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174242459367.31540.3174641536578803159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b59d84dd925fb72cac2c9bc5259c6daf0b77d02e819df324ab2a9338c693b3f
Date: Wed, 19 Mar 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742424593
