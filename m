Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F8320E6
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757624394; cv=none; b=mDk9lPElYXisKMcFqjzVMNWZnOEArFwmk99/v+yBUfEe4wM2h8C+9XxhnxmSggc7uMGg5TVkxo2qX5TAuGE1L8BVZ+/JiELINnnzwSkXRE9tGy7LHbiy62TYAmSddWwfRo4KaeI7Ym1ZBlonFFZjQ0KcEDwlzEcutR6Wn8kadMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757624394; c=relaxed/simple;
	bh=ce9WWvsY5z+GrFmR+WmWB1JeVX9qYELRjVm8wPT82f8=;
	h=To:Subject:From:Message-Id:Date; b=idb/tdgRNRIOarxd9Le7bhziKKrUG2GORxexY/pBd/3nbHd8U1FrvW8s7jozVxRBu5mHO3ZGaRCjBdIDgqxQ2pyOliDP4pmWoVD4Qr9ztl56Iq8vqVvHxMGWd0+T+SfIFUKhfhkg/swXIPNHBv1jjCV5x1GWiiKK2YXDPcsVKz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QOV3hZDO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QOV3hZDO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29D0C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757624393;
	bh=ce9WWvsY5z+GrFmR+WmWB1JeVX9qYELRjVm8wPT82f8=;
	h=To:Subject:From:Date:From;
	b=QOV3hZDOD+5VivlONVdTcImEziKfqneFYXEferscKa3v0ESCAiTJUdQBTu7Yd1Og0
	 02q0Tn4Z9b7jYtAEjEOe1U5jYqUUkWtvNrFGdD7cCnDujZL4uwxfYot5mL1Sex/BaJ
	 fTz6cTXhIOoRE6UJ2r5JaEnB2EM3p0hYs9kk456eCnGFAIKv5V771cZCc8Z+H9OKmw
	 xyiWBZw8X0Wjnv5ld+spRFmh2BZlB8wn+ULbinheT+nkF7+RDADkVXvEpRi9UTqX+G
	 0lZyBfh/n5/vCOxa2noJ3uyWj8TKbjI83H1wEChvNxMTE4IGpiUJB3+JNo9oKQjBxm
	 +4os9VdelzUuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF48CAC58E
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175762439358.7195.11954011545472085193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: debc9120bac5344c9a76b5704d473f5e545d1c4ad0aa4f2efffa17a1d3c7d97d
Date: Thu, 11 Sep 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757624393
