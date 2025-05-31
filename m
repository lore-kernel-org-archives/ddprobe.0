Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 511345475E
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748668194; cv=none; b=GqscbL29oaLF+W/a00J+JmR+Eio3dY6TCH9bz7EpsV1Tarid/U/ieDS/qGxvINjyXOUGu5SdUG5gzaqFqspBt3BdK9mGSBwNOBBRCngwfCMOecTKNsNmclRG7Tw38exRFwCVGns+U+S0/LwTf9eRmMeh0PfFGVVyqeobonrmtRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748668194; c=relaxed/simple;
	bh=9mPL3GB69eNi2tWNQKmLKfnu7aNfCvAjsguZnfacJfU=;
	h=To:Subject:From:Message-Id:Date; b=IJQqJkdsoZ72HesLgmyVQpjRXGUc8cdIww2TQlSAEk/bfGcAuHCpbRhq363+v3RIG5CWAm36E2IpA6NUwRpPHdtaTDlEPQy/b4oHVICYuxtoxR+3ZImkmwrflzXqAeBcqRxLoISCVu+SvWHuKJpglruTEqUPKsWn844LBiMljqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U2AcjzDQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U2AcjzDQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40CDC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748668193;
	bh=9mPL3GB69eNi2tWNQKmLKfnu7aNfCvAjsguZnfacJfU=;
	h=To:Subject:From:Date:From;
	b=U2AcjzDQ2mdZdqvnNII+j0aVBo7ZuboYFhFLvb7Ibb0OMuI9/XuI0ygHt+nCT53TK
	 8EAakpC8xHzecTofdifS7T5PCy1z5emzaEl5U7huQyBe1Cwai4k5IUcvbUR13nfTMe
	 x94lU0gX/Lene5ztEj/qmpE7lbd7luPEmOjjCxQfxeZQZ/thM6iajOIG53BDrz8dBS
	 KmAiIffKi1eUcgZKh6qumfVQwXVPFc/PCxOn1m+sT5G+rLy8VrHw4C+B5K45tTWprw
	 ZPraDmkWAQmTMgfH1OQhRQuikCqhVyDhenZkKyCAKdeoToXfonmT11HCse1wfgpfar
	 pZZU2/P+LV1yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950CEC5B549
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174866819358.29800.7126575369652439300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2afee856df34d7dc1aac49a2e69064fbfcae7b91cca38a76d2ab50822aa3d86
Date: Sat, 31 May 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748668193
