Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D776B2D7DDC
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 18:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772042693; cv=none; b=FpkVrAkwe6GNnzL+LgG56sFFVlRGIr7IfxFcMqsqZ1SG8xkKhUEdBHFnUP0CY+MrBdMFcEtj2pYZ8Cc475GoUiMoPYg4WxnPW6y6iyPwlUGcJqAWYd5VuMrtZ41nPNkdmawp82sMrHKhW5x9j1WnYPTbb2fj7CrOD/U6LmAU+Ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772042693; c=relaxed/simple;
	bh=dhAkdfrjOxyuuhMKNpU3h9IQGxViEREYn5p9bHXtrdA=;
	h=To:Subject:From:Message-Id:Date; b=XRufZrbvYWZKXjfUZphHyn8GAafGgcJ6y9HCY1/tYbvti8m0y6PYxN7dBIyv0fZEZOR3F/ERRSKAvepgLUAibCE5P8uBOFdqgwOebMWUXE/A7goDWXbHeie20x+8ozJqahogsuMKBNFSyPHuwtb8IfYWW6ze/vWSLApr/atfig0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ox2t0WNs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ox2t0WNs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0C90C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 18:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772042693;
	bh=dhAkdfrjOxyuuhMKNpU3h9IQGxViEREYn5p9bHXtrdA=;
	h=To:Subject:From:Date:From;
	b=ox2t0WNskoysj+52K5IWMT0/GYA+JNPfIDzoCxS+JN2TmedXRl/57TQmx9SK6XCUp
	 mdFHlC7V8hngjRU0Vt6ZPmlBVoD3QZnWJQWbFxLOfGm/w8Cvz6wS/ZqObOHAB/wz2j
	 nGNl8OBjnYppvxiIXqOrtaAp8Mukk9q+5S2AcYvbs6/9fupusde0HYgXoDbmyNOHZe
	 f4E+DRx9UXevdyVMxN8B4L/rIGFjhOyLtmLuV/QkeMIWspfaGCWZqIxDIdcCRRRC57
	 e9xvETWbO+jp8bKl+71f049T1mk3/A47kpiI3BMS+6lOo0lG9Tlh13rV6BuXRrTJvZ
	 lB2KMAzfv+kHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D029FD377A
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 18:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177204269359.11839.11821384878350263493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 818c75e15f3c58f4b2ebea9217bafcba63eac0d70b3b39529fd14a288ffd2c99
Date: Wed, 25 Feb 2026 18:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772042693
