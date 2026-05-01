Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3235B13777E
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 08:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777624654; cv=none; b=i6YQ1ShUjyKvBaoE5AIhaLJSA7rSTYs2VkKWEs/UEHcsbAkUSm/OJkv07rhl8YQ52/7IoBeSoXpHO+T1gt7ya5a/HuSbziksa+cLXKzHwlxk/i/WkIcoPWqoZQCS2LIHJ2QLBiNqRF7P6O5lwAJBe2n6YpdCdxOeJe0tE6stXE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777624654; c=relaxed/simple;
	bh=BGwi8WlAtEQByr3vhi+qf5WKKXdpAevVesYkskY1s3A=;
	h=To:Subject:From:Message-Id:Date; b=asROP8quVfrnH5aKyZvPnCbukuwD7zvDCPhyDhbUmehmkmVDgMVk6gICPJDzkM1UADQmUU+LwZZ4PydqiCNCARzjh+82klVMN8JesONZZpNZCco+HlER11NxDFwwA2EYMGRx72vLzNTPqaLEidgXCYx9T2h7ZFoPzOS6ikbH7mU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z9T7L4zt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z9T7L4zt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0F07C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 08:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777624653;
	bh=BGwi8WlAtEQByr3vhi+qf5WKKXdpAevVesYkskY1s3A=;
	h=To:Subject:From:Date:From;
	b=Z9T7L4ztqccwshlJLW/u8xNr+XbkbTwjSUueQNdIeTxq2tMZxNN/Va+X19HmU/90T
	 +4WxJg/yHtg4JxORP/pI8ckKN5SkoM3kQKAirhy92o63+g1XCCJ/8s5LZ3yPNC6+bS
	 DrPU1lknvny0Pgn7Sv/0qEop0c1Xi5Gd0TJYAGFAW9whjXbQIewNxUiCEziIXuM3sQ
	 E2YWJ6+HZxfb037YWEbEz092cBCM1pxzYWv95iGZ2kSk6ZaSsUrLJ+klpf+HO1axyQ
	 Rhjgl/eVLjHyIryEw93XyeCEkk1kJbZJmNZyNc3bmUW8WuphEMhY1B5KR+lWAYrNg+
	 Z0GsRo3YE9q9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADF9FF8864
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 08:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177762465369.3742.16652116154570940701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08e0eca31bfbae6c855e3ea88b10fa9fda1277835ec6f5e71fbb13ec3c8e4b8e
Date: Fri, 01 May 2026 08:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777624653
