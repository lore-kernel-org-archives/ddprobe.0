Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D39F54673
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725873354; cv=none; b=gfKCNWNqkMXqSx0SDcNhHChQ9XcW5UFTAXN8jJmnysvt1fu8QpfUi0bcYcJj9DidFNdcpUkQMmqRSFX61vrsfjA+Xrfzvcu1XIqIlXJj43SohzvKNkg84Uks5s3lsErjJBa/TV1D6FZmneG7lQLGx0CkvlJY0qwrEuR34DFf6Dw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725873354; c=relaxed/simple;
	bh=dMoCHrVe8uiGR3RtVYxCNTW7SJKQQxPcXM5H+n8NLYk=;
	h=To:Subject:From:Message-Id:Date; b=i0ivD6DU+5Eo+wHnCPMRncjoY4KGeY7IX/EmDFpDR2euiwW/G1nsNbHXS+nCG6aVOqPHGgWgpbP3Q9Evh6mCVPI4M/YYmwq/UDDh/2H0ujZMK2lSuu1faM0wtQR05Md8TB6wjcMZgMuxboAe0UbkcGquz8jKxEuvjHQ4XvjJ7gE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S8B78dkm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S8B78dkm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5FC4C4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725873353;
	bh=dMoCHrVe8uiGR3RtVYxCNTW7SJKQQxPcXM5H+n8NLYk=;
	h=To:Subject:From:Date:From;
	b=S8B78dkmbvQ54w9N4dbSGKTBe9oM7ugaF8fY/DKObfIeYZXTfwoN2OJQhBPGot/Bn
	 FMJRlTv5CjOLAVLbsCjGmJNqZrEC2SHnueo7BngzccOPlpcLv0dgIm7jkHYOAavO7F
	 +y6lt6OhFBWokGYH25GWsfFSoBwOgZEOYUwuyS9c+GnhotKyEwqGa3pVu3NBJoXM0V
	 cbg9m2cab0HBNxufPHEelmF44GoRNnJmm7QbJ54AZim/cNZfZfXAa8AlzY6u4Jd6WA
	 myaLysshlFPBJcFuBgFtU3dTEcmXsRYusSJYM0WZK1M+JGE9eANQoy92t0/jvzxCCc
	 oXOVE0QRBXNcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A103AECE579
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172587335364.30817.2215008959711030413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33245a51399b898d8ef26fbbe46255b42117cb6c02ad9adc06ab2cf094e2b3a7
Date: Mon, 09 Sep 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725873353
