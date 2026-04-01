Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E5D33C518
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 20:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775075734; cv=none; b=JGDOf/Kf7+OAYvCTedksM9YwgpwvilBlVbAeaGCw5qkkvivbYrXYrRnREo7nqenFNAchIY9brayHRcMw6JZyagn5l4j+FwihEMbgPCd/lHsLu0mCV99GUuR9QBmyqFpB/FGYCBo8zT/Eaagxir5FkNt3r8e/kLs+J6fvsv92rsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775075734; c=relaxed/simple;
	bh=Z8P6o0xOvjYWS1PzIJcDVy+eQ/zMFywYqnj/2bsVkVA=;
	h=To:Subject:From:Message-Id:Date; b=ZeY2jyt6DYsP8Q3FdMAnRWDkFNe+pBjyxF9UZEak0v2VexFfYq2J5gKayyy6imA/WEufR0xJl+J1QPemyg0j4cVpI82StlXyuhCfd+aaeVDtWBLvhSjuzWSshnGWRn85ijtATl6z8UFySpC8WVImwrVucXCFs8ZPV38wMUZx+T8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W0u8na5v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W0u8na5v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFD41C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 20:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775075733;
	bh=Z8P6o0xOvjYWS1PzIJcDVy+eQ/zMFywYqnj/2bsVkVA=;
	h=To:Subject:From:Date:From;
	b=W0u8na5vP+f4HxNo4slJNx8InoJ5l9uNj2mhFpr/h0iGDhL/2rFJZRtkVdrEOFQbX
	 vAUml6vJDze0M7HPkYO9jVt8IC804h5SB7Qgu8w/3rkQ48zufytiJeobhj4OjG3pNh
	 vB2EkRyoaAMFD3Yl23Gd2lxmLL5N1PSgjrQhGA+a+pmbDTWVZyKlXvdY+k9lwrHY/D
	 aA35UHkwInl3qHyy/Iksb8qHyaAD5Wa77X39yzGC3/5lDobM8f1++0K8zmEgnV/0E4
	 EmP8wSLhoCR9E3tb5JiKE0ZYxSQX6l7vYnY+mNKvXOCr58goL9gGAQVtl/WLPwjUxE
	 AjMZepi8gUTIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB5C10FCAD2
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 20:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177507573369.9793.17287190986497554259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dec39a74d4c427977733386bb9a4033db67118f6136437833d441b967d84531
Date: Wed, 01 Apr 2026 20:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775075733
