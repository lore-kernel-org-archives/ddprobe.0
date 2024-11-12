Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 317FE20E021
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731401154; cv=none; b=ejxykpkzzNhA/biKL4/cI9PBMcUQmAnGiK+qF6F/61Neu5r5YPiNcarDX6S5ffYgDp1WWrLbKVOHLe5O6QTKp3NveF3EdkPpI1eEJUxivze7L6bKfBxvgUcsnFdUsvU8PuWEyz0y2aBZow98QL+t9mwcnx+wUpxJUDX73rO1lME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731401154; c=relaxed/simple;
	bh=WgMML06jrE43MnUTJ19huFtcXRwo7p1AUnX+RX2I0Sw=;
	h=To:Subject:From:Message-Id:Date; b=N4CIB7w8Y8mOKru1z04qY2roirq3ZXIh6S3Zxzw8n85hrTJSAHaaHfIifEUdxAqw1yFZp/WNNAqEv9yXL1YJfLdsb0N/v6MI8zbOx0XeS4MTj8gh/awvAQqZfB49qsJSQkRbgBsCoLBEcuznfYIT3U7g1Tn4DIGgOvqUa5TeYcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zn0+CZUC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zn0+CZUC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF630C4CED6
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731401153;
	bh=WgMML06jrE43MnUTJ19huFtcXRwo7p1AUnX+RX2I0Sw=;
	h=To:Subject:From:Date:From;
	b=Zn0+CZUCtLZLbEo90LaDPhdf29eAB3ok6xSoXmAhOFd48nHEl9ehl7z+NbmEvMJLl
	 iXRefDKxHksoi7ONcBpJuOH+iCX9UvW/msNspVib8a8OKO58o8C21q7YdH/ndPbN3t
	 RcA7GOL+xpCzzoIiKN7vtk994He82mTlitm8UPFEnGPlLsFQMYqjcvIuCON4dWc+lQ
	 tenA1tXxA0xITkPcPxraGiogu5eGMbEm0VOZ71xDASc8xh38VMaoVKRC8IbvR+9jYT
	 nJFY3nkxhqptxAO9kHKJ3MtLXHBkiQN666+dw9nqKt2ZcKy8R9NIc6kGZwNcsUei7A
	 zXWkB5fwt6jbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B48AD41D6F
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173140115362.2986.8451154031419730703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b3cbe956beee348f32bb98eb84d7bca187511a18ab61eafc5c2fa1752ae1083
Date: Tue, 12 Nov 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731401153
