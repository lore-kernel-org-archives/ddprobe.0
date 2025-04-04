Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 489241DA53
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743785394; cv=none; b=ezQvMUxozbHJcnILCyREWY1nah00IyLbU1zEQyAIs1ZwQ0DjbfzcT+01PQsAEcZnzg4c1BZefk9hCUgT2vZRssXMjoux1nBDQcFh0486Q7pwqQh0esLae5FHuPlZozWMqHhZV5tG2Bi8LLTohzi/IB56Yu+bNNRo95LTZ7UPtSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743785394; c=relaxed/simple;
	bh=HSGy2MScDn3T0eZB/vCQFiL5A27Gd5+rhx3nPp3lh04=;
	h=To:Subject:From:Message-Id:Date; b=IMSSufc1pF+5YgpNMiVJJtb/9lQpmTt7aBw+S6yZH01TPHfiog66jCAFNcOu/pyye4mZT7/oW99/o7NViU1BNTbfm9cCBTVh+iJ4Cz+TlsgQv6fXs99RACRMuu+G4afdi7zZViq+6ZxEoWNLq+9KzB7b8k1CZsBDitZ6qtgiZ34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m5HC7CTM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m5HC7CTM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA85C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743785393;
	bh=HSGy2MScDn3T0eZB/vCQFiL5A27Gd5+rhx3nPp3lh04=;
	h=To:Subject:From:Date:From;
	b=m5HC7CTMv0gougEFfdmy6O3hSrNhA2Shh6lQld4Bdiir1oUtJahSxFWcS3vFrWSem
	 F6T0fNsLLO6/X6MMlb+m3GKW2qBBT83oJnDNfuQUAFvNdfbw04QAaxG45zJCC29/m4
	 iIwYOIKWlKjnqYgq3yjgM72TcsP+ttjNEuere2deDiThoy3g5qAN33vdms1fz0ijVP
	 +4GiB6uvsF5I4Cz8KESIr0cTOefde484dVSQjTR75/QiA9sAG2handrpN8pnJqe+UH
	 LvEP1hWwoxD6cFzaJn9csV+VhGeIpyy7wSZLvIh/vM/RMSPpRONTq7i0gqcYH0ixLE
	 05ubo6M4467KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962CFC36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174378539360.21752.14982073758704796483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 557ff8a28569ca93830c7685a268cc3304d634a9b47e55c609d6a77e693c8943
Date: Fri, 04 Apr 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743785393
