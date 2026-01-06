Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247E133D6F5
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 17:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767719034; cv=none; b=nd7vxkkR/+MJpEmUJCc4QVecdAehRKJpwsrbw0MGM0mz6Z7EnW7rNJoe/d+Cm64jiB4wiYqRmhELQDt1n8tuKqAugOKRKvCwvlQhjrTnTNWErojiB+ZFJsP2PWEiymFvv2WE4ogokYpjjcxOxMeZmgcRGBrUqRQVokA+HetHTXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767719034; c=relaxed/simple;
	bh=wC9RWBl7S073A96E2l2W3k4VOdo67CMd7ooIJvtkS58=;
	h=To:Subject:From:Message-Id:Date; b=oUUr2yiU++MKXNh/FRGwVndQOr8qH+gvYI4lLVUIa2iIK1fljHZDhTAFLQgDWSU1v8ncqCMvI9hJzEfHNWG6Xloq7yImnJIeu8dLeOBvtGTMmSiyBj3xjs3trUz/36kY/Waqfm4lyYog/O78Wk4RdMCRWMv4+5gcP6c80gq113s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=igco47qu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="igco47qu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21F4C116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767719033;
	bh=wC9RWBl7S073A96E2l2W3k4VOdo67CMd7ooIJvtkS58=;
	h=To:Subject:From:Date:From;
	b=igco47quPGdBn47VQVN0j40nNJppYyD01tKPTxfTDetziURa4X63a3b9G7VZgWx3T
	 PMzGPY2DHSW9VXkQIu290s63iZaRmuogaCPadM23bN+UvdPymBbdyih87Vc7qOTqOv
	 /sngSg2LB4FLl8MV4lnPnp/pWkgojbnNGGtapi9bKDg05XYewoM88WUpkd9e8FBcM0
	 yL6q581k39Xv1dwalvh/kgrYx9mflfVF6Baan9eJ3h0iNG1HoM8blUq/au1KZU5LUU
	 sMJkIoPkuNawZ5uUM+2rASGnMxHHAUi6WA0KZSmG+SNB1Ovt+jDUg4pvKGTTOR2OWF
	 IGpoPvsjq3y/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9063AC47BE1
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176771903358.23101.12248985036103578625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cddea0afaae0c38f52b2d7d68587f10f7ad07c83c75d4b56a39e91217ee916d1
Date: Tue, 06 Jan 2026 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767719033
