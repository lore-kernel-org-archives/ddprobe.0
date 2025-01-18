Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E0D77102
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737182154; cv=none; b=bEPdVrbnuAEFxXw6mUVNDYkJsUYALa/MdHufxOddbFBFNHOpq3kk/7tD7e77Qebzo9r6QaJ/YoGDL70AzmZq9jCiteof9A/ahhpAf/a8ThP/ZQ94zfxI9/FOos8eIa7ideRADyG4M5FzMOox4szvVrGX/DEANEzbJwsb4FuILAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737182154; c=relaxed/simple;
	bh=6eBByICG0qWceRpvG1Ba792ut5KXtI2ag6x4YLU8NeU=;
	h=To:Subject:From:Message-Id:Date; b=Rxod5lXAz8M0bYuaj0bx/A6bcn4EHDTFR1jP2gXRemqB/BWNJd/IaZWvxpUc/iaICsOcUOTjgxmnSphXlf6I0HmrVPSsOMfVdCKjh02Unw5/Wct2UA9lDQ0u0abs1cH0fawi9XJeqt60RqBQDbL7Cr++3TN8choB5UZwu/A6Vpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CE8iGKc8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CE8iGKc8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8699C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737182153;
	bh=6eBByICG0qWceRpvG1Ba792ut5KXtI2ag6x4YLU8NeU=;
	h=To:Subject:From:Date:From;
	b=CE8iGKc8U46XoX/Pb3GPdw+JGNUsBGGCLkXKyJL6rZq8+ZrQRLk2qEQkYXjX4SUmj
	 c4JDCAJ3SvNiVSm/akOEI9MQqXiXXL+KfcQmrgCR2oGa/+PaklxvBL2kWrIQUcBT8n
	 vdmo/tgRV54GqIIcAfwXVNkNbsVakbqKo1t3CjVkf2n0adluM7g3od183ZxFMMWx9n
	 Y2aMZgWoxUgFuM4ltLRWPNJATZz0IDbuMKwdLJlrR7NNBb93KB0ewFeZincOrAKGwC
	 uqtISdqX3o6p8SSuOXs2U3sOAqmrdwKh2SpE3SIqjyoFEwlVI5nFXZfcEIBIPojEt/
	 J5dUbO7elTJuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B7EC02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173718215358.9104.10813238032648936928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fda8d2d94c05c87ca6c6a469a15c6a5030a9e8ee49b602330f3f9403a90b1091
Date: Sat, 18 Jan 2025 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737182153
