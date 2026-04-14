Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13821342532
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 10:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776164254; cv=none; b=mTqOdX99u2JpG7nNzSR0r7mFKj//ijR4MsNcYagLKfX9PxePAh0CC8BdEezQaO1bmOxVIs9nJ+P6a6pnck1XBDCBa0V6rGwN73i9DIRDHIz+RhJZ5NN5nvCln0awki6kMjbWBRhwb+X0y988RYCMgRVg9w2VrplK9y7u/XTK6OM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776164254; c=relaxed/simple;
	bh=oNUmBRftjvs8RKazi8BSw3dvzDpilue+f4qtwbuFrCk=;
	h=To:Subject:From:Message-Id:Date; b=plOhEVrYfjaRINh8W0rsWD80pPhHcAjqRoczJGWcLHSeYImgnezAq1b4MJrPf3I5CITde8vNYb/YS9DxGsBs9wCcHMojUDpdCRIW/g0fylj3QpW2WGD1L76nn6vhc/NYufrofxopKz5dy41JlacNv0lPoGRn6HsL0b9Ui/vEUrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IN0qCHxe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IN0qCHxe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BED8EC19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 10:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776164253;
	bh=oNUmBRftjvs8RKazi8BSw3dvzDpilue+f4qtwbuFrCk=;
	h=To:Subject:From:Date:From;
	b=IN0qCHxeebkpLmyFQmmtREnFjMGGr8mdNsm4ke2KqSdixz0nO6d6KSG29yMcFr3xm
	 bQ8FE9BzVSsXyWt/KV7838MEe03//KIfjoLA67MslHTpe8HBYZlpUwvOsM2QXYOc2M
	 O31RWjzteZBMh5x6fgTegNhTESouBhUZoy8xqTV4tsVIpsiRcibQjxFmv7chLT93cR
	 j+ahTul4eLJXW6sM36+1PrD0a+PyVhgUTHkWz+jQ9sthSEWUmUcZFLh6/lDI+KfuiZ
	 ey3snu07D/iRC+3Q9S7SpldeNLCafqHNVsvECWZxmHOjLAn34IIXrP1yLDh8P4rU1c
	 VBW4O7pnysj+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4A1ED7BBE
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 10:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177616425368.17830.17335666185179765677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 721fb8d42956b64aac8a7538c41058027d57e4d947173a0787bff5d0661eabf9
Date: Tue, 14 Apr 2026 10:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776164253
