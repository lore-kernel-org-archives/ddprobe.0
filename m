Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB353FD14F
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 14:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778509234; cv=none; b=rBp8kPNRVMsFpn4ufB43qrM9J+AlI0oxXwac62pWXYVNJA1pGq1sNtMk8vNhbgWbeLA7C0WBSmrdLxtUgeWzHYJyYgxhrxaN94UtV30iZDTETtb0Vly2SrHeoSF8FTKEnBBSOKd8uOivTXhPftCv9Or397GztYKYXFSYJMQQD9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778509234; c=relaxed/simple;
	bh=lmAfTT//3R4P7t3bSp+VEv2Fun+a+8T/4td/uwSbHDQ=;
	h=To:Subject:From:Message-Id:Date; b=pPKYxH2YzIeIfDJjafhfH7IbO8aVYW4h8VWgjLZgolMC8ZTQLT31L2hgw9PZQ13wQpKLQftNi0yjyTuJTloV70PCpMbJrYnudrlgc+bhmFCN90G9ln09IvkOeYLxNqxq/dJ8OTKrqdLEmprA4iytbvivCtyWRxv57DeoCq94R+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HAaaN/RW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HAaaN/RW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B830AC2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778509233;
	bh=lmAfTT//3R4P7t3bSp+VEv2Fun+a+8T/4td/uwSbHDQ=;
	h=To:Subject:From:Date:From;
	b=HAaaN/RW5XY7rzRPJYl+IL6ZVUX3KtDLIVW9dg/yXULzXwRzKcZzetvcaDL1LlAKh
	 155q16WRpJs4WDm31UfbeeeTqdT24JbEkRb2UKUjXScAqR0GM077AkzAwCzLpN9F0I
	 6g6ocIPyYdTmvALSI9dBHrVVkXFl9FtC3qnWeyxmuRiS9odkgK0b1eqbUPizGZ94Qh
	 56Iav/s5YSBj4XKtDHj/oUFvwag/mXgs8CNlTvVdBTcforbbu1LVB1h0KIXQQzsUrp
	 fWjWro7ReMNDyGJHbc8sccJllQCkG/jU6neCo7TsDrf3phPBFor9x3mQZ6zBBIK+hu
	 LdlH9+tXFdPFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9CBCD37AC
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177850923368.21420.2483200303053398436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 862577f3e1a9f1e8c12c7125f284ca920b217558250e7edf44ffbfb8efd2bd9b
Date: Mon, 11 May 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778509233
