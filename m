Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA13621ABC2
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 15:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740496133; cv=none; b=pae55cY9L0W+a2j73qnxpHP195ufzZgC45PqfjT3D5uJjVUUQjR5eDWfHwMXql1t6pnAStv9X/ZA5RDW+6AndssZV6FWSd/Hc9kBNBdur10tv2V6Y8JTf4iRgyVBrf1wdqrueInedddGWWd47LlaNhOg9jjDvBMANato8sue5ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740496133; c=relaxed/simple;
	bh=F5lNU2E9bAU5n5gUvnocIYIlP10V1h3cGdCpdabkQcw=;
	h=To:Subject:From:Message-Id:Date; b=IYmA0FrvsahR499GERwaSnWpxeMUeI5Skf/9lSePvn018pe8uaI0heUNBK3fBLOMd6PzuxpKRnlWKDeaAj+3UscotJFn+L8T/7Wt1GG6JUxqOJ7sT0fIOu6pTRwKOjMEdJ9msXCbYnzvcnZh81Yxh3bKyHSwA16xDplEUZmjC34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NfGGhQ25; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NfGGhQ25"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56E4C4CEE6
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 15:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740496133;
	bh=F5lNU2E9bAU5n5gUvnocIYIlP10V1h3cGdCpdabkQcw=;
	h=To:Subject:From:Date:From;
	b=NfGGhQ25gjvXgqClo9omol26QASJQtcLmVQOtF7hnUD/RdKCW9jIVhN0DcIhCSnRf
	 5yrqwI7O+UvaFqvf4iBOGSBQrjjyL65XAgJVrh4Km/aRvXc/9uueDgbHoTg9R6eouL
	 LKSwArx7lDHBRQQpOYu7JOxi7I5C+fj6WBWYHmHfsbCc7vCEM4XixdQSCxaHambWh6
	 cAf9KP/JxMmwNeBITvMUTBZbI8MEUpoAPyvKU3TkBILfgpRRalAs0/ulhgeREGI+50
	 jlUYCC/SjDJkd28auPxI35TXTbK5S0rKwE2sKTAUC9WuXzCS54U+p5QnUwdEcpWB6H
	 3uLuJ2w0pd17w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FEAC021B2
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 15:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174049613359.11380.5785398030940719966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adc0d9f3a5f6dc8a208dbd7fa224048273be4b7bdf600b86e2985fb1c706d162
Date: Tue, 25 Feb 2025 15:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740496133
