Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35624487A7
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733080554; cv=none; b=lR5XHB0J2SLO9WiJQW6RNS2IZEk/ZjUAjs/vsQC5SSG5AG87XyoH0xBC4hZKGrwE1BAAxmT1zSP4m8NW73Mbv8KbJ8v0XoHR8oSESRCJQryv5/xz8iHD2cbGGaEBOATZeCq4lcDFxQcZPa4vFCnZRZ8UCWlRNaH53Jsq71ZQqfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733080554; c=relaxed/simple;
	bh=DYEhFRZ3RDyuD2RZfdsvyHKCqS2Y+S1BxxO8hXJdrjQ=;
	h=To:Subject:From:Message-Id:Date; b=iwsFr2d7gaqnC8OnJkrDk5uCQbeUAKKhHX6n5VKRQ45PRHGWAEcHfhJ7Ni59OGqYu6vvqappgfkeSS6lbMmEc6Qm4OsOF6xJvwZ+CEddxLvLnDHX8WWvFhijmVaIHwbZvCrrxDfI+HbT2cTC8Lpp8EUQh0fT0Hpuc9C0Le1uuts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EZOhcYxm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EZOhcYxm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B303CC4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733080553;
	bh=DYEhFRZ3RDyuD2RZfdsvyHKCqS2Y+S1BxxO8hXJdrjQ=;
	h=To:Subject:From:Date:From;
	b=EZOhcYxmEj4nrLOLMEeP49Kr9T5CiJ67N8jbGvSTDBwjkNOvBfw1szIqHVteh6r2v
	 IUK5BPRKmbnIIsdm9IClpDGzdUCqw5hOVLo4IYZgycBtrxMA3eMTIaxy7JxozjtFZy
	 KWM+AAGc8njp1vWKwV9FBteCTao4Nlm4GWp0LCLa03j79QBsepP/19fbdQdYk1mhtW
	 tn7dqhSZSk/yH2nfHDJI688rH6OUe49cx+uo1BWwOw+4ZakAWYgq0y/RmF5GNPwk/5
	 MTGuLuR99HHQy1GX45D/WmU9Cq5KZFpAAOfsAEzkSWg/zKEW7+3Y0gqOh/zSvvDT65
	 kY9y2G68LpiQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9657DD49780
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173308055359.22914.6901461687193451221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7c0b2363ec71e9c355856852dac447938da81d3a9276cd5e6aea2a1bca86672
Date: Sun, 01 Dec 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733080553
