Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231AF18870C
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735306554; cv=none; b=qnhcMpuUQiz/xhGS9zlwdJa68zFR4u+AA1MAoEgXu9Xv8CoP67paLnIRFJOgVEQX6nnvOXt4OCOLvWHAH+kSpuULhHNjHTh+5qRov9Mnry8vnoELLkNQsIZTC2TYyVA1vSWRIFrDvxm8DO1n5Rnmy1X/iEJv9R2dDEBK+EPPI2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735306554; c=relaxed/simple;
	bh=iPVRGtNgiu0nj2iPVhu3riSXBzQ5eGJRAWNCLFKP5gk=;
	h=To:Subject:From:Message-Id:Date; b=c4aofBPgAy93Fuh6jv5Ks5WBFZhTsoMjRzL4cQRkYvtvsXXJJabX1zhszY3IspnKhnGBZzurflXgeBb1VS47ApQ547AFYKFXtpGtinwty6DVyAtJsB60akesbggEThekPZJdmwXS6LqafOH9vxwy7MqpKIox0P/oIKK9wPnWMaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ti9xaMfj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ti9xaMfj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D38C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735306553;
	bh=iPVRGtNgiu0nj2iPVhu3riSXBzQ5eGJRAWNCLFKP5gk=;
	h=To:Subject:From:Date:From;
	b=ti9xaMfjv9S2Gntx5YZTGkEtRGeeOHnfhMoGg9QULOFh0QHb+9ngG95Psimh2/Mh3
	 fDtZvfF2up7SGQHennr0ubWVkTrbD1ma3ndi958Soe8BDkt4pVq3ph16XgxWrwnoM6
	 SmiAJoIAvtenlvX+hYt906ngwAuzM7HHixWJYA7eCFomV2yJPZU4EQ9cNtJ4mPOEdP
	 nhSkQ4Kl/+CGIkYw65VV4wkqW/GQ1DwS3b3UmXvVj42s+TQxoFJMitMVgcZWl2D+lm
	 XFOvYWL/Day3g0bPIeBkK6tYw2QUYJxBTmQa29SgoIF4bPnojdX7AKVWV4/eNRcrQ3
	 oWGZkLknp/1ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BC4E77191
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173530655361.31424.1737005542063572071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23830f3d281f7f835ad0da845ab016c77aba979560641ece7ffb1722e70d91e7
Date: Fri, 27 Dec 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735306553
