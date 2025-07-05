Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270D2405F7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751737194; cv=none; b=t+wQifibcKYTHZRLwglWPgs+gcs+8tFzn3Ye+JVvqJ/04fnmCcc7ujPBjGnC+SlcVld9Qb9k9174b1OFbcM4tJo5y9HDvJH9NB9YQZNrf5Cz3fLfhDkfm+NVh7NUbL1S0XLfklP8jsChtyxqEtmGq9G1tlYgfDW8BkbCa86Gynk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751737194; c=relaxed/simple;
	bh=d1MC0KZrJRJNu3R6KgUKaTDy363hUsXx6atHoEHgF9M=;
	h=To:Subject:From:Message-Id:Date; b=HdjS3Z7Sqqen9Fhk5GwJ9CdGQgE2J4rsIff69yPWTOQatgM0GZ1YiTZMTe5bzLSEBw0kDJ4BQf1lxQkkz03PFisb0j46Eh6NAQgQ8L7PsGQsPNV77HfAWPV5Um2cmyXuTZPNgQqnsVCH6KlsBKLFKavUpUIU87ylOtGwAUPsU9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lIw26/Ak; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lIw26/Ak"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D21C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751737193;
	bh=d1MC0KZrJRJNu3R6KgUKaTDy363hUsXx6atHoEHgF9M=;
	h=To:Subject:From:Date:From;
	b=lIw26/Aka+DkEXLJqAWzP2eXRzxMSC1Qp3Aesci5HsZ8eSnDuI53u6GqH6QWV6LfW
	 OtqWnEFOO8tZAbplm1kotS3GmON4CDypiXBCJLIC0M3t14VIfE5gITcEFpX1nCeKH7
	 XSWNTs3F7z31KAJA4jVaT85ZrYgO/ppriReZzAjs3pvCXU3hVK4h4SbUGRvQ9RqXf2
	 Xjy/TYs5B6GQ5p6kOy5K+aErzG1Wgw5BMO4mfF4waWcftu6YudZDrcUVuI/ibEYv8/
	 osMHR4aRaDNwyT4mcgd3czfOZ4GlzLJazHhsl29TtoJHBMqVno5krGNnEZfe1eBwNL
	 iq06cK+q2FLAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91577C8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175173719357.5217.2742633453040316011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e65dc1d5ee9b3b00fc88fca54d50222eef1016e6349cb893240e68f995b8ec7c
Date: Sat, 05 Jul 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751737193
