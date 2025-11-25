Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECEEA325735
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 17:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764092574; cv=none; b=Jb0Qa4MZk+hLi+zKzaTQKP5T7eZ/xTrrgUKkiWdUHT7i0EfxYmbd578K/Dj98uhsgjNDbIddu48jZs+jt877O5O06psOhtdyYyBB8Av1r4Vdv0XjixWcfY5g9WPwhLH7KSsLDbEP0+BrXP/EA/o3utSWwqMqcuAJ9wjxRnmXuT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764092574; c=relaxed/simple;
	bh=vFG2IWYVtSQZoaFrYUg7ijro2fziFgRIAXDbkYq26jY=;
	h=To:Subject:From:Message-Id:Date; b=NDlnWEruhh1XwVTCN6eZjj+5VH/CEa3dnn7wgyuawfc2w/ZORPhAUZD0Y5eNpgszLhU23z5YxcS6DJZCFwtcjiOcCT0HvvzzV7Xd09coZAmrj2xbUIB4rDujjLKSMBkAHQJ7MU9aseNFOwUaDQvc18slCE3W/4/hMxBCtTFgdec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G++lcgEn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G++lcgEn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A6CC16AAE
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 17:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764092573;
	bh=vFG2IWYVtSQZoaFrYUg7ijro2fziFgRIAXDbkYq26jY=;
	h=To:Subject:From:Date:From;
	b=G++lcgEnl6RaDraN3fhyp7mguQyFJ+z1OP2Jc568LqbSQE5UV44F+ljVVfXnKXI+2
	 ssslp0/M3cNbS/Ba9BgX9wiSr9sDeVcoc6D4j8F76hzLv7p74qPCQ9/7P1J/4yDH4W
	 dpFtF4WGpXZE70Ye6vI8Un/BVuYAzFWG9j7bbPsK7OuGzsweCR6ZYxsGSZt0hrc0SK
	 tuIZjCGTzdteTq8lqG/ay9L5uBrQvhM/b3gdL1MeJKRUeYOf7XJntP0See0bh83E9/
	 LK8NOt64YYlLZBu78Nltse0Xkj4UrzQAYzf1JgD5YYdV2NNHoypuUBA61oKsuELJs6
	 xKdpoNGOamS5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E7DD0EE0D
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 17:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176409257358.27498.1965224431562559227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5a279f0252cb31e7d32605fe390af533ac5646ce222e508585caa9bb6f6825f
Date: Tue, 25 Nov 2025 17:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764092573
