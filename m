Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 116AE29405
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 00:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773014694; cv=none; b=jJ/GUUFZanUiHtg+K0Z611wmtCnCVuSOG0ockUUD0AcV/5g1KtUOj7t/wEzht8ddIxNmbu7jGz6Emj8/zeTwI3P+lttR3QOjpH7dc+GB/UhKHVE11ZuI4JnCsOLRWhQmimQ6houn0pAurmYabbGGuZA5TipWhflv53K2mhHszO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773014694; c=relaxed/simple;
	bh=Ikvk5bkTNYDxIM8Fwqqp0jb5RmBJJbArZFM0T5jr8lw=;
	h=To:Subject:From:Message-Id:Date; b=W186/dQcfNN3AGjpvctI9CtZWR1iXi0MZuQgdD95lwO/ERpgek67FCbmskM6ll9/VOtPGapISWH9MKtyLDNwjBmhgHS0IF1idXi99DiIoYagw04Cqza79WZFjq6bayEj+QtQSWR+fbpLzPB+YP413TP4RqpPjJQteeKZcb4nA3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ppt7t4kT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ppt7t4kT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9414C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 00:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773014693;
	bh=Ikvk5bkTNYDxIM8Fwqqp0jb5RmBJJbArZFM0T5jr8lw=;
	h=To:Subject:From:Date:From;
	b=Ppt7t4kTsP5tnPY11tKRg3oS0C0TOPXd0jahZ5+nSGJ8GcTOvqfY1NcS0RTB0nK4N
	 nvrJrDvFvBSyQ33D4jcLmDyAfautTp9hOLUrM4TWqFy/3R7xH2GdXwkawKxckCjCXJ
	 MdieROPsTKFztyG81IOmE0FIsoLondiwFUFjZzIBvkcuuosrv0BwBnTzT86JlSHg0T
	 tzqkzIPLn9saL1YzUQI2s7om74mWVbj2ckG4pnj3mHlEpjM9g1OkA1o9Oat51SEMc6
	 dKPB99v2c8EDAwn4KHmkpdWF+0AZzo2Lv9Sf+lPWm29VloZaqNMrRNcbf8A4mI3Yii
	 MMCRKgz/lIkiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97073EA854A
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 00:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177301469358.15481.7894492070790472043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 980ad9d87d40ff0f454040e1b850528b75198aa0a8f627d02350d72b995d3a06
Date: Mon, 09 Mar 2026 00:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773014693
