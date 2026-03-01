Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA652FFFA5
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 02:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772333694; cv=none; b=lgCow65cVfjMzdfDvaWfkcG7cUmXbXkbv4P4i1bEQ3c776o9PmGyI2Bd+RKUDZzWXjlBz7E3SuT3CsBVtD97WlTirFccfYj8z7xNxbjgXLNTeqgb/oThLrjPMFZJMLFblUO+/WN5i95saAU+x6lzaL2SGX0VM87BoAQQOcDumco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772333694; c=relaxed/simple;
	bh=I6pXhqSLcdNUo0SnsG4SuiPT4WjEId8EGPmVMjfjaKg=;
	h=To:Subject:From:Message-Id:Date; b=S7WozkzJyL/PBcSy0MCJsjlKqDIRiJjNh+Y1iGkru9yoRF3zwCELBsAkIVqVnisSeS9gP8HS17/l0rsHrCKfjySI4i+JbJdix7/JiMHcr5XPhquLPxvJfOGPk5Whay5tf/I0/xyuGsOlyLCOI+VV0iulLukJH6yuwj3iR8UTVNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GCQSHdMD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GCQSHdMD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B09B8C19421
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 02:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772333693;
	bh=I6pXhqSLcdNUo0SnsG4SuiPT4WjEId8EGPmVMjfjaKg=;
	h=To:Subject:From:Date:From;
	b=GCQSHdMDJqV1/ryht3ofUQ3MUJpo6W4EVdh+WrlCwGidAqcOkh9W21jtkbFC5uvpA
	 ZmMdJdPSD6JZZruTmmJ/iIb24DzRabXv/MgOIV4mKws/FZXwikkySDtnIQOcwVSVeO
	 AkEKHbNhVdvkLb2CUXegyXzioUl2FhhhaJmvhIb8Lzij/lwGiAjJR/KDPouOcucFWd
	 LaQETWISr2yJe5vuZOS3nP8UAtLST/8cCnZiFGRlAjJGjUyyNsDaiINYW/0KCZPwBT
	 yihHXDN4RMR2lvn+uyk6+gsFYCWSF6ywnEA+rwFZjqDzpIVHfXaqBtTbfQQ2+kfNCF
	 dtenE8VE7gMhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969E9FD0049
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 02:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177233369359.29477.8224482000416464066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baca9a56dd66d149cf4c282cac14b678feade2c5f8a7202e5e81185d75bf05bf
Date: Sun, 01 Mar 2026 02:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772333693
