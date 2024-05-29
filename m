Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DF0817BA0
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 13:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716989663; cv=none; b=St2mSfaF/N/UCBKoO1YND1hIv7qU39BY2RuruKnLQTGqHr+/u3qnExjKTm/Q4MwgjUe3XiP/nI1flq5haO+yEGUpdlBQ07CtE34wE3qHlx+2IYbUpx7z4uEjHgl4cKJHVlGNAgzg2noM5o3RzyMiYpGMGrl39rSgnQLtTR8uvuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716989663; c=relaxed/simple;
	bh=+ambSLWKRdVLqIaqhyZRYGW3yejSBEjAe2++Bkx8tRg=;
	h=To:Subject:From:Message-Id:Date; b=haluQTdgqC+7ej4fYOSUdL+vWj9wHEY3YZbrOWgzdrhmLyYL38g7i/GjyovAXKQhCZ5Cp7P9b7es5+Wb5OzT9GcM0XKyzUrZjfRYM1EwRPn7tj7RPromobJyuhkSN9ZaSCkU96eJCCTiqpCEG85TPqmYVxiFs4bnMLqL7IijVQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UhdCsFVP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UhdCsFVP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9C44C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 13:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716989662;
	bh=+ambSLWKRdVLqIaqhyZRYGW3yejSBEjAe2++Bkx8tRg=;
	h=To:Subject:From:Date:From;
	b=UhdCsFVPvK6kqDWUmcTPRIaWkLZOFFl0a1K6/lU/1whIfzoS12YQC1nQ4jCqJMkW2
	 NpxvIiH76jZxNyn8Vq9CgmJi6Cjhd6uSRo3Dt/eREzbPJ3Se+sZn7W/ws7mbvCmo0T
	 VuSGyM2GG0oZlt6020QgCakvl527lEzf8K8FRgWSS1AYd08NSZoSab4929J+TOrqDu
	 phv4vNRLvRHWnVXep9ozs+7/FwZ9cztelNjIE/nGuxyYCfV3SpCoB1DnKpd5x1X1v3
	 9guY+SxkoKIrzQ2RqSlP0IjVr5imVqLJamHFxLH7qi88fxL1d/j0nS0NXstsHRCK2a
	 ArKD3+Ad1gXFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5555C25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 13:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171698966280.19476.4417117306951310633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d867ff3a90559855d776752b0b26b83452165cbf485c68d67fb6b1ba9103b36
Date: Wed, 29 May 2024 13:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716989662
