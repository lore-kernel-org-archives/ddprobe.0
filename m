Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20DB83CB554
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 08:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784537914; cv=none; b=TFDbZC+E9EydpgI/K5kmhKFiQyVwXpwx/abVuTk8dVXXidkiscdeOhB901gH9VWQSHSpSoVhxQfzGORFptsTVSF/fM/AObBmBHCLtRe5+iVU+L+AlWGO8QS6g+ZPhEMRGSE9AnqW+r44iTDJvBvPHpG43iyO2rmOSuvzNbIf2YI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784537914; c=relaxed/simple;
	bh=9fHKFda/cGC510X7DkTtGUAjYQXDwODjc/mx3sfvCTE=;
	h=To:Subject:From:Message-Id:Date; b=hDrLhPNZu4KPmWO1cBMP5D52f1XF5WfGZ0u6hsvgvmCSq0hwzRbPUW5W3pBrAANexNEFht9GbiWcrxHD6Ewc8DkOHs48DOnrFEq4mqq40c+UBNvaiXAVc4uNzH1URiK78em+gTjrIKvQHtokMHgaj0fFQZ8bACOsqXRPTuadEE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aEsLYAQX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aEsLYAQX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD9ABC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 08:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784537913;
	bh=9fHKFda/cGC510X7DkTtGUAjYQXDwODjc/mx3sfvCTE=;
	h=To:Subject:From:Date:From;
	b=aEsLYAQXQSguESOzUpcLqYgb6aU0CXEySPnfmJrmESQOkP1NRUNLttkI9A77E+e51
	 gzRvTnM9QPs/c817GTqUrUlZuSbrz1XBXO5XDmNKjnrj5Q0P8cyOCNdk/tfC9PfiJz
	 3VofpqVw0khuc8YNWxQr8mBw5GkDFFyLuY8VL95fEkdb8bGAQ3gYtHThkqXoXLW26a
	 RMkUgeSUhRJVEM0OXbaTXRogEshvBndA85zRUXbrsZkkId3TbI0s9Ft57g4bBM2vR9
	 QYZD3SjmylD8WSSecqMTI1FEFvMmeubeMWqEYhyX3smnIsM0y1wrP5Zm6CuIwq9F0h
	 sJlOer5Q17lLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD53CC4451B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 08:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178453791369.13305.13057785288763404533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1a492e2422779a00d17a6ea3e858d79c5df63a347076f00fc7e7db108752b21
Date: Mon, 20 Jul 2026 08:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784537913
