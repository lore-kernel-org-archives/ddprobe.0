Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E030E1ADC97
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753453194; cv=none; b=hdDwWyKay2+MG8dPxD9vmU6kRjP5PoaCnZN3q1lnqDqg9HXbjmT0wV3Vpky+xwJHAaSAOz695OhiqYOsssKLzmoZZWWpOtX2xcdT5BxSnUGcJD6KY0ganzNHAdTRaLV8SjS87Mbq/ZoJRGaWqL0VgV6MubKyuO86JILMq+00vZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753453194; c=relaxed/simple;
	bh=NP0giaL9M33xiFNz+B1qrPGWPq7dbn3ygBtHvUe9HZo=;
	h=To:Subject:From:Message-Id:Date; b=EAsWLanI95PIu0OcZShY/K9ibOHzhODThA3H9psmbRqKtIOdKw6mIKkkZfz1R16s/Zn9eNAECpB2fyNOkXt6BpdkqLAfOGrEcBcAQeOZdXJKb7SQgbuGfqfdGrxMC3c6ege/hyCa3WbpeMBk3ZTU2HPqxXUoaKBXdigA59ugyD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nQF2/3GU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nQF2/3GU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3633C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753453193;
	bh=NP0giaL9M33xiFNz+B1qrPGWPq7dbn3ygBtHvUe9HZo=;
	h=To:Subject:From:Date:From;
	b=nQF2/3GUa/zCuD/W2abCq70F3UEFSSSkeFYi6lxOGZZQVuszUJ4X/IzqAhozYsF5q
	 RjX7Xk6rUMNKV5U8q1z3MZfAhyK7XE2As1OfG8dabZSu7di3AYoT9/6V2I18WpJB7P
	 2HqBbfqnTdkKkc2jaaP3cEjE4HeKzF65Czd6zEsv8+iEI6YhdmJ1EMIP8qpdxh/ZkK
	 GgO4XY7Md9UA8ee2mD9/9eSjWSgUFet2QedwmLdEIDeizO12ia+WZzN8Q7OVA1jOhW
	 6mqoX3YX0Te+IMF6Yixi9loUAVXlWbpVgG+bR6xVrB1AdVVK1xOSCkXhltvLB6ietl
	 4g+Ms09WpCgjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B84C87FCA
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175345319357.6769.6118351317820740433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae5b669dcf097f0626c8949fc7fd292e9c7944c47f8b942aea0757040df21697
Date: Fri, 25 Jul 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753453193
