Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347332EA732
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 04:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777609654; cv=none; b=aY1hYE9+FJxGgavH1hSeXz9iYFMWjW0tvq18AQ2UD5VS21JBpQr0PqobHFHRIZTCFmau6eO1bBwNoUgoT6kpllwT3pprNadhjqpf+SkeLleaLORzbl2RYlt1AbffanM9nXEfRy4Ds+Gj7e9F6QDceWvQRGzeSoir2kko/B00O38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777609654; c=relaxed/simple;
	bh=dhwmgH3V0itOWHYmUMg32akPD4fsL/oy6XeYa03lq24=;
	h=To:Subject:From:Message-Id:Date; b=FGPDE7VEEJDDeNxj/UEqShDIqqXBljlSEb8mlGBW1P1B73iXn57sGoB0aabg/GUvZ/GEVQOozJfCVCVsW1MQREMy+AU+hJTsDC9OUZznVH8QBssMomg0iluD0GcpdHFlj3/ImmVEvVTvkt6UH4RvINFUytos38/fGNnVTRlwo9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nMakkXEY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nMakkXEY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3428C2BCB7
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 04:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777609653;
	bh=dhwmgH3V0itOWHYmUMg32akPD4fsL/oy6XeYa03lq24=;
	h=To:Subject:From:Date:From;
	b=nMakkXEYuVk+TjqinJ2Q6dP7hhhGT/teDhWOdXYsQgiRRDjBFHcbBkQ6nTmE7BAC6
	 kbQNcp/lImrQR89sAiFiE0DDfHELs27vTrdaudk4rdDsP0SY731vxk8+DbzZwJ9+ix
	 11zw4MotHgKCFtO5xySlXse5lN/A/hM10mEaEdoM8tCiLeSKjl4mgw1Un26EWccMK+
	 Joq4kbduXIYvUb8xkNYw+iE9FihVo5npRbrCSrlGfLfCjVl75bHn+Y4F2lgqv27O7F
	 WAZtAxps+wm6ntwPWDfoy4NbthDjznQPYSc0mnn87zmqSWLtjvO2+pVxrBBFpRqQWj
	 +CRUhjdKNBKlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD649FF885A
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 04:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177760965368.4845.11664944949991864589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df144af18f22abdf7d797e807c3ecf4dd909f9ac1df5a6162811b51cf86f70ba
Date: Fri, 01 May 2026 04:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777609653
