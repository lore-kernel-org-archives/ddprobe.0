Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E5981E412A
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751990994; cv=none; b=PN3lvtKN8T5zI5i3vhAPjEJxyjdh/N9Y35MlBpxTwPd5orLiVqSTvO7gsEtIOitr53FenKxHMxBzJSMa33ZfMI3CM0EXIRg7nh9/vmuSq8ZXv6eAN6T3Rdl1d5qrKIo5/szUiEb0qJpM1v57sDJjIjq5Of/cq5CKTKSGAvHhb3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751990994; c=relaxed/simple;
	bh=DP/4bd5OTxwiwMPK2+iLynL5gxkX3HSlgapvzj+tiDo=;
	h=To:Subject:From:Message-Id:Date; b=mriwYJR2gwzF/eUyXRvSWeW8cXj9hW5tMfrhdZz3Vd4pARN7aShsOPhquEtWKph4q+kZL3OvGleQKIXw2um/Xs3dg5ITpF5rr6c3ggQJi9ettLLX2BeHBzHHuiFwKYI1LkTEhiVOTJ3WL48Tn6XypAyq/yijK8l99gfvoBBGj2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kB9iPHu0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kB9iPHu0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA1AC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751990993;
	bh=DP/4bd5OTxwiwMPK2+iLynL5gxkX3HSlgapvzj+tiDo=;
	h=To:Subject:From:Date:From;
	b=kB9iPHu06HKiQ3svkI9zfEByTzCr6LawT6G0GUvhs91NTSWee1YqAXuLCwWpLh3Xl
	 y2UdPKpCb+wQ5Rk82ISr89bYX03E4fl8r1Y9ARBuxtcCZLMNHbDNDJoftQihCSQ3Xq
	 WjcIt+K05P4PMHeXYHvTk/zA587VCw5YgwrBpkOtAciQHyidS0ylALTbok3Eq4P1re
	 q41+MfKm5wo0fG+UMYJEbMaYIbH0NJ59vcYyhsmCPQTg9hmjDD7MCTeBxuCd0WrfC4
	 65W/vjOrAJzk78fPIsLWurgZxM4hdn/h4OrIeN74H/lJ6BV+yYr/eIB13nIlAR9niC
	 zL8xGLk6OIVow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5A2C8303C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175199099357.10473.7800360876492729912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 007fb5087eb6950b00f25312a4a63600a92b3055b54653b9177ae0c484e59a10
Date: Tue, 08 Jul 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751990993
