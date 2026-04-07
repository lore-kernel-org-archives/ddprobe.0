Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388E32E65D
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 01:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775523934; cv=none; b=AkOhlaFMMvB+e96KJu5lHJGkHps4bW/YRoFiE/1kbXkC/kBOAlOeMsrsYgtlYewOGeKjiMHs/7cGgUpSiAkLp3RtpJxXu0a2OlJCeo1w9nYPGeO8LmO6hDI5hsqZLznOesuptaTZ9z8Sb5eo1OGD9mQGZaUs+8RZR4kg1OCjljw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775523934; c=relaxed/simple;
	bh=hRjwsCPi6gL1HKxBXtfW8sUXW78uz/wTbio4XkzCvXU=;
	h=To:Subject:From:Message-Id:Date; b=qkmGWmBY9+t3jzWTBMYUe8lM+eRIRLFHrZr0wIJlRdkJkSVbgHWwubl8rNW39PhFcfazjqM+/XrbE/kJxK+Pq2g14TTYa9BmPN9NyeBkv8w8JbtGNdsehNpF4F5ltLNslqsFftkBqhLB180QUzKQr1JqPm3KrVpYRmTdkDUKtxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CE52GyYI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CE52GyYI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C45D8C4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 01:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775523933;
	bh=hRjwsCPi6gL1HKxBXtfW8sUXW78uz/wTbio4XkzCvXU=;
	h=To:Subject:From:Date:From;
	b=CE52GyYIly5IIIqmX/KSMNrpdC2rbjs9b1BWEH/C/omHkVjCGsqUbLBeWoTrKks5T
	 O0711lPBrP5bBhrrEmkSuCpm0j5YkWF/FisVEzSxAkjniFZ6USntvDKlEPKY+iSxJW
	 bxsZOdz0R/uIBEIMcOyt0LE7NAoV485yIsoRy9n2UIlmhaoT3DRqD2Qtoz/elz4Xzr
	 wMpDlybjfJcqdFsax48FfPEa0u8aG0eT1y2ycq43X5uVWtdQIbZYn5Dbmr1dbyPQ0G
	 ljJFiLM+SkiBdg2xAsPQRNSq4ZYTQUpkPGx8ufxU0OvFAU/X6zpDDMS0fDt/d/M0AO
	 7rDH/JnVugGQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E02FB5173
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 01:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177552393369.4072.7245397750296736962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64dedb9633641d26e39a66bae021191b7aa6161c4a5cc71e8fce42e4ba7b603b
Date: Tue, 07 Apr 2026 01:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775523933
