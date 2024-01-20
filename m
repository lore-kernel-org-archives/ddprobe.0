Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F17575381
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 06:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705732097; cv=none; b=uGQmA1Eng/EQcRWFhEEEkXfhDLlDGcwVlBDx26V4WTVRlhkhl255Kh74mJrjeloKX5bE9htWL/Acl+IAsuAULXdRi9hvB20TLERKCDGFkILf+K+11q5xlpPZcfCyEsoBpE8Ahrp5ptSLFq8yaTcmOTtD2HbicAW5BTId84+lY+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705732097; c=relaxed/simple;
	bh=n7Xr5B9iFs+iQIQriBYbfKUl8IJ97DNxmEfqyt64u/g=;
	h=To:Subject:From:Message-Id:Date; b=eO4ZeEWUJeWKTL0ggF6KcimzRdh9MqO+ero/6CPnm/fz1QMRBxQ4k3jCjv84tASiivyZZDiwghFM9ZQwJ3zEQnDdsC3C/rZ06BIvb7MyCt0BczbSRj1A0B0phk985ViLL2tz9Sf2mIwsclH07pmppwUvwygNuoy0PyV2xixFkXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FQ/PSR5B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FQ/PSR5B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 803F0C433F1
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 06:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705732096;
	bh=n7Xr5B9iFs+iQIQriBYbfKUl8IJ97DNxmEfqyt64u/g=;
	h=To:Subject:From:Date:From;
	b=FQ/PSR5B3hQYU7ANtIV9JVJC+fsBJkL3YGD9crDV+S/Uag5Zr+Gjp72T4p08q+PL9
	 1QxKscNsLXEtuPSRC929P+gPVn8N9FXb8Q6ts/YlhTHp/jnFIGQrgTbnevcosb4j3x
	 xP1uS+bo8kkefY3k1AERNILbgyYNq4mVl/il5tCw+fqGnVeWeV9/QPl2hYO+0RubHA
	 ig6TuhEQleQCoI7zJn6P98Oyur6iOpJFI5a5Hq4mV/A4hOhkpw25BW1/ijH7GaI6pt
	 QT6D4v7r+16sDz9SdzVcPYoBxlIJwl3mTeAbps/+DMsD7UimhOVzYWzMSGXC2WvvKH
	 bSeDHRHkSG1jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6610EC47258
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 06:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170573209638.30022.1228383871198596995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b390af11d028c6eccd4ac57d3017547e6ca010290930babcabf6044bea9f5a3a
Date: Sat, 20 Jan 2024 06:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705732096
