Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3200816EB42
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751117394; cv=none; b=rGSRnLHBmwm5DZ2JFCTKNQuy2PQ+2i3reR47KAIpYNUl7U75sXTFVeT7ObzdOr6WL/fSZqiN6sAXr8SHy7CCvvr352C6r/dHL30Hn15TZ8cmwWeVfXjC3QvPxnJ32pDiSJlOR+OmPbxJvD/e7FCTvUzlUYUtDJHbq6qwnUBWVwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751117394; c=relaxed/simple;
	bh=0HGzy+ZfeKgia+4bmffasWcxhvv5DqcAKIMc9JGhuoU=;
	h=To:Subject:From:Message-Id:Date; b=C08pQXS3nyCUg5mOdc7ybx+P8FerSHwKEHTNNIJL+xr+t5mUsclC3nzO3X7BTdc8zi0SIvIa5WaP+KcyWGKkNYqRRiips6jvqBOhvmcEpEfjio47UR2OZBdldvMIYgCdownt0NPM9MgzoLeYeXnBOKsUy0PXd5hRL4TnRsr8a1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vKtRugDY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vKtRugDY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E8FC4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751117393;
	bh=0HGzy+ZfeKgia+4bmffasWcxhvv5DqcAKIMc9JGhuoU=;
	h=To:Subject:From:Date:From;
	b=vKtRugDYMph8quwLVNJr+/iPOAqOclpYWHsZVtQY/LSliBanWsjFskZLk3dHF6mia
	 6ucoQP8/s8cCAr/1AJbf475MD5D5U0288/nVzxd3j9LorS+N6uqLH9SAn52mPntfBR
	 bZZcOb2M8VsM24luC2qG5WfZ4Wnud8RVYD5+S9LYhsr0Uz1DvKZyplwwO75XNYvkFY
	 OIizGNzvYnubG9uAf6zqJPloZwzankQZ2AbGcXcsD208TUA06uaY+8WEs/idd5qNyE
	 x5L3Egsy06V7evtRucRs0ElWD38d6aU8TSbpEHKZgadyJSMbhcNCgrvrWMaXwaHffq
	 RmQEypcGiLrXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92670C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175111739357.3184.16635965557042894506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53282371f6fc159662498ef372f662c68057dc537568b91cc5e88c6a26ab462d
Date: Sat, 28 Jun 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751117393
