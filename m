Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47BC01E871
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722194754; cv=none; b=knlYq+NHA5awqt+q9ykcBUFHX9Hj2SoBTt5QByx77U2KmjcCebceoTlO7ESztpyBjeCMGofnQpaTotfk+3b5bItIGgZLXk6XqO+EzURFQenbgLc5FG5ph1Y5YW3ijb4ofP6DrDLawzrchM06Z7rjKv5Spptd+jxn4xLWyF3lez0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722194754; c=relaxed/simple;
	bh=/mmj4yB+iNY4jGnUxC6jN49vg5Cp6cUZcc0h1VsSVsU=;
	h=To:Subject:From:Message-Id:Date; b=J1ENXaVA1yZR/kCe2Nd6j3E4CT/8BgHrJgwU+eu5FWsP+6aNUUiIc122HRrquSLsoi9CtVXyg8CKxK2e3FyjU7RK0swp90CJQAWN/SMnS37DeKXIC1TrPria++J1pbl06i0HfAmkTDcQPGY6IDHrhyWtxt324d0YXdpD3K3Jm78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=noPZjtMH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="noPZjtMH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1490C116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722194753;
	bh=/mmj4yB+iNY4jGnUxC6jN49vg5Cp6cUZcc0h1VsSVsU=;
	h=To:Subject:From:Date:From;
	b=noPZjtMHZn7mK4RULNKj8S5NL4GBwvHPY7VP19sJGTZv4Oa2w3z6XGHFhg1jKChhP
	 0k0nEKjMsYtlu1GOHqC9CKw36ycBUmfXOjYOtotsfEXsN8gcnHiBbr3OSbNTkH9p5q
	 URkr3QNqm6NMcGl9KJv8VVWdyFxKM2n2yjK4cDls1J5DfA9NOv+rJ/16BG2VY3rUHM
	 sy7Ft0KrounqHLAPdYQFQUAau8/gjb5MqmTTRpfvejBxpexJ3AyX7SPaXJrl7uB9OV
	 VvifC8C3KtVU/JbqCggcusOCKGyRkADws+2wAO1BK7GnjQqotaSDQjafRABxD7z+rJ
	 bKPlZRT03WpEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF7CC3DA49
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172219475360.6296.11551845986481023972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: befe187b42a62cb1dd54b958229d2e2de93283c2ccd56b009eeaff9350436f21
Date: Sun, 28 Jul 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722194753
