Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 780D754F81
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 09:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732440354; cv=none; b=jv3OplZhJDywq55B87CT672bVxubKgcmYOq0s4z28X9cMXYJO79u2bM9ZeR+oGzsSwTrMIxWcnn5bPNXcGX4JUuXif6o0/Kbem5lJ17iHlOkak8mS8nTuA8bLufiLPIsdj9wVeUlKRLSBDt2fShYn52MdF7UDsMj6PkoKIzovHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732440354; c=relaxed/simple;
	bh=n0fW3vyhw9XuzoFkp3SVw1i2Z09jb2oMLdjffCUnqXE=;
	h=To:Subject:From:Message-Id:Date; b=GOoMKwUCXysInycJIcnopnSl/RkcdOPmYvzrv2YICC5WCKWH4sMpMQDL9PvEcgBXRW5fpgmVs4v6ck4r5g4ahtqw5imaduvCFFI49j46PM/tDphFQGBydGUkjFSotvW8QUFLUt1evcjTd6SCrm3l5PwIOSW50u2HxTK69zr5mZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kZH90bQ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kZH90bQ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D08A7C4CECC
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732440353;
	bh=n0fW3vyhw9XuzoFkp3SVw1i2Z09jb2oMLdjffCUnqXE=;
	h=To:Subject:From:Date:From;
	b=kZH90bQ254Vkq7kgACZy/jp4t0aUDrmICKFgC7O/t1e7GjzE7j6GTicrnh1F0X60X
	 MYHzcDhoePS335OJ9jJMLAZsu9Hl/7xQxgP6bXSy2zVNULpfvLJqGqRNwCcqaThx8p
	 lMaQ+OybCblU8oE6yIngz1kbntTmhh1H7DSvyASAv7wZbHLl0SZrFeW2KZeBWQ+/Hj
	 k2tFO+jXV8QBedpG4gMQlBWJ/X3FaXhXnUsiMsE0hOtdOFcPLhdLXqerQ40R03fWBk
	 z+NTReaX9K/MCw+WZYbiTQfnLMTILQNfwggv7KHzQ1w8H823c54HU36bJx6U1dEbv0
	 P5MwF0xQ0s4OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC3BDE66894
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173244035371.19640.14321725557044794304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c010e3b8642e72993ffbe4cffcb38dfddbe93ebadef8ea54db454ac34c57509a
Date: Sun, 24 Nov 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732440353
