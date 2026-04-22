Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2678635CBD6
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 22:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776895654; cv=none; b=qsmAQrA84kyePVMeUWwYLmBDbz/VobeGkLq+lBiX4mxW27Ps50lVSPAoCOJbngf5rWGtqXUBQg/b0nmZ+YuLtPWdmBGZ6Nvu0Qq2BHPSZQS8X1HPDX74q9n381/ilnbiMxdPUZeTc+nWfy4IOeOPoJQ4FzmitOgA0StJey9GRjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776895654; c=relaxed/simple;
	bh=rsFpBMA7Zu7mgWk7cxX8Nk+jlDMgtaXFw1fTSrhWTQo=;
	h=To:Subject:From:Message-Id:Date; b=KHBrZkso9LSRVqIeo5YRhCoDBrkrUNUvxwDKyM++fmQbs8lshCNV9Yo382YJdkF77ZE+ipmjDV7Ym51elFv0AwHLOg/LcbgiSrpWMAQyyalaeVQp1CGDTw898DMyz4cj45jVOZAaFbDjUpqJi0lUHA6f6EMK7OYysumZGrXvCu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bk34N3f5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bk34N3f5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC05AC2BCB6
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 22:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776895653;
	bh=rsFpBMA7Zu7mgWk7cxX8Nk+jlDMgtaXFw1fTSrhWTQo=;
	h=To:Subject:From:Date:From;
	b=Bk34N3f5aO8l5nvW2TIPxr4vLus9N2i8iQjU8/7v9++ctsCMRDP7/wHKzI6NaEHJG
	 BF32RgHE2SQ8Le2+iHBVmR9SHaUMPTLrsecRQ6jRwqOnrhJWsLslBT8EwpyGJb+3Rh
	 oJKg0G7WHOEAH13bA2+e/quMW6FM0whmetnnVn/8ccmxDW2sdf2SSZlXpVuXfWEbD/
	 GzKWbioFqEPiILio2v6Cm9ohbbEHIFW9Mjo/wMHkg5kyeKLroiAfIgpVr3BoRW5Ucx
	 WNjW5E4I7p1rUQ0K4+9A28bX57R1rl78TVx3IPNWkFw0rY+ZSUsMnRYxylepqJvwc9
	 YXZjhKTYC+98Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB83DF94CBE
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 22:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177689565369.11939.2905804906108365977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7f33b10cb3ff4b5e19686ab26c5b83b73cd7323d79f7bf08fbe6de8559db33d
Date: Wed, 22 Apr 2026 22:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776895653
