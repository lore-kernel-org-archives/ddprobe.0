Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2757329ACC0
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 14:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771253694; cv=none; b=KH6mZ3mkRhnkRusnnIOW1SoFl3Vtj8nkwGlRlmo7bDUE76tvQo/tnam/CpBfcWW8Dm5vEU8GaqxfgutWYCc0l+sI6mGJE0a+6NifHgQVricXfaxPcBtf1gdSN2C1+AoGKkteYARzzhl4ZxlPnr6U53fW3/l9onC/UHrxlD4WJk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771253694; c=relaxed/simple;
	bh=cg98PniNYFhuxfDLTqIFbjIEPKOOoAXWs4TuuIZyIKs=;
	h=To:Subject:From:Message-Id:Date; b=kcYCOGURgU46GdVTSRafmJeTa4QYC7bCfWi/KL77ArgzUpGqCmmbHlEildnNJKHMAce18MfMQ5wU2YWVuPlTvF+ojSDbPjVCqw8paUx7Rcl1+H5mC45/WxRgLkO0a+rbUbS9fBm3PJtQImYWIfiWM34IcGy11CguTey8VKkq7bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VZ+AuacD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VZ+AuacD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB9AC116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 14:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771253693;
	bh=cg98PniNYFhuxfDLTqIFbjIEPKOOoAXWs4TuuIZyIKs=;
	h=To:Subject:From:Date:From;
	b=VZ+AuacDIL8oYS9CgwZhUSWgadZCfqgH5JXl01ZdEmIg9XV+OfPJABHy3WPb+W8qM
	 JuWTAw3SstmW+GgGfO9XEyzuNZyQkuXDm9Z94hNONz5aYXKJXZ0LSZICsKwnOtnIXC
	 InYy/MaRH8UgNIDmdL6Ol87NHfTi9tbCKN8WGy8/ENQmoIcd3d9USY1mSDIzhpeII4
	 3v7Jaf17kZxGUcxEChJjxTC8Hwk6GsqeoS/ZsU1DOQQG+glzPWZ7GIVUfdZfizYj5+
	 +8kAJm4Cz1f5RTi8bOnRg+IYx/VwaK5LDX0qOmokV3vqsLiSgmbwarjRwI/zkZb2in
	 E9IykDa+Ws5qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9584FE81A2B
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 14:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177125369360.8940.9690171134298862563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 625dad109ec58a9682fd6bfdc9b6159cd3191f468a20f30094eac05468957377
Date: Mon, 16 Feb 2026 14:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771253693
