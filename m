Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 692D92F546D
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787371834; cv=none; b=Kf5ZhpUi3ELiJvndMlVdVeujztAtZRqLqnRNRbByzhA1UqrqKVAJOJ4fNx6LeWAOZGXxtyBJzx1AmZNWn6g0NvK26faMduUb2dzuj3EJh8xkSAK/vAab+nuvn5YWKnWchTcDv63DWHdMfWWqHmWkQOHVUZnxd3iN6zIk6TqRTM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787371834; c=relaxed/simple;
	bh=M6eRRS/2YZ/aPzFZUI9hFS2/k/iL8ueYN33+1uv1z8s=;
	h=To:Subject:From:Message-Id:Date; b=GIOW6pXOPgDylSAaGp15dFl6PMjPgTtaoCbR7I/CCJ5QmW9wAMW9K12l/jePtg8q+OEpoGvLgNyeIOvpX9aX7hxLhYs+JeDkNUleYjESk6gj4C3ORMEDJBEcoP41teV67OL69c4yutPPkNSeiygz7HpwHMkkcrmPXu+3Fb8X0s8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s4h9CZd3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s4h9CZd3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F12AFC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787371834;
	bh=M6eRRS/2YZ/aPzFZUI9hFS2/k/iL8ueYN33+1uv1z8s=;
	h=To:Subject:From:Date:From;
	b=s4h9CZd3Ddh3DMDxFIrqMc4cpfyrNtFKLwOiVEXXYtJO+D60P/QB8eY41PKQYs1k/
	 5kNW6ccvDJx+AfHE6S/U88jtpS6Pvdc6WrThWZd/FDCGhfKKy4gmJP3TQQvD5uircB
	 YBJzCBuGYIUtMST14yO56qihNUYnm9+HJFZDlWl9CKmZDPytaxkAkpKyMEY3Y6bPcM
	 wpvyz4465nkhGXxlt6Wq3pWuSNKfvKHj6Mvi2Puljj9DhKi4yovDnozXH/fF9s01mb
	 suNponncLQkjGCTHpi2dCOtjM5ux/n1CxfELB8CZ+xo/fdJterpKt+/GrmsbzJLwFz
	 NwDTNx7Bb+2oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C47B4C5B572
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178737183371.3681.13436149769857626524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d5a4aae27bf7d8d5bed5bd3cfc8f9964b3cf461df55be763b08ea49b96639b0
Date: Sat, 22 Aug 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787371833
