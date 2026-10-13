Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D7B9518149
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791920434; cv=none; b=bfhrFKnLXjjnSXOPZZjLDOFF7MBuPMAJ/nJi6yaiLRRL0hgIdg8pkJR3A2iPRo1xtxjxV9RgT8Wxqg8JioxOWPofBQ/Zww3fpqfFh/Q/+s5BdCyt2cK2XqLEQi7kizfhb7OCSp8tVGrwvHFWbI7rcx0vT7drOFrUp9ojccrwwVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791920434; c=relaxed/simple;
	bh=QEVAQmqM22clGgUkLnYQI71rewhoRCGAWTx19/Gusl8=;
	h=To:Subject:From:Message-Id:Date; b=SRvpUbK5O+wI5Eky8cltYtz4O8w0ZJ7CPPlzEslItXCCGwCPxMvKIRbSLV9SUarOBo6In7bdGIDBdJ0xqE3kptkFH/ElBX+iiMP7nuu5gjs5i0G0z7MP7Fvy/tABVn9S2hOF1j3StBfq+DLMBvNnihz+njWD36sSuWRDM3uUNYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lONW31lA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lONW31lA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D154BC2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791920433;
	bh=QEVAQmqM22clGgUkLnYQI71rewhoRCGAWTx19/Gusl8=;
	h=To:Subject:From:Date:From;
	b=lONW31lA757MBngsQYq6wRMqY5u9p7aA9ZjMVH4fhOP54eRFMnP2XTKbXoAxTkHT5
	 zWrswaOsWBz07dPnctMQ7GpQXQXBkhms64ReAXRPWJiX2Iemx6x5Wwc7Vblb76i2Zy
	 jHtW2l89RnFhlUKXrpJfS6IULpUIZrzPKLpKJun097LCrHtu4XVMV2wyHpczbmCQzn
	 UzaGOBfvQU4umNQLk9LMwAehOyESf4NPuJFV3lugulrt8Nnr4wYEzg+38HIaf5huDG
	 LvJlSm1EOV2EV1Ne/BQ9TSSvkc862jgLRQHN8KFJo5NsIoLTEqLgtKKvQpw6/zy8Il
	 o+FWO42n0inkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB12CC6B12
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179192043369.19046.10543023419649268478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e3264a3944effee40b6167c5e326f72b80d7a808308d6052fcc01f55ae39c74
Date: Tue, 13 Oct 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791920433
