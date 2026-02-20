Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9EA29D297
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 23:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771631694; cv=none; b=TUtkQFbgLK+/AAB3DRYZWvWqRJsziYuMFi1L7VNhs4SAN0t7EAGJYevLJHqAydiWjVCrRbiUxoRkw4km4/+Wx+x0/zUxH217Xh6YNONo8zpwZWlN0z11D/5Bl2ojeWaWnxCpcMKiR1aMhTuQCS35MJsexEBEkrpzOyk63uMiaeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771631694; c=relaxed/simple;
	bh=Uivy3OF9+DLZ/FgThy9vwKzuHo4mb07GS4i9UT92crU=;
	h=To:Subject:From:Message-Id:Date; b=NC6FWHX3KCj56+kzaT3h3KYiR40VdB73qCWAw0RsRK2a0tFVTA9VdhxXMZeck13alop6wPrzhIonY6q20X6sMgUPyCvUZctdmLuXjdHl5LH/w6aMlaw4xxmEkM4R4cGevF016mlGhxfUwE17mrL2OLjrW+JEiILfTF4skWf6ux4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lw4lXrCE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lw4lXrCE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4A63C116D0
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 23:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771631693;
	bh=Uivy3OF9+DLZ/FgThy9vwKzuHo4mb07GS4i9UT92crU=;
	h=To:Subject:From:Date:From;
	b=Lw4lXrCEnlm09n+lDp9LsbwxCSl8P/36WNyalCqrAl10NbS0h04qF0a5s6ZDPdqLC
	 fbLUR1a3KGLVTdRkk7pjTfLmtORAlPYEh43oPCJBtnI8Q171gJtcDCbk9f86JQfv9s
	 SSCYfHIsQObkOYorvYKcttmufcQNghTJA01XHvowyRwDgiYEEs5lWecTiAzmtqnI12
	 dV/wF/9qliNPFodeKZy2xmLLkVdRVJSt6PjyfukkQ35+i36g+i5Sl3rMmlb4DOkl+C
	 L1kcOZdP+k4aYsX20t2I4BZZljWNiOWG20eufzLwVr8X9RbZ4wXJFc84xzuP7eQSX0
	 Q1VoALSy6mftg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C398C5DF67
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 23:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177163169362.15898.12444868729645055826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d8f14e42c8796a6858bacfc8ff9f30f8ea4fa546231df400bd02068fc2824c8
Date: Fri, 20 Feb 2026 23:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771631693
