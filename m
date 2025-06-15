Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1914B27A918
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750001994; cv=none; b=JBc+kQjw3Ewsqr4+Ezfp6jIq7iEWFve0rPftJfnICjsxVzrjQvG6T3r50pj/TpRlzzz2HKfcwh92Bsdu8QNv1CEILxqVR407thVgu78R+sj4a/OPDo7eM66F/get4VlIpaoASBNNSlvxk2GS+7+0J9/+BGrTumTWxK6MoztcNOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750001994; c=relaxed/simple;
	bh=MsTurK7HA45lxzAfhiyLQoyCnvHxg+GqlMnFMim5VJU=;
	h=To:Subject:From:Message-Id:Date; b=kUW2oyDnyOObp2GNC/LFp8rXiMHtNQ1UUQeUHmlDO+BoAorBQHkP4CMghCwmaWTVBbzGhdHC2kHzf8jEKDA6Ftlpj9LTdb8OhNmy4Dv6cRiwuokQrDAL+Di7cxkfyu2fyUr4t4Ia9AOp5Lhx2PJ7QVa+8wI5Xx/1On1akPXu5p8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BKc+gh/2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BKc+gh/2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A448EC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750001993;
	bh=MsTurK7HA45lxzAfhiyLQoyCnvHxg+GqlMnFMim5VJU=;
	h=To:Subject:From:Date:From;
	b=BKc+gh/2vPofZR9iN1Cg5JLzwC+YImORLNN1Z2obkwIYc8h6NFHtneFhGYMThe7bE
	 Ft9SVFY3YV+3NLAuel2DAjIVkljabfUSuok3ShyxXIL7XH2o6Huy4D13f8SBAfpY2C
	 J+Ko8nKkBNe4wnq11Ee+RXvqoRXhQLTEgoaFjXaYo1eoZ3R7W0aGRTblo4zeYhOS9u
	 jM8I41QS9DgA76zeoOFBYoGCm8eJmzSmjbRBlumLnxlE/cByr1vjDQF+UVye281XOW
	 FZUMHYCmPvpyNeZR5zJoa2Ulo0AKwFfwLoi2hRK0JlwSoIpD0tStjyDOHdW70g/vCs
	 eipRixlQHXVfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92702C71135
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175000199359.14892.8615136821223712885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b19dd42a377c570a4c73097c89b5f6e39af4bc00fd9e5aafbe3fc99da2fd379
Date: Sun, 15 Jun 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750001993
