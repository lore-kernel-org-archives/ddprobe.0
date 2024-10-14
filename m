Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F22720323
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728948954; cv=none; b=aeMFNTs6ss9ElH6n/r0PNusPy0P6nkwnQm1+QtIzi/6NHt1ZMix8Y4olPuCsxn1pZgDwmBjo20AlbVoFWNmkMY4dtQS5vMqtjGMGBjzwlRdB2ZWOKshqOeCFKPUbE0dg5PR1ZXE2nK2eZosHGZJ6NwnzhD8Pr4PPsAQSs0YYiC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728948954; c=relaxed/simple;
	bh=GZ3fxcJlrhIVJ6V5FB9y+7uhvCOg9wYyWlzgLsjJFpw=;
	h=To:Subject:From:Message-Id:Date; b=ev687U7TQF4F7h9JbOSY7t/6F0N+nSbrhe/y/vKqM5/8PmXnUBMzrHFsaiZkT+eZ2Xv18wW5tiKoa6l7N7KaZTN0FnJw/E8Ghl+jcbn0Xr/5SGxQCV2O/kh2tjXvKNC5qABx9bt7AsC+WUqmbP2ngo/7xxb6q68gokXIUJbxSVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JS7tDavE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JS7tDavE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB867C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728948953;
	bh=GZ3fxcJlrhIVJ6V5FB9y+7uhvCOg9wYyWlzgLsjJFpw=;
	h=To:Subject:From:Date:From;
	b=JS7tDavEiZB/AWm2KU851/EwoUo+cc2VAW/Wq6+bSPW0q80Y+kkUP2DkIm0RUyI8d
	 N5cixNXoxqUt49QWlq8Y7LP7iYsed8M2qT/1TxuzEsbx+OgQKp8jiZrWq2L+Qebf1+
	 w9o4+lNpdpmRDouKUUaomWYqCajBkvOUfYOl0M4XSlBT9YPPW1He+bM8qlrV5eoEgU
	 /+7qjMtTdlKBxxtERQIJYJcCNK5TL1bGlzr0jPoMB3Ney1Kt+0Qm3mZvstCITqIgbZ
	 fKmKyzoRDBgP7yhAZjYnIciKvMCRUWChPfLx2eg3eucs6dRkPwwNeyvW1Vj1ISylZa
	 LCiUBorgWCifg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A246D18157
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172894895359.5913.16131325949452845673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3d4fee4505b5d3bb8559ab5b0114fb517a8c849c1417438effc61ace34459f4
Date: Mon, 14 Oct 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728948953
