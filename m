Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B600388363
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 21:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776721654; cv=none; b=bNyIfYNhhurrb3/P3nVgzkM3z2sEy3gtXYvyZSaIlWp3T60x23uzBmCgIlUdZ0hF/nErQkJUNqhtveN1xLf2lVmC1+4vZz8VBuy5gluTIFYIrpPjGAt1ELSUlP7yzx3VGWxTu5HbG+PsiVLMLiDtI4PQoRj+fjAWsWX0XGK7KVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776721654; c=relaxed/simple;
	bh=YDafkfQQUPd1NrAbcHgJ4GvUQfrtcyPiXJ0oo8f0hbw=;
	h=To:Subject:From:Message-Id:Date; b=kLggoKmaexsouIfGXuiyyZ4L7v8B8k5TabM3udYytrRA7eFYO7w5N25ppMEtfP7nin5crtgNk+S4FOBMs2DuSbzHglKY94iZosf8yo7NDzZzczVJI/TyLv6J3ExYr7CK6rGaVZjvnXWz6j55UPQjASsesSHNkBdtQzs7+V55eDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rqzPbGh/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rqzPbGh/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B829AC19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 21:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776721653;
	bh=YDafkfQQUPd1NrAbcHgJ4GvUQfrtcyPiXJ0oo8f0hbw=;
	h=To:Subject:From:Date:From;
	b=rqzPbGh/YYsxDcvz9OmxdXT4za195F/YTFh//q/mrRLlvorZh902MegpGqoNieg8q
	 R4F15kdO1JBECdZH3h3pL2yeHJYQ1t7Zrspaw6kQ9LjNDFgbWORv4gEb/PVt7JV92H
	 CEz17uaf4kwbRFfk/LoE8SZGPLMJY2aG6OSDz+hoYz53/V6ucSdLJiQY6+fTSjmQn7
	 +wuB5s+mKmXBpVW7IHPNnEunJ7zt5rloQb1rfRCTZ4PeC9D0SRKTmwcc059Y0BhmEz
	 2Kyu2LxPAPN6NvcGNWvSsV8o2Qqew5tFgHJv1aNt3XZgo8zd237XiqvIKfHD1iz6A9
	 Cmm4g7GsI8WOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA276F5A8C5
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 21:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177672165368.26123.12466572940309615478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80c0924efc978b100cb57ff0433cea438cb774f0d02b0ddd7427153f1bd2459f
Date: Mon, 20 Apr 2026 21:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776721653
