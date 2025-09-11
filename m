Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A9462848A0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757582995; cv=none; b=uyjGgdUwMNM3iPGyvUiz7KI3UZ6roo2RaYH2zhXpr+kT13T1630mqdDti3VqJuHQnIPV0dkugl3CR8LzRckJvx5u6aNY12tzrJTlU6vgE4RtoMw/iEnsfgAjNXiX+vbRFtiEQiVXuaUjccKtLLfeBC7eHFcBk0Dn7KHIDmmuwZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757582995; c=relaxed/simple;
	bh=S36nw6oUFTazghal0RHBz0M8CpEkR3ZTnE4yQsdRvbo=;
	h=To:Subject:From:Message-Id:Date; b=PLdvBCrC+eGnolOsiCTKlxq8GrWOCPBdiynR2cpwoacx8XsOmv6DxAMtFWLwxZ00iqzNrD27A9+m1wysy48gE8NJtc/Fpzc1rKnVosYF8I3NALxqqBZ+UUjewzL1hz8U4Omk+VJrDYrSyVpNTwDLJviBd6yFHnm/ALg3rjgm3Lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cLB+2xM6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cLB+2xM6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C6F4C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757582993;
	bh=S36nw6oUFTazghal0RHBz0M8CpEkR3ZTnE4yQsdRvbo=;
	h=To:Subject:From:Date:From;
	b=cLB+2xM6PivNfExzJMTxPvUoKcbSv4Mi0OJ3H2WsdW4gLFQRf2N2hXf4OTspZkFdZ
	 vNgX1E8sfwRMRZ90FpTIqCzQ4VRNvKwqR5kfrhd8ugzAArUWnK3aHS5G76g8SGh6nN
	 HtivjR6zoSolbFH1sW0t92L8CVdJwhsjUFgYNrZ4AHp1PrDygGPizy/WzNW8D767hh
	 YM15n7FA2d0E92Tq5TWZdlEVr//njWw4FmN+cWWdTpbb7QBUBITqAeqEKYBIKen46q
	 B4ePwHVSg1Gnr6tmPhyrl0Y9NhcJEsunWG4qvdQbn2OTTndd/3nalVp3K9cimpgRQT
	 EFE3lZ8P6gxbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F92ACAC58D
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175758299357.2848.2368047650800629247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 687b4facb84fa971fc402264679cb9db2caa85764bdf6db1eb5e5a5bb8359029
Date: Thu, 11 Sep 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757582993
