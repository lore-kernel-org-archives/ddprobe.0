Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44C6A21E3C2
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729109754; cv=none; b=nRW0luxx2ftO+dhTn7Jgva84JIgC+2vPwBKHDf+8ecmVmhNx/G8Zpw5WbRv9tQTr24fOFvDVTitr0pVGFvJ+k/SrZUzs2r8OXI1LuI6fZXa4XwNw/odC9dBXrbt+cyWh0yeX3vxBAYZu/6qqyayjUD9jWW6NoSXN7HoEZb/g1N0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729109754; c=relaxed/simple;
	bh=vhVGaUwk9q6gVSVH0ZXDeYMGa/hPHyhkv6CEsTxvnqg=;
	h=To:Subject:From:Message-Id:Date; b=rJoGI7fT25/bofzkX1L/XARFUydltNxMOyhFRzquyAw6C/ZDX8ESpmsO7s7ln1zbMpcnPD21KggOY/MfWphcwU+X1GvFnF5Qx6FRRpYAyjMPeprtrkOK3kxIecC8lWV8XDtwX/T40tTjpg5H/TDo1NsOhe9O1Hs94F8d0sxbhUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pPxM8m36; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pPxM8m36"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B06FDC4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729109753;
	bh=vhVGaUwk9q6gVSVH0ZXDeYMGa/hPHyhkv6CEsTxvnqg=;
	h=To:Subject:From:Date:From;
	b=pPxM8m362k38Ns4DmLVjFEFWiCFz62T4LzPLcceuJkkL/tYtKn1wPBaKwfJyLeAHa
	 vLNqCdPK7smL0wVAzrss/I7I4cRX2VElG3n5ePS9F4AHrwSGZ22ps62iIeTwHz6if5
	 e68qCCNfGhLFUUotiBPrj20jV+7yABt50yewxz4RradQDGy3OcYZh6JzhsJOwmmbxm
	 XUY6kRzMEITtLMhtQOd8anQSde8sLFeTeIrGeBOegC+iC9oPYJcavL0ihe6W7Mumsz
	 gz/k5WM7bhVC02ORKLCSxpZ+rnmP8LLeIUi6jNzPtV3KzKlsvh5C2f+9V0aIiqRI9L
	 XDnsS4gPetc+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EEC9D2A559
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172910975363.26953.12985723053780787056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd6bd82c2bdb2718dc24bef5b46615bf82bc34b9a98f0d0b3a5add32b8f2437d
Date: Wed, 16 Oct 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729109753
