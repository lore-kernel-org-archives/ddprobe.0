Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4361C1ADA
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729194954; cv=none; b=LwWzviCVZF+FEdGhNa/66x00qOK9QgMVY6EnRJGXPgJifSikv8Bev0VkeJESCPpfSYbMznqmeVnRIKidweyha1oA4ZNYX1USoo3wYczDtBvECxxP5maxlRL/p0pxQIgona/4EeTDt0b/krwU0VslE1XUbK51dol37ZOdKiUElr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729194954; c=relaxed/simple;
	bh=4jLZ21HFt76G22Gq/XuNwYT2KPfaQlrHLeWGGUENAu8=;
	h=To:Subject:From:Message-Id:Date; b=jXwJy9uCFdYIfuBmorxZymJemLDylo4nWdz9SKZ2BYpif7yW5iw1kK+gEf9efNaCtbLhOW1ju+GB4UnKZstr1raCDtQnBSg7XR+mo4rf6ogBx1KM+VeKgJQUZlZDgSw6i2bwlgEPuHwahTT+nHFhwLLJp4P1/DyXAePQ4ezykZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PoqOdvti; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PoqOdvti"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0DC9C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729194953;
	bh=4jLZ21HFt76G22Gq/XuNwYT2KPfaQlrHLeWGGUENAu8=;
	h=To:Subject:From:Date:From;
	b=PoqOdvti8lIQl96RIr4gdsgi93JhqOyzA3I8y5XuaTY2cqrkss+daaE1ybhJBdw+U
	 wH1vI5SFcwUlct6nz8UYUHKia144uJLql0igK1Cwd8W3Q/U07v984JvjXsE2ZybBNr
	 nHba6TCtxmybKpQS4IQ7+BalxbX+727eoAWLTCC/VEhNsCWb8wd/COqdXPVLoJi31U
	 3UAkvlXwhwAaPHMpjuYLbdcB4TSa9OXm2m6Pt1EDVdLRNR5akvYUAJEHgicjX13Sjh
	 0WB42TH9HdJLuBqO5nQGw1XSdqqSKSrlRgJU9ARFf2hIiE94x4KojIzG3UZQByQl7z
	 EcP1Hlo20m3TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 992CAD3C52C
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172919495360.27693.3272652309574253341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 627f7bae9423641b8cfc067cf731ce8051d004567c6f23db439d7658a61ffdfb
Date: Thu, 17 Oct 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729194953
