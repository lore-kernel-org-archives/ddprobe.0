Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2659E383BF
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723593354; cv=none; b=Bp6zIZ+qBJSFGPyn+BkcI3DVZEaD+jQPEXIQTkjV86hqbV9l3NKWEqJkaIwk2iC7Sk8UKc5AkWymK08oz2End4LXN8FFeD061I/otz7eDpDWD0QqAYPhTVuXMdKXjfi2jfRKqI2uRqkR8aFQGJ822lPT3/xYsXgqfJgJHrS6lMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723593354; c=relaxed/simple;
	bh=c2HUdpTTCL6dxnLD8AAjok20w3WTh8GFCYmMHTIMn4Y=;
	h=To:Subject:From:Message-Id:Date; b=CouDODQLmDIlBFCbFHUvbNuQUlYPqqMk4Ke2Owp4EA6RF/TCkCL5zyYoepWbvUob7eJ71QpE5SOTO9N3E8cbdkE7jj2C/UuecDqo8Yp2VdB8XH6v40td+leUzQ9kqxujoUoF02nwSCLmX9rQTZHW4P38mE/p2ja/VCHIAkS2iLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I3E4oeoa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I3E4oeoa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA305C32782
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723593353;
	bh=c2HUdpTTCL6dxnLD8AAjok20w3WTh8GFCYmMHTIMn4Y=;
	h=To:Subject:From:Date:From;
	b=I3E4oeoanzyFxi9R7yLeMYW8hw1HYVzmRAhvwR3uuTv+fbXw+2+cz7o81bvlKI6P/
	 YEAWpGjpJ3HmYYQzFlSJ2XvmGA3a0wlLdrOljH+K7/h4C8BU51tYdjnO3zaP3nOhnD
	 q2XruCceI9Z2R++V8I4FCtwYlOSYlxt02JchJyj6rwY02X9SdpHDTX94j+l5u7YIta
	 vy8An62msjMjptW9Bm/nKU3KeGB2LrpeMVnG3XMhVm7iqB9l3+K883ktSCfjglYQHd
	 mr3RhyktG21IDW8a/PwOusiCGKedgguyq1SXj4Tq5+y1jlSWNZUtUzE9wb1YqKuCq2
	 R31HYUCBydsEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98631C52D7C
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172359335359.24817.5396734881308737633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 915b0203123f1c95daafb5f06ad2d0a0d0e54e9be52635426408715e1f14f3f2
Date: Tue, 13 Aug 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723593353
