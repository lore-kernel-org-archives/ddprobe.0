Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2866C3126B3
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762429794; cv=none; b=Ti8vCCCSEajl0crdPqCU4fGI+iWxIW1snQ5HiOG/ePpP098PjqvoAzFz2IRZZahdgBuRMRV8IDPxAMKzs8wJre19L5WkOUp69CdPCvWrfuPzwPSjWGWAh1wjyKe+BZnfxGLVA33VZFKHgZbUlC/HlvLX9AdcqZtk86eheymh7VQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762429794; c=relaxed/simple;
	bh=3KGoK2weD+y8leMhyXPCEdYnHOb3UO0dKUL3y/blTRM=;
	h=To:Subject:From:Message-Id:Date; b=aCslYrEG7DS2VbJVhxRD8Ypy2rBMOtWUaHoL65RtkaiS8kWgMyjta1SQ5o6nWPhnVYKPf/Vk4O0kDjvxO+iT7ig5gAfemoNlrX0kELn18AISRGlaO+Ltb2wegspVewf3H+Y/a5lDDe3jqtGYZKP0wuR56+TwhZn+6RYOTGKAFL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SUQn+sfo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SUQn+sfo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3459C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762429793;
	bh=3KGoK2weD+y8leMhyXPCEdYnHOb3UO0dKUL3y/blTRM=;
	h=To:Subject:From:Date:From;
	b=SUQn+sfooWIXnOm9mYwMYql5xiHTgIWc9AXnCrAheEsIpXUljoo7Mlog2CA81jOBc
	 8btntOwe44r8bMs1rGaPffHavVhHSzfCy6vfpr1pq51VXBQ8qPI+u/WIN9SIvI1fq7
	 dQpOvMStjGfnu+2oIMr8shkfQ8wM0lOp2AF6MPxbtca7XKg6pNLjYIDtdp6uPrgto3
	 cghmHEJIROnNY/FZTHI768BplsFxkBI7XqpjucQFKu5F1fTCyXgI3WgV/+61GL/ErQ
	 4EVwRogEVxvpdK5Wg3U6+3Qcd1WL3Yr3Eo7VuXOTTTAHVXnAlXFULxlj4DvTgYp+pY
	 T4idBBXp7Wxqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9660CCCFA03
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176242979360.14665.4247794584865337233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e7eae8b033c8bb75b688b844376dadc2d305181095b5a7beb64693662790987
Date: Thu, 06 Nov 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762429793
