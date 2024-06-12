Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55C5C15622F
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 12:18:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718194703; cv=none; b=J0QtZyD/kpe0yb7hbRy4cE82IHR859dmhzN9omT4uVgcrJ87egijNacswXLg4u0TANfRmimd3v+dQCa5XmiHOgjPJVl+Qx4Ghh1+6jQVkp0GnPZ69Qe6QvbHlAMpEUtuKHYLi3OHkBDnVrSBXCcCremyLjqc61z8H2GvFGSePLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718194703; c=relaxed/simple;
	bh=EUu9QkY0hmfyYrRPdEeryl/84WpWmjbV3Ov2StAItR4=;
	h=To:Subject:From:Message-Id:Date; b=hNNTYdTk5348MBRsxAmpD0B1YxSI4dzaV9kduRmPxHEyDv4h+lThMwWYL+4fzyxoCuslDTGpC5TM/jOZ91BmI2qajbZ6Q/pVCrV21b/ZAurqmzkwfNhsZQuSgce0Adi/YTQWwdG0bCljPpWfAWidXB9bmdVci+03YVAOQ+flQwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S1oSsFOR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S1oSsFOR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D85AFC3277B
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 12:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718194702;
	bh=EUu9QkY0hmfyYrRPdEeryl/84WpWmjbV3Ov2StAItR4=;
	h=To:Subject:From:Date:From;
	b=S1oSsFORWtF8PqVTiqbvYomuXlFgjzpwjXK2+Jpiq/V8MCZDTpvEln+prqpt34dvs
	 oe+qVt7CltYr3vr4xqZZ5/QWrZcCy2f/EUJUvnKEj1liLoQbMo7aIQWNSxhhWr4dYp
	 jQXa/XIfsBgD6j4ukLuhgrCf58Mp3poxwP0W3eKnyyffCXCze2Q5Okluq+1eMU95UN
	 AK4tHQppHNxslqvV2L8K+uS3AV9Yn3/IX0jUyubXmB3gQaK1ngH8wBk79dLkbCOBzf
	 hBd6G87yhuQvn0M0t2OGPRih0EepTWmKzqvk86rueywxpnJ5gD2jCWIkbJMCClIx5X
	 /FQqb+iUAOrOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C63DBC27C77
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 12:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171819470280.4430.17613522331777380189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58347051ba033cb73f1a1a8c773d9cbd96959c6de2f5e01b3013ed4c2b1667bc
Date: Wed, 12 Jun 2024 12:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718194702
