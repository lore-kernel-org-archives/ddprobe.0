Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF641DEFE8
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758292194; cv=none; b=b1BpySsv8NDmK4iNAn5Lzx8JzgZwe4D44onYvDYNGUYnmGa4oP+25gBdQXJ3avHNQTuq+tPJJgPv+hU/2gdQ6k8dh/II9Vkq/Cqk3933MRWRKkXTSW/TQDlJY4iSwQBNcl2mJlpmJN4R4FXtqTQ2m6HcQqoopGMXBsX+er6OLxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758292194; c=relaxed/simple;
	bh=YfMzT3z3JPhC8YsgOUbBQLJkx5BbyNrTEi5TBC7yBJw=;
	h=To:Subject:From:Message-Id:Date; b=QqTC/HyFpUatKUcOA7hvG0pRvIoNgmiewp7p0blkqGjjUqezMamJK30PtDF1SYBi+NyjLNCVawLnEnpsp96/ZySIB91mI1VCnfVyx98ZDw8szSdUMsjIbTYh1rLjiHGcerjBuQ2FtyXXhtCAdzOqqczsKToDEi8F/bcvfelvl7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=slI0Gi4y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="slI0Gi4y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB629C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758292193;
	bh=YfMzT3z3JPhC8YsgOUbBQLJkx5BbyNrTEi5TBC7yBJw=;
	h=To:Subject:From:Date:From;
	b=slI0Gi4yF8QiUza8sieqiV00asDmY3ahxXsz4bD7RLuOO95mwNGzp/Y6NzDaavBhi
	 eMMjpRKPU6jgzBplT4tDj9lxPOrpZWco7dPR4G0zVSSZsVn651F086N1U6ipufMxXi
	 tNJgfi4FMe5qJrvc2zESK65+jsYLpEYf6cfwYw+uFTB0kZXsAABfcMQORbUiwqZPma
	 EZYPY280mROEKTK4kDpyK9gFNlx7HreSPU8KuYb3jyIknYw1SWJht0c7StyuBoPMA/
	 wwJYOWgT4ekaFFXE8D9liZo1N0G+vMuP0e5eHg7jeKIc1gYGg3mU1E/vvBrUe5m3e5
	 32R3tw7rQOeyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A848CAC592
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175829219360.11829.15621339300785941368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbf2f67f82847a61823581465635703bec288eeb39324b5717b0f653f97797a3
Date: Fri, 19 Sep 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758292193
