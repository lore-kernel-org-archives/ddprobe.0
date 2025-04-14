Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D16C0269D08
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744627193; cv=none; b=a9nAZ8Fv6BtKaAt2+vNHTlNziR+NiP6kf+UOxTDkTygtdhJZCU/8vQilu9fEUYgBri7tKnefGFzo+9B8kPgzmHXKBlnYDP5VikSstK2SMklS6PTpUthvbimbF3DBTZ26YrsTDLEqHUDyfT3xGidqDZnM61VJLxKD3kcBmgTebnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744627193; c=relaxed/simple;
	bh=nOEvMGyGguxAyuCC4sM/1w4dvFGXA04DLvxqxs/fL8o=;
	h=To:Subject:From:Message-Id:Date; b=ktUsRgma2ljdbNgFPks0TpGA7SVVkPppzh1Ecx7oXSMTdPR0C6UXRDMGl0bZx89lrkfp8HKfej/pbZKL84bqNWboc4x9TaCjV+2tDEPCvVPA4bCZGCdYrpGX9qjUws/kiAXfjiOl/Hwq1rlQzAw1at3wGHp8+opB3ozcJq1vF6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CN6yUY8I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CN6yUY8I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B29F7C4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744627193;
	bh=nOEvMGyGguxAyuCC4sM/1w4dvFGXA04DLvxqxs/fL8o=;
	h=To:Subject:From:Date:From;
	b=CN6yUY8I3ukA1PklDEuf7GHMYtMBnLAAA2GHoDWQbwmMf/5LeWJD8qnvZfbfgw/Tg
	 +9+eKjtZKepeyRSJs6cn23zjummzs4VZBPWaWbD+2g7YXHy7gKJFEJDrNPquGhGNbH
	 CIvzRt5KYwvu9wO6Th08UXGZkZKtEAPgRkpqc+1UXVKw9ahwtrdz+fFXP08ek2STJs
	 gb7Yi/3iJPpWGWQINrjARM3ml0ibKaNJEl5p3QKMb9uDtrlmEPGGUQC21JmMYQFk6E
	 H1FQck4fvJxbPzFtL8NDpoHCAHmVKeXtEyoAX1ko0y//wDJxUMRJBUH1IMv2mtlAbr
	 9kGFIT2gMAd9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D7E6C369B2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174462719363.6819.62123345521716281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 544af24e4d21ddc8954d2a8b6ddb9a19177219a53708507f078859bb0be7db19
Date: Mon, 14 Apr 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744627193
