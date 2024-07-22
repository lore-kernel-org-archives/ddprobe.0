Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249E416B75B
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721642754; cv=none; b=WzVrmkk/ZSRNc2NYd8Yb+GlTCGh8MPM6+q/aQCFGwPizVYBIuPAxDq3sBmnsfNhI8JHjMy/114VKG7tB/v6AYrxicpk16yH8iHM5X+fw84/yGDBzvvJpcpFYRvy7cmk6b+4QycDuJY/BSKeN4vIvFGBunfZBNIOS69T86pLQCYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721642754; c=relaxed/simple;
	bh=LI6kOai3LRUrpxqp1zTCI6cw7U1otwVrgmfzJvbScEM=;
	h=To:Subject:From:Message-Id:Date; b=Vwe/fJeiTzTWG398fBqdC8q2CDkowZT5emoZn8zgyRj7KHytWgeaoWvpzQnJiiuIleoL9h6pmzQHxust+R0qG7ZFVREJ2myWBtI2UyYH1XsCpaxbyIVXuWMMPb8UwTwHlaJOOA5GYYFDMnXbpYK3T/XCuuBoCEamGFE/OmlIa08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S7w5fSdg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S7w5fSdg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B538DC116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721642753;
	bh=LI6kOai3LRUrpxqp1zTCI6cw7U1otwVrgmfzJvbScEM=;
	h=To:Subject:From:Date:From;
	b=S7w5fSdgHHa8JfSyiZpOA6Eg6vQcHlO8gWhFNajMidntHQuf6m1euFOEU0crv5Nrj
	 tjYlSBojsXVAaDjlOpG+Nws/gtaYpzovt7uKOcT6n5c7BsWxNCbc/fCxzTNxp+yxfs
	 qDbqfVKi0e45Pr92w2aaOzYdCt2gRl7ef+QrdCUkumLuBbD7sROjYmemdOs+zxV0QL
	 V/RqArYtFROCLk6sPKAjlZziBxpIjCrAK+y48ld7p8Ge/gK6tCGRF/haujnAoD91aC
	 zuRaiG/nf/7U922P6ZXzR7D5btHTDTBat05ghtA2m+ozfM8mdEF43TNbASXv7+IQ6x
	 rAO5jJ6BxSOSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4571C3DA59
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172164275366.4052.4973350242399580907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3799fa36c9a7105c0cfdd2ed1e6ce6c4e676be65d70882abfa356ee4d7593966
Date: Mon, 22 Jul 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721642753
