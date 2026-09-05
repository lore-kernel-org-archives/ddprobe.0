Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 584653921CE
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788593434; cv=none; b=mLgqE1ny5cYftXIZj0UN3cAeYLTxGxcGf10Dhdb7f1UNb4xMDkfJq8Jv0fYYyMkkY2jY1Y1hKCNvmt40U7kBce8cMo2t5NY+KeiThZk9YLnw0XmyndSxvSkjaWNaRYbCeAxJZBof4BGyg2/CrkZfgGHaTID33gqOKLflXsyxgnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788593434; c=relaxed/simple;
	bh=DGG/yCqp31RIYsvJjDlpaY4zcelVOCumQMm+0xI3pQE=;
	h=To:Subject:From:Message-Id:Date; b=i1cOw8A4JwvAsa/lvWB6RS/j4gn3P86BCf8Y2MSAq/R8ncgNVyL6dlgDk4Krh88TcemJH6gvsWn/YpeAcLr9z2Mi12lvv/GyNuUw5Cutz/XrZZ5+V/iUPrrOlE8RfJdfIvvInzSZxg/muYqeWi6MtGgzDE6DSzpykVtUcCwF2As=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k+pChrvj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k+pChrvj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B6CC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788593433;
	bh=DGG/yCqp31RIYsvJjDlpaY4zcelVOCumQMm+0xI3pQE=;
	h=To:Subject:From:Date:From;
	b=k+pChrvjI6k7gQpss/zsXMlNLrNX6H5kSaWhWb/xcwsmd9iBEaIZgkLnCxDdFLWLk
	 l3bFUCpIaF62OkqPZfH7yWqKuPwSayc9UxRlZFo3viJKb1rYf+hCLQyj64eu9fyUYy
	 t4K9lqgzG4WsV8cdR6AC9F7wQMN65w2zNJ7uNVlNMvdi7YmESjGWgpeyWQdcfNXQN/
	 V8n8wi8U9RZlkLWjq+843IcuBDc/QNW7PElYNmtMYGU3dQfHiWbT7LXCbcIi6lZerW
	 GWqsLgGtnETk+Xvp9nNJV82SQgCU2r9hkZK0RDuEE/oxL8cQRrpSqG8rtfJDT+sCVC
	 SOU/mDlpj9LJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE863C624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178859343370.15917.17189625656502186845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d30e99382597f18caebaf132afb159f149aa43dd3923363b987f8be23b40c41d
Date: Sat, 05 Sep 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788593433
