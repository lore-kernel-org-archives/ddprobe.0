Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4014F2DAFAA
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760645394; cv=none; b=UenNzaeTvueueJt5XY2j/uyvTjjKJGSOPWOLH0WNPt9wzMHdNYnOADrRJwvzos+JFqAtifvILipQu+TGajBWxVo/YBC/QPBbgobjrGMfLFay1fg7HrWhhZts4/5UW4ge7fNbbvENZZXz0jxIIMHDAaik5Y0co0WsZV8cXE0/8nA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760645394; c=relaxed/simple;
	bh=xX5DuNJYO3fWzDsVc5tDWS8FThkLx1fCohCcBSvzw4E=;
	h=To:Subject:From:Message-Id:Date; b=iM9l4L5AXIA+NqQIlQ73wToQbpowGrHw8GeiJ0lkUIXiG7EqPVjNxrX+mhZ4PgbgeamcR6sLuK2pboRg8JghQsaor7AYulrj5NMe1dyz0Dtpd0PpeHJfk/kg7pIO/JzDH7LS5kYPeYjwQ2f1eXXCmjkZntWlIdN0ddl/L8AmgI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fifQRCMn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fifQRCMn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3C96C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760645393;
	bh=xX5DuNJYO3fWzDsVc5tDWS8FThkLx1fCohCcBSvzw4E=;
	h=To:Subject:From:Date:From;
	b=fifQRCMnZZcDjboFQ8Xyj9RqYWgKYhkELIKXyGfLXHQQZGv4eqUnD49V/oFSSnF+a
	 wm8W2ggxkNEDYZREuvZojvW/rhRlwjis1wbTnOeX9xEBK3gklDHERkVNLXRY0CAH0W
	 gGrH+DcZAT9XyQenfbycidahu37vtjbI+MU0Emursq2g/8EV0jNA6/+DG4hB0lXZqV
	 k+6OZkms9Zt0VyFr9edJQ0BaEtPfppu9ujMpRcUK2mdV45ipqQFCf3h9GoKPI8FyQP
	 XeKDYBlDPDLMHr+7VE+DxVG/VZhrd53nLz9mZzCKRhrCX5JdOtKe5BxQfrDgnsDn+c
	 +4eTYC1xCXfHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B0E5CCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176064539362.26668.4243997355870731398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c2cd4843f9ecdbc0a8f99e126325eef724409150853f1d21e14d7be6384987f
Date: Thu, 16 Oct 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760645393
