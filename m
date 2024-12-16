Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2612B1FF60C
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734341154; cv=none; b=i0BxRqXNUm207Js6TtknXmaKFhhfzsKvTUC96v9Z9L0HVbIEmIRLMX3XVi1qdbF/+0nzceQhxsakyZJHWV47zggnHHGVqBbPL6xxVOqXM9sW12qAJ26noQf6XcuNBnP9LrGIpy0CCaSwdVpQRqjc/6UUjFpnmNQJ7+WH6cVPJyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734341154; c=relaxed/simple;
	bh=GpiCObieg2W+R3ss4OjoV3d7LWPekVdfvjwYmY8qy7I=;
	h=To:Subject:From:Message-Id:Date; b=r5/hsRD3mIzZCk23ti6uLm5PH89I/gCVBvxb2wXpB2cUkIcNo19qYO/88sPZ8sWh4/9JCtYCbVwmvKjXa0/pdIF7GsDyI4AsrJY54F5kX5Tb8LnmwBSDuS1xaG35jBtF6BBh58BNN/fvZs8potSp3ihdAYr+CBWOh4Cw8fBWNIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wi+GqaVg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wi+GqaVg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D18C4CED3
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734341153;
	bh=GpiCObieg2W+R3ss4OjoV3d7LWPekVdfvjwYmY8qy7I=;
	h=To:Subject:From:Date:From;
	b=Wi+GqaVgF2QLLjeSvZEv4TDAxnmeEWDT24y3XA03WcuoH75A1JYs/uZ5XEasnhV/l
	 3KGt+Xk03qtZ8sovwQ0XmzqJW+DYaAMYSd0rf/6e910cskr6CnerfV7o62Ewpc7JFa
	 m24PbjoSAdrfFtF6oerr44o+eM6n6S/cPqKZSzG13yDi9LN8eB8Fgzj7ig77GROzii
	 tPpLnTTaKeBcLANLWLpzISq8yEOr9ObS15WCLO2kJg7X4vPncr4hgPyM/GQWMo/bqS
	 0FnF5yxjVFfphCOCJ1mFSTG2GuaLw8L0I6Z+oA7xE2kso/yrPk1F5g6XHuEL45HmK+
	 dQ8rx5MY58k1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F46E77180
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173434115359.3102.18079932550226734386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36f1ef9244db83ae3a653b39f8b324861837fc35eb90b29639b2ca28c95a2432
Date: Mon, 16 Dec 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734341153
