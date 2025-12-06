Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DDDEEAE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 05:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765000374; cv=none; b=JePdCD6j5+JkL/aoZr5jQ6Ow9Lqc2bNZizBk1zae7l6rKwHzh2QSwfQNxQpzY7V/gP/8g/POhQ4h+ZM82kVB4PRCTpu9RFtpz15hJMdR5+TYwWiNLha+DYXws8xD7RogE7Pvr0+kUnpjDWOTbGp12v8CmJavbXWy8Wd6IIARrNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765000374; c=relaxed/simple;
	bh=94clp+swyBhBTg7DzglcQLaR9SZj5rCmOhdIThv7YIU=;
	h=To:Subject:From:Message-Id:Date; b=jhdBaGxNtIGjNBqXoggxeJXHznIXvI/Vb271TmWh0x9sIP88vPhWurEi+2gYORIDiu0j/0fFoy3ShmNn7oQYCqdhKUXbEKQvoWLn+Xxkagiq3hHOcFzY4stQnywMvrQ4WYHfkswQ5jLezwEFlgL0OA5Hn5msR3BTwVoKSEiMHNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=srCXF53l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="srCXF53l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0AEDC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 05:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765000373;
	bh=94clp+swyBhBTg7DzglcQLaR9SZj5rCmOhdIThv7YIU=;
	h=To:Subject:From:Date:From;
	b=srCXF53lnKxaGFP8fpOgHf1iugNYsk+/kQz3ESmCpoGVcswi3PDafMi2W6yTYrqN4
	 4/zbKJJ45uROLSCXiArJecndWWWoQbtVwoTxIYsMGzpSlutaaie8F+UVx69WlbqyHB
	 0bsgVuLijAeOEBzIe70XbHp3x8PJtAhOopUOh9oZqS1OQFsAIW9IHY6ayvvBAbzBtn
	 Dpi+gusxyJVZJ2BOnPqXdfgzXA5GSPuk2tjdtVy5/WM4l0vc1hLVWJnby+ZP1kQTyK
	 ODA/wlXecNnd+LQznVvYAyL7jR8pJ1r4idz/sYrY1VRlcdW7HB0eTIPiSQF/TKsYSB
	 eJbrjrS8aQpww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953DCD374BD
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 05:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176500037358.3071.6579389723998900914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 021365ed54099823abb9b0f1a489b4fb3277525896713225703aa7a451e6d62a
Date: Sat, 06 Dec 2025 05:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765000373
