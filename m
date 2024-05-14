Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85538180A73
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 21:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715721143; cv=none; b=WYhJyHTPnkhR+r2k9QLE+S5PITE3XihNFdecflLM7MNeR6CCRAuHxcu3Og9E7DSKcVsSqIscFD2nChydS1QAbvHT9M6QXo49a20CZlJ6Sh8X7BJJy4ztA9asWx0acifO992VLYnS5z8hXNW9mUExyNXOpS4u9WlHL7vDFQrRJ9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715721143; c=relaxed/simple;
	bh=tqVx/paI3w0UzhUoHA5TnNFr4cMKp+t8uJUKW/26Srk=;
	h=To:Subject:From:Message-Id:Date; b=o0/YJWUYXUBWoiGuJaa5ZwVCLmsXDedh0mVM2crpNCsrMS7kwzNoZyt8oi0Ai3lom+nfep5ddIs9BRrm961EsVanyfWOruzZKSxCOwkj14pfjk7aSVox/5Cr63CVfofl4s4JwaPvRgA66S+fcLurDKaq3hV4hf6kPF4ztIvCjAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=heiiHG9q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="heiiHG9q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB94CC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 21:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715721143;
	bh=tqVx/paI3w0UzhUoHA5TnNFr4cMKp+t8uJUKW/26Srk=;
	h=To:Subject:From:Date:From;
	b=heiiHG9q9E+xMBbUVBhXAv3mb+H+9sVaEDAionrAteejyyRmpVWXWItKh4FUtnNh6
	 7A8lXexuxLoNmOMuW7/BgiovkdoIXBFZgUVyw3djRTX7CTaSdShLL3DLDOPub499ra
	 uRgFPyXxbWswNDS2MEWLP6R0dJ7GVZHkuTN6bgEvOA31khRDZyB3ZfjPLYLOkpT7u3
	 pnYE2pzGqvBC+iE8xQSKHdszGl6U/co49Gd497zhnJyvaknM+m3XlWiMYJWmTw5tBW
	 Q/dAQ4fDsCfv5A1ZpDrinNRU1zomdpAq0tQgosR6L1uZm64OG96rqj2r1IPQuhkVzy
	 z2l8YqssK244A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D574BC04FFE
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 21:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171572114281.6438.13974925572517455045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7bcb3e5127adbd91d3c1ad0874ffc6a4ad4715868395b580092dd04be47476b
Date: Tue, 14 May 2024 21:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715721142
