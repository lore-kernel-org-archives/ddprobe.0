Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FFC2421896
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 08:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781598994; cv=none; b=TD4Rc17S0tNXzEbl5/KME9gSZn/LlQ4MwgjXm5bO121fVxmcKKw1AcY8aLRvsr9EngylEnQr7X6uyRjetCUomvM2vzLneauZu/GmJuygp8eogtTFz33oCtuR7NKmiHSm4qGLk0cJI25myLhd+K/b05rwRYdCAUhQcxofk1v2xdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781598994; c=relaxed/simple;
	bh=TM0H3LxaWh7DfzbVivblROk5MQxkDry+Egc6Knz0GY8=;
	h=To:Subject:From:Message-Id:Date; b=KEj0fyxTi4IKZBNOTINRwp8JUqsTndlw55qW1DooWduO0Pq4b8EGLPqM6CT6oCaDhiLkOrD8TTksfcuYjdbPuX2m/9PKSgYhCTJ7o8h1lTe2ZHIRuhdGpLDUHUFrXz//drC8g4jxzfQxblND/M32XXUS64RsR6DLkaGTM6P0zn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eDiXc+3P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eDiXc+3P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D08F7C4AF0F
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 08:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781598993;
	bh=TM0H3LxaWh7DfzbVivblROk5MQxkDry+Egc6Knz0GY8=;
	h=To:Subject:From:Date:From;
	b=eDiXc+3Ptkm/ti/4/gqxBvjv3HGBfPVx/l2wctrdFHQVUiAUtkcN0N80/TvQG38jz
	 YqHQMJwpXLp+oyiMiupQHKX88NiDzi+43/VDUgfVlShCbgiSPmtsupAOmaCsFRs+YP
	 ArTh/Gj7cAkfCKN6ILVWdULis4eglN2Qclmkl2eZiYnqVy0LwwqlGZ9vHAwlTOohOc
	 2UkYyfnqCMtd55wjbl4ZBFAFle6paf12uxbTRaLfNcaJnDEKQsCTdRzKUeS5Xqoo4v
	 85Nwkfw7VtMIWWRDRZ6YHrYCU3zPE+3ZjK3z/dbq7VERQQNb7eEk0+7c4kQxilYtgF
	 phU8RGDjF5qBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC03ECD98CF
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 08:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178159899369.19859.13875005111759746305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e636b11f2f9f6bd50c057bc319dceb4ac458cb788aa5e1bd0eb132c5a5feeaaa
Date: Tue, 16 Jun 2026 08:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781598993
