Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 401BF378D89
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 14:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780325074; cv=none; b=ZfmwCgAgubaGWGEok34BQZlQG9cAU4mdKaKU+AHAiJWwht7tUEcJDBUX1YcYjdd+CgwP+06CnuKegxZgP5igJN3JSbAi4O2cvxLBenogSVgtrgixZJTjBaLn8fbgZFRSuBXdg5r529ONrhX4fDeLL9AvniZAPsbf+z2FmgY+Cn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780325074; c=relaxed/simple;
	bh=UI25IEkIdafRfYus8S7J9QfL2dLbnqaqsCA0RKm+J9w=;
	h=To:Subject:From:Message-Id:Date; b=C8nNtfQ7otO5qpnw4c4g9UFHuV+bjFgk0HU60o/R3kcvcfyFYYMayJf8t60b80iZ27Jpgv8ckWPukcnT8ueZkyLYz5k18b2pojLdX0xgl9/iGIJdce1RKeTwLDeNOY9jD6a+Zm43YVUe+Tff99GLo2yQZKK6s5zfjAwLIYVaZ1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=En2OvDdN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="En2OvDdN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF81C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 14:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780325073;
	bh=UI25IEkIdafRfYus8S7J9QfL2dLbnqaqsCA0RKm+J9w=;
	h=To:Subject:From:Date:From;
	b=En2OvDdNM/2fV08BzV+/mhLlUq4tN5NKJdqrA+Nv36ezKOogH8tdK+UmQ017sHPwV
	 qjSPaa3i4XjSTjItpjXRFKlFDiPx20lvNln1MergAgNHPolEigEqfQcApIgLxaZ+NO
	 IueQXV/+ELtK80RRoP2lLh7taOQD6Bp+e6N4FFhGxv7ndsaUaeCZwxmIrTW85SpfPj
	 K50EBvf4Kops5Ez7/iS+o6Hmd2ACVqv8K3OHj4yY8sLM27A3F6G2nR7HeATQhxVZ4k
	 LPYEezixOOgr0S3PIaaTcoKXDKR0kPzm+phDLC48z0rU4hMxMEBZqN0plJjmT7Kc23
	 TXe2IXhapC5ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF21ACD6E55
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 14:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178032507370.32293.13216565015178851416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfdffd63eeb2210b7747c210b91d5e96dcfa2fac2da5b9cb5db7618577c3acaf
Date: Mon, 01 Jun 2026 14:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780325073
