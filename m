Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49CB1469854
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790583034; cv=none; b=LsYPliHXOOdHEgqX+AQoBuicqFMIia1V9pg3N5U6zS4rDKo5COPO+jy+gXFy/VUvrzp/F60QOi+KA5l8Ow7Qd5Mf21p6f72AJvelZHlZag8POnZqUlu2eYoGnRq+EzR8KLx+Z27alDxuhk7mVcGlco8gw3MfqW0PNHXilvxy9RE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790583034; c=relaxed/simple;
	bh=cy1bKYHeMkWMOUB6nfr+dHuKTIronLk2plI8d6jjUtE=;
	h=To:Subject:From:Message-Id:Date; b=mYUdr8a+RnVIi3/MOXRqe/JwoBd9HK1OR5M31Sjd6agmw9i9PFMSFyCxzTT6oxEVGeIu2ybK3VSmVtXGfPoH9wQmwlDtUsKlfeng2xsZuJClVPXJWMazEJray3hIPmXTVrlDq8CGUnYqKYy7+2KTKMwLau4sDZ8aHerdNlypbkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sdqvts0L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sdqvts0L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E95C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790583033;
	bh=cy1bKYHeMkWMOUB6nfr+dHuKTIronLk2plI8d6jjUtE=;
	h=To:Subject:From:Date:From;
	b=Sdqvts0LmiBBTZ+mbUecf8RHteQTPnj1flju5pC1vaPcalWA2BABWSmFCU9i8Enew
	 vWii3DTKz8IHAaev8PSuMJIYSm23qni460p81lTwVTFVjtZvWtaKpusrAsur6+4rlS
	 TOXAfGpzOYzz2vMoh7na7jx1g6J1kJgZr+Rh4P8+YctAKRhEH/HfsryzIXqzmv/Nv0
	 a/Q1MZ/A7x2BDA0ueFQTI0mQ/vwx6DhDYs3LqEk2YrgdJ+ae1ow6yWeUV32RqZvhIQ
	 +sktT8IxfsrZmWFmtzwlGmrrKlWcn6cWBkMB0g24BWknKDGAwX7LuXUR7DG0/Vm0Vj
	 fH17Ui4A7F9IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEEF4C9833E
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179058303370.3104.756021543062509429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34cc93f6d43219cb3f8e421703ace0d40b36de54af8e41cfccfe81c9ef67f4eb
Date: Mon, 28 Sep 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790583033
