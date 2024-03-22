Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9180376
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 01:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711069697; cv=none; b=B9sD+mZYENTmbRYwB5EkDgLg6sm6/oVQtJiGIT8HPAjza8Q3A0Sf1C0JtukmrjDBIubbbfThOGJxdYIs53pzkbmd1HdkGLNY85JLB/H8GPwY8UT39nzlQgulgbRpNKVOQNb3JysL5LzRrE1G9IfCDZpMA8KcbJlS5kTijd4c2Cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711069697; c=relaxed/simple;
	bh=lolXa3AVlctdW5cEp9AhmX7fnjC4wL+5uiN1xyVvmhQ=;
	h=To:Subject:From:Message-Id:Date; b=BhbnhMW2NG/xsMxTFtxp4yYKkqssaf1AcKMKkSOcy607kxv6VwIezgL9H4xYstda9V+hIXpQWtCQDNjV0NhlivxCkZ0PgAUkoPUgss4AvhvLl5gS+QWp+kEXcHM3OgOnuuqW1mZRIK6t4ICW3TGVf7i+bQdZ+5asTPnsR/nxM94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pemDbu+G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pemDbu+G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75AC0C433C7
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 01:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711069696;
	bh=lolXa3AVlctdW5cEp9AhmX7fnjC4wL+5uiN1xyVvmhQ=;
	h=To:Subject:From:Date:From;
	b=pemDbu+GKkc56KCPZLj5cq8IwDtXXUlU3uUdYaixl4mYBwE2GiyU74rROa6ErYLxu
	 /3k+VSDaWe5JoZnjB4k/HX/aLHq0Rsk8Ox28sxOe7JFQM8fwtakLDZZLFJaGo0PVm5
	 1WRj3t5sEym0hj+7mVcm2Z8501Q8JEucF0YDJwoepkkjPwlCjUpKtFGlEbZqcJD+Ra
	 /pyZ/acRhuJ6u+CSBtkugFQ87qaLz6cnEKK92iDw+NJ03x09DuS65/oOgzRzYLT1q8
	 g7hbnbdHvLz3/PNkHdufUzgbwGNgfHmdxu2f3XkXCW+zQZzxB7o/cv8NlLZA6M2IAo
	 FgiMkouDfjZNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62EB9C54E58
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 01:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171106969637.20646.13319810087031558886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 839a3c2abadf45adb39510d9691a2cbb901e0175774265e1883a77533a12687b
Date: Fri, 22 Mar 2024 01:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711069696
