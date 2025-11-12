Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17FCD19F137
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762976394; cv=none; b=PsHz4ZnttCqv3hVMJgKmAeUI6Wm1tJNzOaed2ecGUto/6lx+2oGt8PGDWsD1Q4AdqY5zRs15JVJtfDNVhO6wzvc1R1tOktqZxxW5e0ZOn6Tg6B/a6ehfIatHSevrefZ32FQeN2WnQUGMdzduwITRXonJqDZfRbdebv5E/Q4pFyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762976394; c=relaxed/simple;
	bh=bEAkC7iEUykZp+1uev7M0UqRy5eEY7JsPvykq3vI5bc=;
	h=To:Subject:From:Message-Id:Date; b=cZEw8pHhUBKE5wpKWpPX9JtVi5Nm1MWooBar4f/a8eHo+1wpY4V8O34auIMEbHT3IeRyUh5IKWioeTWmqQpvza94qDVotVER8l6OMJqPHUvIwOEx8I82yonQ6TX0GCOVnDxQ2JG1TliESpHptbAdLhCM2+29Cptd7R5AgAQSnzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QjhRl4gG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QjhRl4gG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01ADC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762976393;
	bh=bEAkC7iEUykZp+1uev7M0UqRy5eEY7JsPvykq3vI5bc=;
	h=To:Subject:From:Date:From;
	b=QjhRl4gGMW/ukngDtUn9QhmL8JjAibwdWXLEO+LxObfsfEYfHRk1ZuQkxJLfpxtED
	 acVj3XiSvgbDTIlKbTSML0eZ4C7KRwFXVOTylRV4lGSQMSKE9CptlcKWhiO3jP+Cws
	 B7hfAShgGz0I0de6lgpEB/Vx4XVdVqqNZHcMlPjI8A4I7UXEX3PH1/TtvLXUjEFsjT
	 3sN1fR/9J6A+nMbxS0GUDMid//JMDa8NO5gZJG9DzOR+44ito96ck642ukE0LfmlPN
	 SSmfdX/3nQogA6Q5eHnyoD11TLGhdQjWiZ5ZIkMKiy+Qh2dTWxua4bPHUO2NGx/NbI
	 ghAWCbWYXiPaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B8ECD37B2
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176297639359.15424.14535971409282567762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3f61cef00aea4b1192582a3cd874de628a3a9220526f546241280a8bc0d5e19
Date: Wed, 12 Nov 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762976393
