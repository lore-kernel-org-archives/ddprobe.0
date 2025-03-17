Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 506AF14A4F9
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742183994; cv=none; b=Divq7LP63xjcF5IFZcyxcTmkIDlDuZn+JPWL+RIa2bFk8ooY7MNDtBLjXOn3qJEZLDU3kti32330NLi4yRtkQR47Kvhg0HKjeii0IcWZRkGfkBAkobpBR/3HYUrRqgTlKU87lKqtWVu1n3m+uJ8OzNNtgQwWpACcizr8YVkA++Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742183994; c=relaxed/simple;
	bh=eB8BssbUtXp6YCWSq/tEXsQsRD7EukDyPapX+y3aZ6g=;
	h=To:Subject:From:Message-Id:Date; b=pOvAXUfuKDRsvMgMHeem3J1X9yXR+VUvDB+Ozr8v2NYYVozhzcEeodLEfPwit7JJRdK1C8DxShCa8gxWA6V3E4nWpXFlGiAnZA5Jfjt2fGTVVBKvXuvCmVexbzvXr8+SmF11I87gONa3OabujlNWLA+31XODkW2xwc9TRqEcYXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sn+pwJeT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sn+pwJeT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C54C3C4CEEC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742183993;
	bh=eB8BssbUtXp6YCWSq/tEXsQsRD7EukDyPapX+y3aZ6g=;
	h=To:Subject:From:Date:From;
	b=Sn+pwJeTAOWcuVInmZHdz6dKolBBntCunjgUseUQ2JsfjyAG0BX+2/Me+QjzvihWF
	 aW4pxw1sS9D+WTVJtviJJtqhQjjxdDP4ZtC/JsV46ou61mw34cCIrzAWQHdHXrnu6v
	 yn1gGE88GUYfKYeEx6f+YEycYlg80gEcwQbRgq2C+SCpOG0GaluRiJyE6ZWNsSRCA6
	 NB5rT+CJXd2E3wMQ85fdwoc+0OWyebvaIq5YkbmH+QWON7GSSSDBXfFZtpKN14niaB
	 ZEI8Gvo0lvbC6NYKdQc7/ei3oFRECtdtVJei3Ze3YO0T/yWvNuSvrmafaR/NbWYKnv
	 fAwccacE4HHiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3741C282EC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174218399360.20241.3710962937655638111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9387f49353cbca3b2a9b9b12db51e98173a088a47b29729bc010cc68850734b8
Date: Mon, 17 Mar 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742183993
