Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36657634
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727934354; cv=none; b=TNHIvQEW274sUmeCEhIbG/T9B0+u1tbqY4Eg35f6sYvCF8cMtVwOSGC3E6R+8cqfarGU/08Iborfw23n+xaTp1amjegfZkfHo4xY9kh4nLnern3F9XHzDLtKU9I7WZ2z0Co8qhd9uj10YTgbXcHIeiwoQbIa/ZaNgJWRn51UKtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727934354; c=relaxed/simple;
	bh=VmxpyZKGdfQeYLRDsRl5pSHESXK5HKJGiFFpCQUBS/U=;
	h=To:Subject:From:Message-Id:Date; b=U2NCyfKAhPhk5UjiJEBxHvsbhSWvshsRcfw/NDvYqBkcYTNI8DxOD+BlrfyrkmjZlQQKoFMm8iwkbpRpB0DU9CtjrdlAvD5KLAMmST0ADqdv9JBt10RBqjZUZ2oT1znYar9EOYVE9BmGUVu72ISBDvfic2U6tHtan07HVM49aMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fpKzq7Cw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fpKzq7Cw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A802FC4CEC7
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727934353;
	bh=VmxpyZKGdfQeYLRDsRl5pSHESXK5HKJGiFFpCQUBS/U=;
	h=To:Subject:From:Date:From;
	b=fpKzq7CwbhvbugxUObam+xv5CUJ1cYrYW+6GMrVWrhG7f3qEha8tTehCgi3oAFIKz
	 KM2u68VQXT2SaUt+AoDTwl7eufNk6guT0k8JKIRP0UITcR//WnSk1yYj04zQyrquKc
	 +xHB960N66epNtSrhBnQ/3HUjzB9tKqwIHm5noCyMscz3QZch4JdYtOq7nSO7H0hvf
	 LDeWqwF+Uz6mEzbkxlGJfc5CVxw/Gl4BSXYKDzEvbxH283b/3jPj73/dHqUkgrw4tI
	 PmUg9hbPuT9ni/TKtVqmnHJhHRt/Lm7gKTjubgzc0j6uvJkzo09rgbJJn3UsIXL/J7
	 ddh/RaN0jojRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 999E2CF31BE
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172793435361.24518.5252463935422074717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a34560d6c63ed7ecdb89f73370c26ae132c2ef10052c678869950aa79f26812
Date: Thu, 03 Oct 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727934353
