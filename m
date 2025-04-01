Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45FA31C8612
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743527994; cv=none; b=JN95PghjxYlnY8r0zrgpgZSgYSQ+vQgO99kWVfl1EK8jVTJ9I5zsCico15SLOdkZzDDbuy8qlQqjCMopGYrByr4WqGJsJUWrozdP/Qft0mx6mffBoYBHzWVG+HSit9RzJyM+9be3gULNqEoU2c7WCGkm0RMtXa4GA8RXSDYbpy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743527994; c=relaxed/simple;
	bh=MJulGEXXSt4pSre5m1ipewFRwmftPvxCyxIX2PcOqh8=;
	h=To:Subject:From:Message-Id:Date; b=dCU3pNJ6mNrov2pcGBXk9g3TTzQeCprb3UGxIC2IAMZt+5tEqm6e8xlEFFv6pFjfiDR85XmVI2D6HRZdq0shQrtQZWifbnw3g/uL/Mi/fiCG0NVlp9OMCPMDKDWKKYTXp6aW92LYHb48grjeQ81hCNCJawyTBksghFPCLemC3+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pueG6qg0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pueG6qg0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B19DFC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743527993;
	bh=MJulGEXXSt4pSre5m1ipewFRwmftPvxCyxIX2PcOqh8=;
	h=To:Subject:From:Date:From;
	b=pueG6qg0ZgMBq1eBjxBG+bozZye1rK/mQ4VtPHYWgyHrKkS+fJs+sZmSO/9w9bKaJ
	 JZuWVBas0c2HEy2cHwQNehpHr2GVuglU7AEMUsKbqGLobNmGn+W33JatqouckfrL8Z
	 0EI1sEllSwrrnezS7qRXTXa7276t0HXLX75cbxatfYKFqNB6nzjzUbMExKrCdPBQX/
	 gJbIRaMMorCm6730bC6+jLotqEKH0UpAFhPDc/vg3P7h1hjuhy35aYKNWR9a0TlM0x
	 x5hxyKvD1qpQi1TEa2JFF2z9G14GLiWD2VZs2/P73cnP2lNBOibvxnd+QJpWUgn3Mc
	 h/B6t5lq0Y6xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BB1C36010
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174352799361.16934.17660439469193944013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1bbdf94c5438143f6c1aff8340225d808b30ba6cbb838f038463eeacc000bda
Date: Tue, 01 Apr 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743527993
