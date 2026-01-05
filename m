Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23132316915
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767580434; cv=none; b=rEDAHQ2LG+ixq1c8YUjlGywg3s0OibJWDbK+3dm0Thbyk5NkTV0aJy8CrHhnKTJYYYB2vK0ZAIKjKaPkNE4Ssgkfismc05vs8Cx3uuYUAXgKssAhF6lYjBabird7lQWAndbRKogw+B4nIzLdd/ZB4jjHpuVsCmYRglkbkd7cXo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767580434; c=relaxed/simple;
	bh=xmMJxSwhA2eDIFn5tqk1Flu1fsnYbn3ehjtnhLz85v8=;
	h=To:Subject:From:Message-Id:Date; b=sqjQW214QSJPDwLksKRqhkO7i4PdU3bf7imFHDMZ+KYgfgey4BgkJknvNwt4AM7NxCH1G7WGVOKWqvc5QDFh0odHFlSpd91aPtdkKoV9Ig/pgB8eenCVVNwhrLHX+r+AskuoXVx94qI+U17Uf8/a1ykJY2dEdriB0ixDl803TTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m5mj3QKp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m5mj3QKp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1757C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767580433;
	bh=xmMJxSwhA2eDIFn5tqk1Flu1fsnYbn3ehjtnhLz85v8=;
	h=To:Subject:From:Date:From;
	b=m5mj3QKpMGkYSsebABKnKHA1oRUkUdm3agZFaTnAa2aRH8p6DLnBm0TEkvVP7IJTA
	 qAFH7RoBj3gNzTTlhsLtaBw9qDd4FHfA+BeSzt7LkLmz5lrx0NJAxY03j/Ge/iSTfq
	 NBoWPa0kfNNsDvdQGm8aPNMli9zuKSxZ37b84ILGsr+WHvn1Isel+WtOfw+QLSDx1d
	 cbt59+CAPED/YFQF8Ryg+aQENzrBFSALj5ezFDc7FB5rONlrrrP9r3ODaus77IqHZJ
	 l8WpN472cARE54mQcOBd4scqC3REX2aq9KWDwOxKAC9S7I2ogl9yxQQr2ZQSGgH7tm
	 f90biOfaqz/Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFA2C2A073
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176758043357.32168.6301817121442172980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3087ac7562b8c7d7076caac988d5227d5af6195b4fba386be33b063ad5771afd
Date: Mon, 05 Jan 2026 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767580433
