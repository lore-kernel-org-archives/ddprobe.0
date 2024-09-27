Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA4B1C1ADD
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727470554; cv=none; b=PB6q7sojxP7eztMkHDixI1K4C3h64KRtFVhs2Jb08hNc0LwChnnKoJxo1CU15JsTgn2GKZ0vdhVaBAAeLjPjN75VZVK1evBWztosH3Md9/DBX8iVOC54ddA3zSNFPHvUi/OaVel5efo7Xj8uKd5hjMvLXbek/o6eIHsP332GkNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727470554; c=relaxed/simple;
	bh=5t+H87urVQcFKfbBv2Q213/UcgyCuuJcqf2nTC4hjpU=;
	h=To:Subject:From:Message-Id:Date; b=peLNMGXVNaBD7OtzselHNRIQGgEn5h5CYqm5erYYhZWiMlYILxo1ryppVvows9qMb8WLVKkEzpNSDunN8hILxPfdxLpiE6TuNdT8odltLWkIsYORwdgEs6CjkgP0ucliSw+OuOGuo3OzJWLdrCrChjFtgYCRLntb1gxF34rJa2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ChXtcw2h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ChXtcw2h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4E70C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727470553;
	bh=5t+H87urVQcFKfbBv2Q213/UcgyCuuJcqf2nTC4hjpU=;
	h=To:Subject:From:Date:From;
	b=ChXtcw2h3YmCcgZA03gD4PBOkf12AWEwpus1i0Qa/fwbUSymSJkhZBCLRpmf6P+g/
	 hmWeM4mdUiqMhcsCPxGyf81iyA3WdZIjCHxKfH/3xBpMkk3/6sM4+o//M5AAbhWd5M
	 t6AkwwlY7+mg3+tK/oX+ooRqXJ4pMXvlzK2y9WmfucS8YPJBfDmjKdjuV6JDJRUKRs
	 S9ykPTylcPqMn71JHfbKS4Qudq3J2OA4uYDdGsEsg/hhTKll6zdZINF1ROhWvrhp2a
	 9HxRJFp5OqkEpY3XG+10/tVJo36gpU/ha3xtRyYAx5f5tByXnMMlTJ1Vy9Pd/h8Utm
	 4kaSuN0DLOIzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A0ECDD1DC
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172747055360.27941.14214510440322365930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61b1011654a51179c4b2284ad9b7cb3eec05fd9a48079cc2fad2dc18e4963386
Date: Fri, 27 Sep 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727470553
