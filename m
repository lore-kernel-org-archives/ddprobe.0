Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10198849C
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762685394; cv=none; b=inhu1XBz96ve64TPDH/HZZqVFx9feGdC/REBx+4uVVf+iVoVlHqzzPwdmL2XFnax46IgO++cIvKoG7kYXBRGSuaeMi82oTnUfs8GZy2nho2j8YyHKKuOyZsdDR4h4ZW+SYiO/zTL+Yzarg0llYmYzG7ImCt7gTd7y60b1Nl0reA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762685394; c=relaxed/simple;
	bh=P+utDGjkps4P46DATMwjswrKeA/WCI8OUrFYUW7FA9c=;
	h=To:Subject:From:Message-Id:Date; b=FsWiA4wKB9cUhghcaBhj57gnt+l/vm5eKKavh5qmCjdHZePIosBtb5OvX+t1qPaoKacDWqBDhETytLsG078nkKPIlqT9yYY9xzJgJ89cruCQMCzeZnGieDXZGFIAF/TrHcGcHOntHKT+C9Ppbc9Yd8V5jsVLcQ64eOv8IGghuSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QM4axEbk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QM4axEbk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB4FC4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762685393;
	bh=P+utDGjkps4P46DATMwjswrKeA/WCI8OUrFYUW7FA9c=;
	h=To:Subject:From:Date:From;
	b=QM4axEbkT4ubnJUeHue5kbryqwijcWrxW4AxaLkcMSFk5MgmYO0o2HgqlrxhTvciw
	 fJTOOJRyMChtsd3bQZcLu5om3Em29+bvyC41gQyJo7LIcR4TkL8ea8EY3YW92F4cS0
	 fiwVJ9zcrvcyG4v+lQWohnTMEADb4h1bAm16wLnDiwS3RfSPlfNTEsthNnosVE9e/p
	 aHsPqjnN5Y+X9F+xI+mdexydbRpctZWZWRCbb7vjxWnV8mwxWBVemX8SomNHZlXUrW
	 z33Yrzyo44KsEfqcooDtaw0W7Z0YnxZzrpo6ZAVWiNeMA+xg54fApJKFTfz5fRiiUT
	 icIhpM4z9FkcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957B7CCFA1E
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176268539357.19342.11993487166463981254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a87d2055f5df6e07ef46f5f45b6856bcb4f02823863150225160cb7ba6f8736
Date: Sun, 09 Nov 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762685393
