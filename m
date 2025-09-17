Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 128E02F363B
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758082194; cv=none; b=ReIPlAzD07GKZGAACL94Lro0MCK4wHq+qNAmeJmS4S4eEyQPfGN8Y86mmpsDy3/hQpS1o/BhAw9ZLYLe/WKVlamjK+qDN0lVZo7YTjvlXYDjFK+C9RIZdEGEAMV7DRPlduxTQCRj2RW0Ys3YzE0n11yBsU2bUfzLV1E55icLIIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758082194; c=relaxed/simple;
	bh=favbYYb14Kn75iUjQKxjWiFyewdhADvU6a6AE5pMfw8=;
	h=To:Subject:From:Message-Id:Date; b=G1DMuVgVi4qTrFJRHU/bbIVd69rdWDLZj5pgdCobecZ0iprrp4brEEzUBn1Zmy9FByPd0MpP4mvWqW277NVSRVL2U/UiOBCHwv2T3mR6ydU6K20Qk3hUg1HAGhjvJ+6Pg/82LvrDWCXi/QH2/ToA0XoY9fuRGmC7Ja574GCLzV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UCYOeHKx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UCYOeHKx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A141CC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758082193;
	bh=favbYYb14Kn75iUjQKxjWiFyewdhADvU6a6AE5pMfw8=;
	h=To:Subject:From:Date:From;
	b=UCYOeHKxjV1PWMtZAcB7D6JhTwVzsfWE8KlgvZ1munS/u9YMJDAZKkeTSi2kbmEq3
	 tcv7O9azy0/2TuMJdqFLsUsxMovbo9jXvco39kmFZzb9JgPi3kIQs/VLuN+jfSA8dc
	 mL4txelsYl4P2IRidS3K3B7GjXe6kQxjSHrj/BniBVnpA8d8+5oHEJmFtup02yxhjw
	 Q36f0jHvwnQHB6Ebk5qyht8FnhvqYlg0xGVbXIuexwmFhEnmB156xQ04fBSk4L4wji
	 IIPNNtVlv3TI7Y/7F/M+xZFB7CvzwimzK/NQZh/11WYvvpi+Bz0h3WnunVTSLLWglO
	 JRx4vdlIK2E0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA3FCAC598
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175808219357.21174.8679834704281065405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f1e0bdd437eea276a74afc017064bd3a8ce4412e601aae90508276c2599cef1
Date: Wed, 17 Sep 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758082193
