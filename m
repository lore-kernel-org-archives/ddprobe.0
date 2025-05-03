Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 422EF9475
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746248994; cv=none; b=n7ZtSP0Vkzk5L93TBgZ3oo2zv8cW1jKvVJZ4/B+umeM+ns15MTUDkb6LB6wgW43ogHxtcOn1N1tpPJnWfsX+/pH8UrWBx5wED+S0WPMdkS1ZqXJlgsCnSLOmER3tU/MHLkRvcWmI1vVrs+oBVRKN4pKJg/YcUSPf67rM5HODsnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746248994; c=relaxed/simple;
	bh=Kxt3N7bY2N9URfbEdDpAqi2dp4KF5YW7m3ODqEqNt0U=;
	h=To:Subject:From:Message-Id:Date; b=cXjC2VOqWt/nyPvCNysbBd/1C3Ufw0g7d9GkncgZvw9PqP74FQ4sjHqUdgeLe6bxEaR1X/c7/O5K2Nx0y7eXLNsN95UWPxZLTjTwCtf+fk3EautdtVQmo7k+6+gCuhQOQ3+PxuQotlhokyVkg6aPZkeVFR/r4n0dXqXV0d7u9Qk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i3/d5DsN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i3/d5DsN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5661C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746248993;
	bh=Kxt3N7bY2N9URfbEdDpAqi2dp4KF5YW7m3ODqEqNt0U=;
	h=To:Subject:From:Date:From;
	b=i3/d5DsNc75dTcqkTOQh0IdnEG97xmKuE45IXS4Vt8pbzMmpgcnXlla6hVz1HO5oU
	 SE4nNYjz/3xDeHbB8HAnxhp0rNof5bxDX7+DCmRCJNg2tXFN7K+4PF30w9a1Y6fSF3
	 O9K4EZ7GWpxjNWxb/KeSyv977UOtfZRW6WwheADi+nLEsoHHH6vnj3JWDXto7GuDaC
	 oQ0rGl3WyhLTKDvexE9YLBBFBfj8Mvrw3etuSVXyaNHRD+TuH0TeNkGWdFp6Iy+Byk
	 pVMWc0F+L3BeS51XqxlzCU00EWGkvJjw5nf9Q8X5hNIgZMp3G1hgwZx/kM90GhPV0i
	 c2yKZk4tKqZkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FFBC369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174624899357.31904.6717087621023097893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d87aa3dea56b5e18842f1c95fc40bbe3a13ce9e6eb684679813cb1dbd2ccbe27
Date: Sat, 03 May 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746248993
