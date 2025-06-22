Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D5C81A08AF
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750586994; cv=none; b=iYyaIu/RZ61BbsWvH3yXCyieAFiy60qtyKNSP1+FGHn9rVVHpJe+WgZHZThco2vKuIeMlwBfeth+xdLwpsRI/Nhrqg3SePe2sNH1vxGfkjCOayNhrja+wgCrL252hlCfvIwPLCvIhDwRZ4LxvtbkC16srps2LO9gy+yoVzUBYEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750586994; c=relaxed/simple;
	bh=qhV5kILJqHSiRWf9R5V5fIs73n4jNhdHlAOG8Ylyyvs=;
	h=To:Subject:From:Message-Id:Date; b=rCbAQwbbcGNpGofLhecPks3QY4Zmni3QoadPeo3suVokpvI0HxH8LPC5dr6lPO99Z0G4Z++GNXUWWBObD9LNsPqyyjIA6g1QwAN9aJ1gyseaVC2uItLii92f4+6X0tB13IcvvJ9Z0ta6/Lb5iVQKzizF68KW1Hm48Ftbm4yvpnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LGy1HUWC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LGy1HUWC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1AEC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750586993;
	bh=qhV5kILJqHSiRWf9R5V5fIs73n4jNhdHlAOG8Ylyyvs=;
	h=To:Subject:From:Date:From;
	b=LGy1HUWCsQzzqWvSDIGLPCPamFJje+CQbpxF/x2oAOjN4bwiFeRQPdPxNxvVJqepo
	 9tG+7s86eNQHGQqRzqVkVXseacRbSX/Og9j8cObEedy1VbkF1YBLEeoyMc1NvXIA8L
	 UynHIDEDE22azNmXNZB6KTbkk13GZSdlmJlFAs9XIpQo3mwJBO5h7L3itIkVpHnS7t
	 Pom99EnASk+D51wiPh1zmR3rdKLHlQFFIA9FSiopdm+Ofq2TJbfUuL0grkKU4cWTuQ
	 thJfe6jEyDL7SJX9EhfAPTSDtoInovgfS5iDfH7PTv1pVbc32QG51Q0uuwSfzx3sGg
	 SFGUw3HnPjFug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F23EC7115C
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175058699357.12504.13670688727739209678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db0712d0f007503877c740449968cc7d3d48eb13b228ef393d813b9e57d4c63c
Date: Sun, 22 Jun 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750586993
