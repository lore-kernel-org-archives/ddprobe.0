Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20FF82745E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750565994; cv=none; b=n6NOLmclJRGFKL1shvrZJD4nq21DX0vD+4zPpbfO8LjMbaUpdrzNFtIzfB+JHb3+ogcpxrm99UCKfVIZ/VefZ/KrPBGBy9QyfrlQfX3jRO7ry1IQw/TPjzW/71EsTQWqt5uReeIYNF/7rvIzO/Cl1Bk3YzZ7YaZMuMtzoSolZsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750565994; c=relaxed/simple;
	bh=KT+X4XR8yyx+Ml+Y9VK4oQbsrh4DZaBYX/mMWmt/12A=;
	h=To:Subject:From:Message-Id:Date; b=HyYC2Em49S7g7x5bkurqGJH3Mo01KYtzsRKufpAvJkj62QqQ8xXhYnmaupbNjLMNaMPN1T/tIEWrXWlJptl24Ux+a46gJlUg8cIQsl0F2t1BtUE/sRwNeU43EyTRCWqCHcbH5UrGwhXk6Bm05y7KORwInT4YNqEkVNX0Iy3E/pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lX0t5sXA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lX0t5sXA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99CFC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750565993;
	bh=KT+X4XR8yyx+Ml+Y9VK4oQbsrh4DZaBYX/mMWmt/12A=;
	h=To:Subject:From:Date:From;
	b=lX0t5sXAzNxjCF61jhsAUT9c5hnxcKaH3xW3EtTvDbeMPaZv/3wAw/5UqgQUrnmPw
	 0ddAVT7CQ2O0OyyxbJpXYEgTuMU/EZCDKi+aFNP5yUR0Q1xOEKWdL4hX9hP7S2qDHa
	 mybNs0F97y8eY1mIxeJSKCjnhK/e5EmrUHyudOUs+XPHA3/8PV4YeoQE/QFAINUC2W
	 iLR+fseHu9lC6Lj8hmdVgtc99yabZRcyDcPkO5JuqEZYpmtiU6WvtD1i9JtC8xcHrP
	 gTI2wiVg4n6SM/6eA+XhfCVlI+zKks+iOU+7R9dLl3Lq+dGAf7aFI8myc7MioSi6dH
	 0qPFPjFefhuoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964EAC7EE32
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175056599358.21492.5147093810518173163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bf83552b1d45af48dddd0c47b011c097e6cbd868534ffe69aefb62e58f94351
Date: Sun, 22 Jun 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750565993
