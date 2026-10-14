Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C46AC262FD0
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792008034; cv=none; b=iMD2MhvyITWRumLBzAGrGV0z3bLsbvWHdtSgf5hlez8ZhCNuwKhJgzJsSuqy/NR+x2kgov3Sg9K4pOpHJVyTafewq6GLj1DHa3HbazB3t6D7gYP88fxinbc1FvUt1ytIaf4Awb2AXzQR7n8Wth3IkOZZL1q1zziCPA1mnA4yQzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792008034; c=relaxed/simple;
	bh=lL4zYZY+ZQU14OKOLpYX/MB/w/ZdJfVAPZnJf57R09w=;
	h=To:Subject:From:Message-Id:Date; b=MY0rQSvnxrQMNLSfc/WG/hunWEqg4Va9J5OWF7i5xQC8MCEA+IFI0K/UQRNIUmwJHXhOdgWqwGZKE+SfysNXcURp3qyt0+q4RjbokqTPRzHyNe1zh1KHlz2Om7TR6yESkweAkXbHYi0ypIjcIAGmM+vim6cHZ0RE59DeCTLpEt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=poAYA8iR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="poAYA8iR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC583C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792008033;
	bh=lL4zYZY+ZQU14OKOLpYX/MB/w/ZdJfVAPZnJf57R09w=;
	h=To:Subject:From:Date:From;
	b=poAYA8iRUfsbWQL9g7tBWVfPx/0I7w2zP571EIBwulm/QOKcCDTWT9ojsCrmtCuAo
	 EKb4ENP7W+5YA9z8xW2fGT1m9aPt1G/taK8GBgJVJ+8M+LwvD8Z+c5x97LlpCUyCIv
	 S6DtPUk4v4Mev4a53DKkpXZCWSo+fZZBDJ0xZUanYn9j6Qs8Cy03asb+dylcRjq/Rk
	 wt7TbHVvkxUYd/le+ErN4DIwBjNUE3VdgzRt1pABa8P+LLDIIXdYOmyMT1P7l2PFCy
	 9RyAf/AvM1KxOQxo9GFyiHkmRLCxlfWClLb+9+Vgbon4IJ2qYGP0lLoSeLYA3TnLMW
	 9tkfsuLeLuN9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B66C0CC6B2C
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179200803373.21645.643119396391251146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a026f08a7dc055d983fcaa52f6df9227c1021449aa8f5a366fc1cdf7afdd036
Date: Wed, 14 Oct 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792008033
