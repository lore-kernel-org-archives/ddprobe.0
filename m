Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAD8312C549
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728767154; cv=none; b=chmiysWEzkJYrlFIKeFulRa33DGyAVuJJAwHKWy7zrWu7GqUxtB5HYs7DC7NQPp6vNoBVbzY4v8hqk5oCLhwHeVPyKe7zOpZooL0YktljHF4lWt3UrUfgVb6YZP+iHZNPZXZuZ9YJXUGk3qdJr4iXkohDuKdr1iH59BhEswYjBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728767154; c=relaxed/simple;
	bh=aN/7tuGcjwhibx4SfPUfnnxw6pnaWjxMtdds7hFpYZ0=;
	h=To:Subject:From:Message-Id:Date; b=b77mRECr8b9n1Svy0gINt8NV9CfRq3EC8B6aaG0l9T22JuJ6lP+yhD03wRUkAFsqCN7EedTydf/+Tvp/prdTWqk+DWqXdOcIxo/rtINiG4BqHAgIhQsBt4LeZNrvjAqvh66lavxwecAtoS28DQvfRTKSxkGsM0OUbVGwm6+Fzf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kAhClYeA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kAhClYeA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBE0AC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728767153;
	bh=aN/7tuGcjwhibx4SfPUfnnxw6pnaWjxMtdds7hFpYZ0=;
	h=To:Subject:From:Date:From;
	b=kAhClYeA8dPrLOnmgnFNCPGd5gr6w0CBMN8bLTqVyJr/yoPW0VqYtZPkcdmH2T6b0
	 LnTXFrWTXQb1Ln4681MGBK8pxf+OdNv4bYmuvHBiX7SO6CEiZ8kPgkjDGwzJC+/TlQ
	 Y9CADEPX5s+RxprWj9FpN2546UR8bIulW5ugHq2NHxe94OLk6cTTv7hBiA2vCcr2jO
	 qetwp8k108M623yN/EvuN1EcjZoVNBRbj9sc37nTIGOWJJfd/uGTalCkVpL0d152rr
	 C2YeVGDpIIC4OTHLvIBV0XSMN4y3TRo2LhGQNQ0rorhPN49TS9oTeXcWEZIwH2HFY1
	 QSKIe6MPUge5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4FB7CF257F
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172876715365.27592.16273398768910076713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f71fdd81ad4a2520f9cd2cd7a48c7c8a00d81ab7a17947336b3cfcdf60cb5f1
Date: Sat, 12 Oct 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728767153
