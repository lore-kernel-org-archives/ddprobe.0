Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1522A305E1F
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758732594; cv=none; b=fhmYnlOjugRlBD8EERGsj2iZmwJfm14MbTVQZynGGQHdppdc+om7gP3QBIl6F1SBZRqpDDykCIbvoE7ZsIKanqvou3nCikz9WTK0DKCbuSuu0EjDcwDRkeCJOhj2VU/KOc1yi3gn+4WLRVYWQ5UEBzez+nVLRUex0T+ZPrvSIGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758732594; c=relaxed/simple;
	bh=JuOXL2vO0vRXDaZaQC0/RmgIa3il9iWlGhtIoRVcpsE=;
	h=To:Subject:From:Message-Id:Date; b=bmZMbVQ7hfqp0On8d1MPrejvPDWyQYjJKy9rbK8Q2LkSNxFTniSWB74wKwQ7U1xYpWBMOaeC+7d7P+l+WqwDG2jxB6DWCq93I+BgwU2xi4iX+aYbp9BXelKGlOhv7Ry2bbPec5AO9TkjcIUHTiZkKVwFSPw6Qy8LsZnnlmCs+5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cR/PMKJr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cR/PMKJr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EC8C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758732593;
	bh=JuOXL2vO0vRXDaZaQC0/RmgIa3il9iWlGhtIoRVcpsE=;
	h=To:Subject:From:Date:From;
	b=cR/PMKJrWIKbEmAenNrBuCpawmQw0mGWmCqzFjT+uQudNvgoqBucXL3FGlLehODEp
	 GuaB3UiJnPNeHYsrfYQrMCGGoiSZn4NasRci/esb1QrPDfKdj3ptbBP5uHdKBlPHwY
	 kcwSG3EjpgvIvy+4bkerOkeARoIADt61rsa1EBnrnT7xMgLVLVm3zdFRgJ1M17rphN
	 8ZvFtg9hzoi3TPhbwx6KmYRjhU3KzO1hEvP0Btbmu23LVEcYLXfFQAzTBv9GixRVvE
	 VnGv/o96qmt6A6GAGIsq2ylsgsu34eGkoBL7g0/TmFINIOmR4VPo5lcanQDh7O8dYQ
	 4mOzv4A/4wa3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CBCCAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175873259358.11593.13495793752328300575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16c92d8b108b8d91b7d45cea6aa0fdb4385bc883db08a1708e578b3d870c2e07
Date: Wed, 24 Sep 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758732593
