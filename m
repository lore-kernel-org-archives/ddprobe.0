Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F435481CD
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760663394; cv=none; b=uyNVRN227g1oOTKIJ5/eMT6idlQMol+UQ3p6NTlT+9IfFRNy5jGLSW008KirqtZQtHnUy+lmurN7ARg/9h750cgPZwrh6ZQj5r0V95ZbZFH3r/9nqDQ7uGY2HA/r2Xa6cPT4/ivWEmWGQ4T7OGM4m9WhrAZEEnxCGoiXa6qdS6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760663394; c=relaxed/simple;
	bh=ob3DeKtH/mBEEdXRIqGxzg5DKKccEJwtsDeJawAQGSA=;
	h=To:Subject:From:Message-Id:Date; b=N589OKMCdxE+K1WPskUzL65UlrFc6y+CVn5V2nQdhuLmFBKcpXHl90fuMK4EC8g0b+V5buMJW1nxjZPLve75eSng6KWNcfFk5N0we8Uw7Y2/9YkibwznkV5gDHvQHutHjYF6Od2gMhLLUnj3ktP2O0dtN4IUE1CffVP53Sipkc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mmERoYZ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mmERoYZ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1450C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760663393;
	bh=ob3DeKtH/mBEEdXRIqGxzg5DKKccEJwtsDeJawAQGSA=;
	h=To:Subject:From:Date:From;
	b=mmERoYZ6Kj9WmpicN2NAyWx191BDM6TqcDhRvQECyqC5sq/PvQYewUI/SXaurOq8I
	 zt4AWAg+dtxcF8d/hVCj8v8xJA4UF4W5n5LesW9RCdPhREGqPwrAatiFtvW8rByZ2h
	 mv3oYZe11MOdPaOYF68XKReaQSxue6yks9lv4RCR9AdpgdqDo1HVnlQI/bQzytyjdu
	 WGRFAPrCdkR/IPOlJVNm3UBvKXkkVY9Aut6bxyGErobqIp+KUiqFQuzf4HigXuK8QO
	 xRdrL/x4I2A3lzbVO9OZ7vuwzHfaz1saqZOoqiadjqK8tv0/l8/wPp4Pc8kSgnl4UL
	 bn0uNb690KuUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC06CCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176066339357.7288.13381402999760985463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 567e984fcd22a397182a959e2b965388bc39e5e9273fef4c4cc8f562dec4c84c
Date: Fri, 17 Oct 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760663393
