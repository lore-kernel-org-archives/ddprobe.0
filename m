Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2501D3E6DF5
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 12:55:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775134535; cv=none; b=VwjaCOgNDHNlPK10CNtQ1BAZTS2aHWE67M8L/f9z5XV+WgsmhnMFiXvosFF98od+SDjBgeyKdq0s8xiBj8wbk3i3izW+wYlfXktjMzsBiYhDZ8EYxoSP3JPsozKcYX+zvlQq9hHP5ppJrc4AjHSiLq6CAqcWY6cyLoJ96yd59U8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775134535; c=relaxed/simple;
	bh=EbbFRQrY8AcmkL7khlbptL2xTMAIAB9QNkgXwSI0j3o=;
	h=To:Subject:From:Message-Id:Date; b=HpQ2ML6IIN2Q5AUOAx1EZDeThA4CqppoZ/TeIKknVE3yNHW35rORnUkkrmXfR5vx7kcwIrKLMc1VCXM44DpFh5/ooi+GjWZvrJY7fj2OONTbaAa6Ec7zOkFdlCRTI+WvRg4FLXQGG5rSvfmvqgmjysRp0B232J5B5qsIEGQ5bb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tN6JAWvK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tN6JAWvK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0CAFC19424
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 12:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775134533;
	bh=EbbFRQrY8AcmkL7khlbptL2xTMAIAB9QNkgXwSI0j3o=;
	h=To:Subject:From:Date:From;
	b=tN6JAWvKu4AtOTfBfmh064zw1pwyqaj31qUwoEYtETB2Ml+MYMQQw6PDZD+p1jcxU
	 76wkemfJXVZe+G7x/TsOwhHEDfYhMEEn2Sju3lNvmCx/yE0FQDZQ/FIrxEZyb4c8kM
	 P8MykxN9cd+MAmINZH15MB6lHDB93eq/Hc5J0SurSBGiccrNM/QPVKvcMLwOTXju1S
	 fVzelhnl6TJHyWCNjR949BhPJHKfK5TdLZvS3JVw5/RzDx394/ySsG1/CSmgbfea96
	 godE7Fbi4CaetXCYmKAii7Z4TG1Um7MtXreU6TlcOmXVHXYjcVlN0pdLz6kBmbGzJs
	 eb41ivlnfy3yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCFCD3941A
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 12:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177513453370.8961.10155481943461049259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b79555ab0083d8b6b24acd8a816966eaaa805e937bc90160929e97793e65881
Date: Thu, 02 Apr 2026 12:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775134533
