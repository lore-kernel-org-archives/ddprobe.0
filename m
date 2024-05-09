Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 912381527B7
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 13:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715260343; cv=none; b=luSJdh2cDN/4RGhY8QmwTZ7EYvTGNnqRb3me/dbkENluesi1Um5h8SvzY7AmSm3hfwb9O62tYl1XWYN3uqi7MlXO0Dlo9PCws71OMJu+Do/moE1IWImsNqTDvurhicAfm1RcNai3pK0rEoRm72OjSub4LvCRwabvTdnX7VYnHVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715260343; c=relaxed/simple;
	bh=mstD2ON+WSKbJqVRyYHM+xPm8VGJttMDdgN1taJq9/w=;
	h=To:Subject:From:Message-Id:Date; b=K1YZ/Zw7bk/22VtgNLRK4HoC/D1L0SfgclMbKc3tHwtoSBsqqJJyHMB/CqDpXDznfqk46B0Fis2ZPy8urxemUnNINxz7OnjYPuUrqMblux/3ucibH8WWxeOxV1l7smbDt/gKr2wSfMze9O5gO2AH+4vo/xRGuUGRu8Z+KMtBVfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VTMGLvob; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VTMGLvob"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DABFAC116B1
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 13:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715260342;
	bh=mstD2ON+WSKbJqVRyYHM+xPm8VGJttMDdgN1taJq9/w=;
	h=To:Subject:From:Date:From;
	b=VTMGLvobRWF8J7EhF873q66Ju+smLM5NA6ZaqKipyoKEzPAIQZ7WPYwIVm3M/Y3b4
	 fAIpb3RHni6PzKuHD4mSE33UhjKodx2okykr6WTMPHDHZ1ZgNsX4jefkCKvwnyjdGu
	 ztnr5AYLvlmwKfDZoHn8AfuJ6NRjM4WrWrVulbJINkrjl49vTrqrta779bjjR20gi6
	 ODYNWAqyc/M6YUJywdvbRT3uV+YRzNNlviP4uRBAimB4QNpsZCzVnlwLXgffIuCd3D
	 kNf6P3C3olcfe2he+vO6dzPgbedqqwSTzyAsynkBKnDtbvA5Erwnh8OX2lj0IMEE67
	 px6JflrkfBQLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C479DC10F1A
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 13:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171526034279.8330.12900492835975383792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 342c3df0ed7856ec3e5348a5164adafbe97a190c939cad1b7dfaf97e1de57d0b
Date: Thu, 09 May 2024 13:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715260342
