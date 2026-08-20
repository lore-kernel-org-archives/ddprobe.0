Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 631EF33C18E
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787264434; cv=none; b=gviakmKX3iYfDytUcAobjIWn1hNLrfDz2hAVfAhdKOju1I6lkah/4Ovsh3dZXObqzT3TTMnBRjGi7ZJJSEpmw77X4QPieSKfuuww0XofzTrenD+gU0N3FdnUG7ZARqegrWfrASl9c5sOEIQqZn+SDVSLTMf1dGxvjtVkYFPy1TQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787264434; c=relaxed/simple;
	bh=wBfy35J+EChQobQ6VmPwU9JG8taM1iMqfxYkL2lgf/8=;
	h=To:Subject:From:Message-Id:Date; b=g90BqiQFV9R0JKtZZvrX4BUAqlajqhySfJL1NTsOU5GUBK5fj1CD20zwm87SdgbV3MTaz0W7drAtqg76zmvZ405aPRwmrmqL0JS/HGeE2bSgG11nVS0TEKzidr8nghcbtgYoKB3Fr7kQN/A5bjQJK5EKX1Wmk7AVpVF8daAju+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c891l53Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c891l53Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF583C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787264433;
	bh=wBfy35J+EChQobQ6VmPwU9JG8taM1iMqfxYkL2lgf/8=;
	h=To:Subject:From:Date:From;
	b=c891l53YjJDpAjdNkOdoGIQ3zM5vDoeZnVR0ewfjKyetwcwpOxo/cwhyB3u2Mp1DU
	 EZLNgGqgtCj1Cb6SvH6Y2j88w6eLjlU4subdmdyA/V8vKDw7lytKkar0dGC77nDYyj
	 W7GRn3Emwiz2JBnt2NQYs11lfZayWMlTsy0/+meiBAX7ccHg/wY1tQ4wwD+GRQkgtJ
	 8RM9fTOaWIpswqWpJLXMkSjDgKFJOtBIzJk4dWdBSX+luvCxwVRQPDHyTs+OZyYCdO
	 g3Dj6ftS+RUd80EiwuT7YHTMQxlWrJJO4PSA6cfqanvJuKpjfCeKk6QszS2FMr/d5Y
	 b9wdJKVCMEM/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA278C5DF8C
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178726443374.1935.12591496233144383522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e28a9309f2e30d0d4d4e4bc156ac7348b4371533e5bccc8b76a03669731dd484
Date: Thu, 20 Aug 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787264433
