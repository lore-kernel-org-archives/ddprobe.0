Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC53C47A7D
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 19:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710013697; cv=none; b=Gil71Px8S3/Q1/597O2qamLgmTk88PiN8aXlqe2JeF5NTGi1fVAcqtmBcHUZ+AXmTzu+H8PbLgLjUOagB91d7vXPaUDFqSUbnenL13I05Cga14d+BX4h3zP6F5InAWihFECoq64hv44qR2nTLdlbMH7Yp+XgW0Nz5JIZEhJN+xs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710013697; c=relaxed/simple;
	bh=dTaKIpe3PbrbY5xq4X0NedIih8w4ubX1BP29inZR8yI=;
	h=To:Subject:From:Message-Id:Date; b=dCY86oba705Vn2q34NQU+AveSafYKOQC7x/EJkciBMl4K3unmweId9ngKVqU3uD9NjM1hIq69+9tJkLnyWbdRHQDzov8LnbxKPtatGHqATLnU2CqJm74xbK3C8OpTZE2C/BgNIIVkI5wwyiOxfNlRpHHrmTJq4TkCstobcvuXaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aCIN96Zi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aCIN96Zi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D3D4C433C7
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 19:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710013696;
	bh=dTaKIpe3PbrbY5xq4X0NedIih8w4ubX1BP29inZR8yI=;
	h=To:Subject:From:Date:From;
	b=aCIN96Zi2rZZupoZqg2l0gRGLlb8WgGP3CQir5wp1FUxaij7DSU8OSZfCwo1N9XoG
	 cqxEalLuzNsD9e52Ut1Jw1WXcYO2FFQnerQHWdY2JI5+P353P368H0ALx9tHxxQfp7
	 QyjMrxW4RbUeIyfPd2sZrny8N6UafZ7sbl8WIt+6s7AR9FGxh+lsDX4vFtLZaBanID
	 1ODhSuROW/VDkX2uJFV8hCFTYMMpTkzQbWYZLKwT0gtwaVSlne/vYWP/6oVq2uiupy
	 adeIXzRl1jZKdZUsmlVg+FBEPnNDR/QQnR2zyHJIgOPM37Ec4UUFFcd/D/TgO7P+0E
	 d4zcjg09Kua7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60ECEC54791
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 19:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171001369637.18798.9547797035787788047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69c3c19ef4d4b7d097cfe708c21000c13e379adc5168b768372a23d7ef255bd5
Date: Sat, 09 Mar 2024 19:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710013696
