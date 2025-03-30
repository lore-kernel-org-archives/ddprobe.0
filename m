Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D780191F94
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743371394; cv=none; b=T0jtN9VvsWOi6tVNn7KhfbgoVq7SrSn0yzAQmOdDepa/xLmK+Wz++KbeawgGyS0GnrEWVGV/fmsFkJWgJuNhCWZ+ZoawkCzDhL4fE7uUiBoafrn7/NKSzWIa7mwv06llYrpBwvZDjd/JlfwzO1EhRa8KhTFG4/YOThAKH1qKg5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743371394; c=relaxed/simple;
	bh=Db+3aW8ZeE+9tXuBt61qlOdExhaiN564nDgHVPSwUko=;
	h=To:Subject:From:Message-Id:Date; b=LafJ+fM9nhuej5nJSXRWsQODgspwrLXHna3cIjZYUx7aOtQcdK6ZuWHm/pjDsvRzr+hSI4b7dH/prUSMa7GLo9EjRwJUOlQq31ho8zCxSNSfUX3XM+aUEe9c09kXLKdGmYo0Zv5y4pipsR5t5JZvKOzw+nlVQ2qIxtTLg76/P/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AnD4l+6D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AnD4l+6D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C280AC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743371393;
	bh=Db+3aW8ZeE+9tXuBt61qlOdExhaiN564nDgHVPSwUko=;
	h=To:Subject:From:Date:From;
	b=AnD4l+6DXl54+fRmdDQDSNpOPdX8nr5GQM/LOmLn0sDggJUcvzlUD7X+u5HRvkRwO
	 3xfcX0dY+ZFUnWIC2ZKaECAp3XPNEQbZ0Q39Y95h0Pxz3Am03oO/roynR7578EaBaB
	 bt1Bx9pM4t3bicLBOme+DOS7JW/Oa1nZ0wKjIAky6c5uJRP1mK00OsULkDz0eWeGy9
	 4RX+JbaaOskdwcqCBVAJbc6FC33MnZMmGwDUXxbq4UAp6cWHk/yA+B594bh0/+o8LY
	 FgyT8Ul7J6O4PczKR1JihWiTGUQDx9O6boU3gnskOsl7Qbs55KZaUI7i7t7AgpKS0b
	 S2bKgejyizrUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEC1C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174337139368.2156.14104206115217592885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 357d3ca0e264458c71f4c1ae5e4adfdd532260956bf91f794d38d945ea0d48bb
Date: Sun, 30 Mar 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743371393
