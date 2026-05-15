Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA0DB305665
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 20:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778878234; cv=none; b=o102w9xYhhtonDUCxkz65XBtZ2UKBmtO8Jnz4jYk799JiVejnw0VdwxY5QbJbmexaoQAy6mr1vpRX1q2YuOSu/ar6Kb0zy2w6c87yoltUf1EoTKyVi+sZBuAfJgqqI+KTxr61bTYvsHeV6X44YAvD33DzqOK1m5HHpB0X8AuKxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778878234; c=relaxed/simple;
	bh=yRrGCPultUvHoyo3Vwrf85mIKKza1D1hs1ZBZRyvs4I=;
	h=To:Subject:From:Message-Id:Date; b=iZTg0xTZpzAjzR3iCafAvXAIkfrIkNOH16TCNgtHryc36xReHc3LMsRBPb3FKP7iR3JlJ4dhGY/EjyyioHoygOGrDsPsvIEw/SRaS5Mee6kido4LpygMpvCL+N3GGFVGbyTm9DktQoO9ZaROqF6r/Natae1jIte0uIJw7GpvtzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h5vh3+4M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h5vh3+4M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBF6AC2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778878233;
	bh=yRrGCPultUvHoyo3Vwrf85mIKKza1D1hs1ZBZRyvs4I=;
	h=To:Subject:From:Date:From;
	b=h5vh3+4MdVHzS4sL4CcZUH04UetYKY1i1tboZ83o9bGUFh8a9V3+l+eyUt0RSeULL
	 HxQpEiM1cwcuewTuPLH0UGtDKbQ4gLojdkXxx79dT7La/7rm6cMUiGTLCggZgdoDnB
	 Wfqp73/7WZJvus55nmBsHOF0mXo8TuhzRQbV3sDtjRJoufD+UOMWvCuL0NngOlZ5mQ
	 MPiJ7TyXeba8eVA1fy+9ZsciiSMlDy/thhPQlt/efsDnsO6WgKYyC45D7sys4PoNhO
	 uDvDSIieox1NLzMos69/FSKks9t/Zt/lrZK7CgMLMQtcWfLmufUOVpEHT6loosGGh8
	 eZcPp5L3KHR9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0FBCD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177887823368.21530.6787349752407169128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42e0f318fcf88f0938b44e241e46c60e5d3102b8020f20ea66b266c3c30c6fd8
Date: Fri, 15 May 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778878233
