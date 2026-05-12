Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208F45A79B
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 23:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778629834; cv=none; b=h4rDk7nqrZ7w4VHGf8sRXC+tA5KbuLyC1gaIDg0C4ztuHddGsLB1NflJDVjxs+WCPvWiSyaZkYDL2oObLrBeOPCSh9ePOZiru9xMkYYJc9JNz1EUEJ8C/nBR0wS/DEXUyiWhQC5mbHKlchQTdKegXGV425xYu9kcKd9ecwmCpYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778629834; c=relaxed/simple;
	bh=oTVQ2oE8VxF/3kHrw3ZoKCkXY6jLQ3yy0rDTW2s+EyI=;
	h=To:Subject:From:Message-Id:Date; b=Yrr8EyeW//MvJOYy3yRqcU8E8nq9GLJdem9vUCFUfsJKpz6MQZWDvuqs6lQrWyXnfJVx6KgjVRNgTHaE0q/1tEWAbbq/xUOLAUXhYJGiiMv7vYQxAFnC5PSVFxRb1nNC6oVHwBMBQ77yul3lnswkqbiWRLqGukE25udzdpoM3Ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h8646Ssu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h8646Ssu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAF14C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778629833;
	bh=oTVQ2oE8VxF/3kHrw3ZoKCkXY6jLQ3yy0rDTW2s+EyI=;
	h=To:Subject:From:Date:From;
	b=h8646Ssu83iJXdvbJe1f95BCSK9xrWwpUR8QvZl9iVuZm4LJFRup+vPRoynm9qBxj
	 W+thADUm1AEboZrVkVx+ag7FvFjw0oftyzPcdWZFINpEAt6uLAOeIOXhnxVBdoQAmW
	 OtKdm0ztK8f8Cuz1vrHpDI+5CqTuj9Ow/xYVnmXSMJRvlvAvy904SKtPl5iHjIHxdh
	 XQ/zuCaHzsZBYn0Xcm6smpNS+azC9ZQpsdXVxQr1c0f/LZvuXWp0cH+jgmMcBgrGL7
	 BavzK+raGrRQIjvTjWCVHhj2d+n7mKQ/6Spyw4O5B/qM9cptclchsigPfePm9X3Yja
	 LCTP8SaQFWHXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB0DCD4F21
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177862983369.28463.24393887820624699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 652b1b2ddb41aea56acfe82f9d531d3a0b20d92016e14a772d2a4956c7b0d1d0
Date: Tue, 12 May 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778629833
