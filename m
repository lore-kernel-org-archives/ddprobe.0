Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B1DB2C21C4
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761989994; cv=none; b=nMX5/Bj4s82k0fomS9kwwLL8SGPvjQ4L61rWZsLGBCN16nQ7opKPsTdDoS2oxnoua3kWD8ljC5rcrCENH+GW/H49sviBrNH1rhx+cP7HSlG+rDY/EYkBX8XdK87NdPUdkcLYIyyu9JgVWhrQjF36a4RtOQzpEPT0jLcwXdTKOQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761989994; c=relaxed/simple;
	bh=qTyJHdOXBSfNWFgpzw8bpeuBMwpkHKBNg0w7FbAMcjA=;
	h=To:Subject:From:Message-Id:Date; b=TFGh05QS9MCdfdY8OcxnncIYSvrzg+GjjEY9qKMALaVzb3l+pjtgH5zuhnBFklolJchaYV6WPUiFwRnvZty8LCcWCcOu/OAt8ZGBiqMvJTVPCL9j6KMJ9WDpeuBQ4IRJCGVx5bDp9w1lWbkeHokWNxZYXi+NNrue1Na/OKPR/jE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PXDlFar/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PXDlFar/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC5E3C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761989993;
	bh=qTyJHdOXBSfNWFgpzw8bpeuBMwpkHKBNg0w7FbAMcjA=;
	h=To:Subject:From:Date:From;
	b=PXDlFar/s0WPkq5lepnopzULiQIblWLSicnJKDosqXwgFl7kLUAg0SmgqcUokAUqL
	 TRvIehMpo+AnMGgT4PMW6gJkCiZVDz2+iQnCX4XILbtQe2bGHn+3mqkEEa4UgpiQyW
	 qrm3TuaT+yuJOH/56Mcn1DdAGnkMbAvOdZuMBYmNt/saxJtkOemcOzkHNqLJRLJ5wk
	 ptCeos0q5QAT7uU3+9h8bkzt/Y2awSaky/YIet21e0pmQfJQnK70pc+g4d2kQh4zmm
	 6epg2r1jWcHl4bfLuMbOIYv+73XTWmWTyr4bC398r/Ptu/6IU2s2Hh7b8x1PZYW5Zp
	 U4VYtKLqzE/yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9820CCCF9F8
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176198999361.1727.17165605580078863033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37e2f7b80dc140b343fd3ee1d6d4a7a84c858b97bd04653df102c59038904e32
Date: Sat, 01 Nov 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761989993
