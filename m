Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4400135E1AA
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791413434; cv=none; b=XeeCy0CK+yuth4fxOvknP/hdeEHGIkN4DO5gAnZtiQmKyojCSgqBQmerIYsJmyUR9NG2PNrdV1kNbcz6HrHV7TtVI0gd/Ry/jVjVKpG4ESe5mgN3WZy2Q2YJAwrcVAC8XFzHA6KdSLjhWtHhMhoIYAkuudTYGBSPFYDUZvubp/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791413434; c=relaxed/simple;
	bh=sbjmHrEF/J59Jedox9wi6X7WNy0LryntRM/6IwQWNlI=;
	h=To:Subject:From:Message-Id:Date; b=sim5eI/9MEYjoefDCKlHG7hmli1AkAuzAsK8sidtdO8DrLUSR0mmrI6qCushmUpN+/q8AfImRPxeZ954DY6SIHQwZZVpMPhm4n/z6OBg+GkPr3OL0BHYvxwBRHliGw/jizfRDOc2Jj5JD1Ec/MrBAs/WlVTi2Ab2vyojv0LaoMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=prCebPc9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="prCebPc9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD268C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791413433;
	bh=sbjmHrEF/J59Jedox9wi6X7WNy0LryntRM/6IwQWNlI=;
	h=To:Subject:From:Date:From;
	b=prCebPc9/nns5TFCiNuoOPqQ9wGm0msaxNdpYMhRbN8ZQUqoF4ILi6oPf7PUjqiwn
	 JY1zmiIZYFkAK8MD9fQUOWXoyvYzujUpLGiqM38kO0Yjt7a9CbNZdG0xswmIco2zbo
	 lxFhf+iL1WpWQ1f7AF1VcVVPEk1sgY7RQmz4MP6KDyMjcePYI+/TxdSIHPM8BUh98i
	 gKHX37InYbE1gzCyp9imVNGKcO+IekAp2ouf1MDNPGHXLN+d6h7Q1dby4f6ohhIWRN
	 IsfMv7x8uq6klhICx9TFSH9H8cTosOx9VfM5O4U3ry0rb/bnVd7PODJyc19qxC627r
	 O9oxL+puKBkvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B7BCA6002
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179141343368.7468.12730102833573001406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b541e5f7e67367ebdf76c50f7166b7da9e478d750ca801bef0e14e94dba4a0c
Date: Wed, 07 Oct 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791413433
