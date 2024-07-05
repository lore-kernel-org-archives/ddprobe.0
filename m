Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5566A1C6A0
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 05:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720156523; cv=none; b=ZbU12zEQQquB99niPR/W5NjDiNWa6T5cPKRz0hxwf6EQapiCvz0pBd3luKIVjuORum9m3zlnV9uMJ56tSh1fPuioWL/UlQikj6XgGbLH5OMVrzgZXC4DmvOsBtNQteBPS6z5UL6gNQCY7IrmX5EeW+T0X9HQXYfMaBAAV/MRizs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720156523; c=relaxed/simple;
	bh=o9Jh/wil0hlNPr/CiVquFd3jS/2iHfQCQSSq9Eh+bJk=;
	h=To:Subject:From:Message-Id:Date; b=cGsXZZ8q1wyxvog1zuAzJxg/uA25CRQhzDk7A+1IiteLuBVkUAWQ8ZeedgoUyjdM4bvOWcBk3NW24exPgQCJGPXBp6DYnWhHIwbva7jeVRN8p9ddxN3OimRBWZ+vUzIMNdvpmV0CRszTvPrjg4vxepAJpTRV7eSsg+YaWoL3egc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aEcwtyzL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aEcwtyzL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEACCC116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 05:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720156522;
	bh=o9Jh/wil0hlNPr/CiVquFd3jS/2iHfQCQSSq9Eh+bJk=;
	h=To:Subject:From:Date:From;
	b=aEcwtyzLxm3njDgF1W56bZHHGZfIWUDotd9KwdoJ9C+vlDe9/SkCty+sXyzelUHlh
	 Lf3he27tVzNt0CZPqsi1DGGd8kwou+ZvcVkcE4iJgB+U4an80dkWsBicz75G03w4wg
	 zbcCdNqnaeAJrB5fEGSdhIwfzmYlHPWalKeydlyW2G397fuOL27CIG/grp6U7ddoVP
	 algOHYhZeSqRujF3fHKI54v819a939RE6BmEGcuLqDjO6MortNJ6IefMCujpHZOdx/
	 lWTwS9piH97Lesfb7tVaX3fVXaWF/GvIQ6J8HCuuSoajxGUQcteWmURBhAugw92OuN
	 kFuBYSTkhG7zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2264C30658
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 05:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172015652278.10255.12630126336539340478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 329f17047997ea846213fc827557f0e21cb35fc02a8497353a71df8a1c41986b
Date: Fri, 05 Jul 2024 05:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720156522
