Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 259F0DDAB
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760479194; cv=none; b=n4D0thttq7Tfzr877UeucKQuBCU0D/+1cUep1kh+1oxemBgnfwBpPmfCKeQ0FN62hu2Vyo6lKFH40FjEjGxcEG14DM+AsV1fHQwzWMEpl3LvV3joPrJqj3ANgDZ2aXkiq/3rWIJhX5sXlCRSTdtdwm0H1Sac6sTwUFFl9DosU84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760479194; c=relaxed/simple;
	bh=ZQYY17Bgrowmg4ZBfdG34inT8a1UM6PZM+9a/BpNg0U=;
	h=To:Subject:From:Message-Id:Date; b=dzm7oYaypP7A15l8KXVvVqGB7dymLl/m14i5IO0C6wm5A9GEiZz8VneJZS8H3HcO4KYx9QYhQ12xltpcDgPB/yxl24aFOpK0IjnAE82uK5i6pzClFh1rkPwsi1fnB+dXOuQ/GW+qAqBs3N71CKBetdjg9NERqkD1kYr9IX7jc/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N1m+ucKg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N1m+ucKg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F850C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760479193;
	bh=ZQYY17Bgrowmg4ZBfdG34inT8a1UM6PZM+9a/BpNg0U=;
	h=To:Subject:From:Date:From;
	b=N1m+ucKgkBye7naFR24oUOL/PCVQlbdwELTo0hp1gM8ld6Xfu9OQ6zW3NzVwHTORr
	 mhIxWk2H1b/wryUdPsuFUMDO5LYtKszT2Wgifcbxu7VCLTr59O9GP7HkJIuUqmGHQe
	 Dm1oNzYRHfdc84f6vl6qFj4ex+2jGIeBOj73c7ghwyEHeg79cufMTYi7cNNZikaMvV
	 dLtgfrBCmnx8SwjCb2Z7NZ8KF+2kGfcpdB+BM34dzifJbwyNUgfAWNg5lf8qwJmh66
	 JUPsyDDsFObWYq+coTtRXyKY6o6jYnGvx/o/KXn1dDrukqEosu/InhKHXJ4uJHK0MF
	 YrQ2Erpj92/Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F855CCD184
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176047919358.13362.7196189213410474450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9c3faa8ec550f5d9fe591c527efeee3d7670bd049d9b0b5616b285b53a3ab87
Date: Tue, 14 Oct 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760479193
