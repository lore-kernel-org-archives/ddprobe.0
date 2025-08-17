Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4AD1B4233
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755445195; cv=none; b=IpLnAbJpx+VvswwXsPK8+X0i0BbUTWw6ySh4/1obp921eNKQvoy42/IyzoQ+FS0w/E13XYDx4WWpPGD7I6h3u2QEQhf9LpqNUCkujPxd5wZ5k0dAnRMyLQJDRx3CunU5LQUDq0/YgTgJsGC7WcadWUlQKRAn/EJ3IQu6sI9TJX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755445195; c=relaxed/simple;
	bh=PJzW+ytHd4rQgZMlSR0AaeIe5zjpeWXRzKuVa3GxeG0=;
	h=To:Subject:From:Message-Id:Date; b=jGjzLt//MLbvZwlA5ILd+V5nxXVZAXOtaOoN3VMcPEd0XckN4izESa7djrxNXwvwWkg6gh86gWmjeDfOfTSGnO7ay4z+xQB5GBo/jKxhX0WScNDO1glpq3p3zrDLwkihQ7ryBRToQz+qTaMyuPCzAMOYC/1e00kbQJMhti6rD9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s5LehW7x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s5LehW7x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E8DC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755445193;
	bh=PJzW+ytHd4rQgZMlSR0AaeIe5zjpeWXRzKuVa3GxeG0=;
	h=To:Subject:From:Date:From;
	b=s5LehW7xhFODgYlpxLNbYK3LLGs6C5Cl7Yf0FQr1jPX/q4edfwpPEaPg3uyoBWYLy
	 YTI4bc5qC4ghWit51/g0Lkc+R6LhypAURtVZSkktXaBF7E9sczUu58uqfzLYwGXzJO
	 DKDXvCuHGsoetCSm9uO7HYmuFF1k8GJUaDUq5zQHfHh3QaoR77iHUO+fIxjoZMc0YI
	 CiYTU386h+ltO8yjk++JrcTKzJTkAPFY1IqxL5JSQxNM7bRAFRW3hEfstmfEUJNVYe
	 1nAaiKwJLxkGP5MApS/ZG9qyzkmvtTY+pevDwqn8XZwrrtoQqqrsbDH/JiBnHmuJCT
	 O0fZbarXqJ75Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916AACA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175544519357.23633.8045609577148815313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dadde785731efa4940c9dd7f45f8db04b0c3fbfa1ba867740c17c8b2d7f1abf
Date: Sun, 17 Aug 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755445193
