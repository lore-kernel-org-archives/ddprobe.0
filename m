Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 405DEDDC5
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762085994; cv=none; b=nYnwCbBjZewhgFc5j7RdC7S8vQWnY/6vh+ZR/Ph4Et3xmAMWwn+tdlVrTKdDukSVdth8fQtzMi5LW+uVS070sB/pY2gc88V8cVTvfh3gO/W9R+tWfZwleWxmRzeo9Yh3RiVTTNhHrakAaWPG8lU7yNGyc8mom/78m036i9jOmvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762085994; c=relaxed/simple;
	bh=KI3+9NK8EzmNOhOfQZu6kt/qFZCBHb3donrO/Zihv5I=;
	h=To:Subject:From:Message-Id:Date; b=qupLKPVu93cIsrZlDV+3KFeQvuL7jY2NDSG0Fbn8qEHL/uNpIrcyHb7umyPDl/hAoLO0gCtbvc7S/vNyOchYqtTZtJglg0l9EwlUp2QGvFiaYLAyOUX2YCNjQwTpquEEBn6zDDwEPmNOsYO5onwrti9JiqhzbQkk6QqGacNLgwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CYSJ2ICn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CYSJ2ICn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEB95C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762085993;
	bh=KI3+9NK8EzmNOhOfQZu6kt/qFZCBHb3donrO/Zihv5I=;
	h=To:Subject:From:Date:From;
	b=CYSJ2ICn/vf7SsNhEm3Bi4CvKK+CLrQJQZHuk3VUWgcgOzam5PzA79VSIyH1aRoGK
	 M1hZCJPrT6lFcVPKqZ+5I4L3KDLb2UMQU65CY80KJnpkGROh8wVQTitHfhsiG/dDUU
	 nLPXhpGMhhngxWUNYzO9eO4kaH8roKFb5M45y3DiEQe62Q883kp7y7P4YoNrZakvxg
	 /XEIeoeLR1yw4bnG2e3nitH3Quf4Kc1fudvsxhrvDxFIGoAvCtcDqE5a/DumO11/1X
	 5L4LC1WPYub74wA+1xRQfz1ORuuS5SX8SHDPPND88SThtFS+TaO5Ja1ZLg0S3OySKC
	 zRXU7V2QVA6nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96B1CCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176208599364.25284.10848527152028691044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1fdd88a09fb79667976817cab23909402956abce82bb3bf661b23122397bf1d
Date: Sun, 02 Nov 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762085993
