Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2281327470
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 16:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776963454; cv=none; b=fHUfCEQAnnNa7oSkDhEny1och5+dy6N3pyeZ9tY1kr8A/mF1lJKpGPwxkHHXmdXBBc+EDiCpf1kmRhEcxl9olUWHcKYSgmNHzv8ksy/+whoPkqbRZ/+kWkxAz2crK7TKAcvX0Eyi8HyokPaq2T4817M23UrMPq2VNzFSu9qMcNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776963454; c=relaxed/simple;
	bh=Hk80eamG+qEXBGCpKhCZVAAClNt8WRxC61wg/mAvmXM=;
	h=To:Subject:From:Message-Id:Date; b=IXEeRUjmpLiNk/CQ7r4Ni4z5LWFXzNGtl6FJMXWg0cmhD2ox6ic767ea4LlmdIgDnQPMQT7BtCwzmv+lyAuulUeIY4D+Ct+i/zgBmDeifOLveQ273Fv4tAXVo5A7pvXTffJj6LnJSrpbvgGIdIMdi+JEVJ9TVnENslvf2stOsFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aAPYymAa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aAPYymAa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B98D0C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 16:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776963453;
	bh=Hk80eamG+qEXBGCpKhCZVAAClNt8WRxC61wg/mAvmXM=;
	h=To:Subject:From:Date:From;
	b=aAPYymAaLdENF1pwKbc/X3jGSmJQGZqfF+V4yJ8Z8hgs937QB/HuQjlfNRk4k62dh
	 sRg/w9SOV9swbFILUkGCvMnjwIaff0GmUGCAPo4yHkGqcMUJdKiJvKLOwYwZFlGxqN
	 Yk8prrOWYKBHKGBigPB3vVesCpQtZz66LH69NwUxqxdKL0FTylUbyyqxsXaQWrJPYY
	 cUjVj0w6i9iFXcYrNc3hOi8RTS3Ood94S9tLEXtkBKpWx96lPGE3yKTUUcF81tJTb3
	 HI9ME22HP8ICmRJ3/W5C4KqzoJKT5K4P2+3sfl5/DYzTdoMPDNANHWhrk+aar9V/qX
	 SDh63q4R1kZUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3B8FDEE29
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 16:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177696345368.20193.5669291186262030595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dba68fd7d487b216c0afc193658befdfeb7bcb340f69e91789e6ed76ec939eda
Date: Thu, 23 Apr 2026 16:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776963453
