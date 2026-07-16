Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275FD377AAD
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 15:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784217514; cv=none; b=OvI+HoWB2G3hONqmuylCP5exdVIbvdr7XUwnlKQ0M7AKe9K7ilOQzq6xWYclr4wwwKyonCH7aDAhG6aR4Pe9Muyan/63VZ954HfDv6uVyAinuIFgBolMpcUY2IEpJF6XAZQvpEQZDlmZrCLAV0aXVBdVhtIl1Of1djQDH3D4LNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784217514; c=relaxed/simple;
	bh=ulAYGL7JPMAeqByqy+Y9JPoHchZgU3pSeNA1DNyYjsY=;
	h=To:Subject:From:Message-Id:Date; b=dUX8gTd8SrPq2+q/6bemaaMDRou9HzatSLef5/7tG+x2vDGCunwie0JFeihAF0HH6yP2A89napP3tVMprLIcGso7ikBMhIzG2jKFlX+YcDBhb4sgTTXWVKDjfJGFVQ5ZL5rvIK/fggvWNZL6/H+DXOLbW2zUgpaU6R5DEYQmAI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ukSD/yDu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ukSD/yDu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D23ABC19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 15:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784217513;
	bh=ulAYGL7JPMAeqByqy+Y9JPoHchZgU3pSeNA1DNyYjsY=;
	h=To:Subject:From:Date:From;
	b=ukSD/yDuVJm7YEsYYw+HeMmPapIvGRcASH/Evs7njuQ4ZqfUrED5oldoWY0tt+fMk
	 iuN60MTQ1q9p+bXohBnFGC0mf1uQwhZLcfTCa0zAmjrkuxIjypOStzJ6cYThVacum2
	 QhpMDYBB6+/d5NrvAce0pAOqTv7ggKRrbC3Vp8NKZUAE+YCbjE0CQrIY83t/TtTUba
	 SQO/6cUFKuKFZxCSnrvs699WxUXS6rrxyFUn2xejG/2uUsOzzXdX/WLlqIRyEU3FXr
	 tzI8PzHPHoNfvi0MxPU3KgHGIW/5Ozyv4WZJfvZZTnffYnPeoMYxsGP7G0nfa1d405
	 sj9flshEPvRkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0982C44515
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 15:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178421751371.5517.1622599971424728270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8176ec090aac5416a493d2a4134f09637945d7ce8ca596a939ab306b660f5cec
Date: Thu, 16 Jul 2026 15:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784217513
