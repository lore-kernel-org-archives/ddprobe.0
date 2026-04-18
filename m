Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA46293B5F
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 06:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776495454; cv=none; b=BNESSqVdVV6GrAlYaWTEZAnDr3k8joUFFMRC8U10wIPdWYlN2uY3n7N8n7d5IcOVjlI1uvedAsso8VNaYEtLEaezwWpFLiExAgHhC7y6M5Qj6/akpOJYfyf+X6u0ra9C0jlln4B/lTZd9P0Os3jFvkCgKoG0PjPHxCf3+JOyyDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776495454; c=relaxed/simple;
	bh=ppa1F5BIWA0EukXap49+BRkSd6BEmc539LWJiTaoGZo=;
	h=To:Subject:From:Message-Id:Date; b=bZBy9Z+5jX3fWXcFdfD31Pvp+RscxpHgJO3Xp5wdrXZNzxMj4Cqxk53UFATECKN5c9i6yfMDon73WV+vjbE9gdvfsJp9X01uk6LzhBaYYMiOFKZudAjWxNNdaJXqEe5353Hc1fqaYBxj/mkQmdIVUhiK8CZ98L1wSRIxE/bJX18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nz7rSGA2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nz7rSGA2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C18BFC19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 06:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776495453;
	bh=ppa1F5BIWA0EukXap49+BRkSd6BEmc539LWJiTaoGZo=;
	h=To:Subject:From:Date:From;
	b=Nz7rSGA2PC5sW/1ARX/COU3lJEC7dpy012hm0RjlT1aFtxoGJwNZWsczJkqfXoFOR
	 /y9iEYHk4AlV4st+WKsh5bKcnUjwcgiSSZ+/0ahd+z+OpBb0J72G0lv/LNlS3/9KUs
	 y5q7uldDmzOH4GRQyaPLOyxt5fx9I5WHj91Vi0rXWRGPlP/7MWbOlQ2jqYFjd6w5Rf
	 ih3vVrONWNcpou6Ht9IjiT4Y4lYZi8ad2VN/ao0ctgInINoF/5uH+ynzC8FYFePeC1
	 5oRods3yhC9sy+JBJH4zqu2IYs74plZ9gVOVfyJ4gX57nihg7cOWusURnRpB8FNvO7
	 hfS97303Vk/kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF108F436BC
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 06:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177649545368.24049.13185693741066664130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c33d4596f0e08c5c33ded80f529d13c2bc4fe8efe4ebb84f92c194754744322e
Date: Sat, 18 Apr 2026 06:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776495453
