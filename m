Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11D132F49F0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768245234; cv=none; b=kkl3aT59pI30exWdwoE7Btmb9m7XVB0eMuxyhUSr7lUgFDET4sJR4+rQ24RDnxICQoU1aZU+wcOWJa/eQESUD6x/KEQlu6EQjh0per4MpZLdWdKNj7WX+vmM/Q8OYzIFP9CMkRjTR6e0DRuU5M4mSgnznVZW3kPRraVxf2McG7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768245234; c=relaxed/simple;
	bh=ArATHrsixOxZJgMacNy0TkD6ao8uQKiSexrUoTEfX8A=;
	h=To:Subject:From:Message-Id:Date; b=YhrFCkiaQqbEWbUIHkmADk2NIRYtLlOeEY5EwQ/gTUOErLr/qmjaxJT+q7CNON1WLjH7QV4A3MM3s9rDoGXieF/Zfs3HgkB56AGLFRkTFaQ3QdbgHZ5bs+c/7AHlHWrbG6Z5rg6Modo1ZhIX+Q1VzTUpysL6vBaDCDrjm1g2sgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rT4bGgCH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rT4bGgCH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1252C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768245233;
	bh=ArATHrsixOxZJgMacNy0TkD6ao8uQKiSexrUoTEfX8A=;
	h=To:Subject:From:Date:From;
	b=rT4bGgCHeoaWmNIqBHqjEm77fFXKZkJUKT78OLupg2XrWS5W4x3M+IRCily9SXofZ
	 GYxATO8sthBS9RhTiGLblyZSvIF3qHxq4Y+yC8nQqKqxumAQ/c2Dv0BAxLfRF+Fj0D
	 fV+XNuKzUQsMwSCfM+ciKc57BsrTHl5a72S7sr6Yp3Ta3SHzhkPCcv6/v8e8ZmzJmV
	 HfqlT146nW4DDgvGJCYt0HJ//71+KKn4KcHJyOwZHB2Yj/2DkukLOqN1arIvGIN3kH
	 FrqMb2KdCWtpMOZMtgRxwfwARPsb75ZFC6f6izMK6xk4mjaXlK869ueWpc6eRGB8IO
	 mlY3Iq1EJ1Mvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B5FCF45CB
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176824523358.26145.3505195890792797650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1e86d3ae4d878f237d340a229f71a43daf8edd5a995b1b1e13c329c21325c45
Date: Mon, 12 Jan 2026 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768245233
