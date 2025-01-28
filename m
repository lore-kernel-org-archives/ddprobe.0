Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5868113FD72
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738034754; cv=none; b=V0kZgSbMUX/yrqUTYHBKfV7+WbZWtqGaMPH9qSa2iX00bbSzIpp+w1F7hZ69RNesElIWw3nK6Z6Gq+dwGp6228FWy3N4Jxi1O/KHOttRW4qUvq6IedvoaS9Jm3B8rEVrJvuEBUM9irU/rJORMRiDICcvGInjEX8AdiOwawHwP6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738034754; c=relaxed/simple;
	bh=CgAGAo+SK9ltdutJz9E54CG0N33irYBX9+X+/S4SQvg=;
	h=To:Subject:From:Message-Id:Date; b=J3v8/jJK8nMo7J/6NX25Jk2QuA1o5VdXcsn+hc+efSuCL/Y5Fe299boEtM2NapDlCRNH2MQfOR72yXTBmiotlX1Vk84yIRoQbE262qL+ziChWY8PN7wS7OzapFXqqNhzBK4D6frvDNgPRwX4wNVp6YEt648oqhdt7xI3kcwEq50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pHQGAaX4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pHQGAaX4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF788C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738034753;
	bh=CgAGAo+SK9ltdutJz9E54CG0N33irYBX9+X+/S4SQvg=;
	h=To:Subject:From:Date:From;
	b=pHQGAaX4VLtefwZNXuDCzVqlic90MO/oFtWryxeGt2Q+K05wnLCdDp3qQTmAwvszZ
	 WwzCk78jgKMeTh0PbbbjPu2rVo8V6yL2B10Mvs9GY7abR/QGPwZE3KsZ9DB/ghdupO
	 UOQX05m7MWuXzSZi7Bfv7WAUOyLH0B9AAeQPN95WalM7DZhWiKUokqOLl8xas03ie+
	 mK7YGWFRV/RSWZFdP7wCeQ7Oj3VfQZl2Gpw4gAEOHX7ZLAlUTVzNt4knU37ju6FOoB
	 h3VUZ3nRT4zNUs6WSTiJEphdsvElvdYsa6tVpICf+3cnqcsN9Jqo+7FbSKERRlrTqO
	 f1R0ipuzLgr4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9787EC0218D
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173803475359.18736.2177516754103860745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 697fdcd70a11af8507c8c02a08593a6fbecc4c8d24ae02c7a87cc6348294baf5
Date: Tue, 28 Jan 2025 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738034753
