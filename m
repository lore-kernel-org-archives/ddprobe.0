Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270F4768E7
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726245354; cv=none; b=iq/XuabGTKieW2oJy21DV51hijRZRrm3RhNEyMxLbck+uniQPdcC3t9dqkbM3A2FdwrDENU3lTT7FlpQkHlC2ygiSAe5q83BJWEK0SJywQQifMAR0fx8Zf0FqzMOjJezUuq3fscJuMZtqUD3EVmFC04IzeFsWWdskXwLalmk8cQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726245354; c=relaxed/simple;
	bh=x9lTfhL+PMgGmF27oFawVjMhPIGmOpTpNwkQ4n4cxcY=;
	h=To:Subject:From:Message-Id:Date; b=RZm25jVOPwJ51kJo6jXYrE8yzGeIGorJKJO3CAVRdnhLCri9x/rKZna/uZIFDrLmkhZojAevjELKiY7jPagT0o2rHCYbjQKoLhh6/U9sJDdbdsmEp8MD+KvzQSEngl9Qo37LtNnRtarNXmqDbR6zrqrNfQjywiKZYcxjxgHZKyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TG8duVTu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TG8duVTu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0451C4CEC0
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726245353;
	bh=x9lTfhL+PMgGmF27oFawVjMhPIGmOpTpNwkQ4n4cxcY=;
	h=To:Subject:From:Date:From;
	b=TG8duVTuJ6Psr43lMqeKBOuEJuSluL3WyKjpRoVu9pm7JuULlQTBqrSCL2lXbEb2C
	 2voLwyQxIE83Kpwf/hxtrCzjg6QfFSRgSzy6Mqa8tTfWaSUYdZxUzLTT+edffZEC7c
	 DSZrgHcwG0pAT901WWyOVCiT0f3uEiU4YQR1JK9kA8g/ZWFNw1hchF6Ug5FC/EeHDf
	 Gfr1VF/sCt1/nzJ4fLt+2VGOj0mgxbTMorhyuzfS5j1oqUFocTdF0n7TEFuy1e7agK
	 RBRjmbkTKx24kLsxQHanTDXM5hX0sJxgrYvTM8Wlj01SViNEBgJtsPylK6NmNIM7gO
	 U+EPcAb8S22wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91236FC6160
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172624535358.31219.10048744982415652245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08fcf9396ae94939cd8c5fdd14e01836d106b97099a4448941c8ee5dadbcd729
Date: Fri, 13 Sep 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726245353
