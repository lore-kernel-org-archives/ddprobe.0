Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E3C29BDB5
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762154394; cv=none; b=gftLXtOgAsuJ0/iWwykiqRdstAOaufoTcv7orMeeoVl1j+YOsz85ZFt0/iF7JEzK8x3LD13EMUrNJw6yC2Z4Ss+qzaPrXM6bgH/Paq4+5VlCqZp8m51UKXb9kYcEuY01B2afUCzZyKlGBVM0mrMxx08pRzzc27fzoy2XcZYd80c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762154394; c=relaxed/simple;
	bh=lXF7ki9j4t6UGH4nK3BW7K90u4rrKShLC+QbOvfReCA=;
	h=To:Subject:From:Message-Id:Date; b=I2c1SKymd0+AnedlAkB352PF2AKBUoHBQWZbjvCCXzJBhTQ5Ef3nmJXzDzbBTUFQ/xYXWhRml2KQdUlWl0xZIYykrgaSJ7u8RF4BgPzfjxhicHcI+fNWh7ToRc/v4OJeLUkqyYiXG+A8mf7f+hYDW8NyMcj12OT7eFuCj9aHVGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hJJAY+qc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hJJAY+qc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20B5C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762154393;
	bh=lXF7ki9j4t6UGH4nK3BW7K90u4rrKShLC+QbOvfReCA=;
	h=To:Subject:From:Date:From;
	b=hJJAY+qcbgseFi94aVmiNQnlSJ1F1FxI7c67h8uIlZLy4iqXrhe2eI0LX3QfmUD8F
	 9XCapL31w1kb1jlfFXFYb229vpU0Pwb0uybspcwXCMPdsBtkfXs4lHJa7LhfrKoXn2
	 uVZ9YjmqkWBg7yfps2q01f6qvOuKHCLzCt4IeayXVUdME9qfkDztW8nLKQIzUurRe1
	 VLWMiU2IB133vrIoAslwOzdg/ItdK+70JCnGLWEIgS1Tjfh5kAvodBGDCLjOV0pLps
	 4QGKwnlG75uh5cmK9SkVD1CoIlkBfyVMhy/WoV7aB9zHfRDH6yhgn72HtUcr5n4R8C
	 H+xgHwBXHvcJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90994CCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176215439358.24715.5950610413422980280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72ddea7e1812606b355bd46f848e005cb752f7bc688655c244c342cc46320587
Date: Mon, 03 Nov 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762154393
