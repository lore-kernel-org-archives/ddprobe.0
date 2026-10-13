Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A95E254DAE4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791923434; cv=none; b=STxz4ozuiXQPkUGdMdU++f05YK+T+56QDZiMlnZ4LNCaPPw79QnpIFt+QdbyeSeky7ocPnmcM2E+sOdLuuaS7swfxlqCWaKTDTsRg0yZI9tvcqHeEvpQk4cghYOtVS0yepqYSD9rn34HYSN1T+cskyoz1xk0r1HRPy6OAbndZkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791923434; c=relaxed/simple;
	bh=ym3kMBxyO8g3VgFidNMcj8G+6R5uJBcGhKNVAMO4CIM=;
	h=To:Subject:From:Message-Id:Date; b=SqWDSbMQmofeSkKWVA6qFVmUW5IKi00DB1d1GeUYoycCVmDBbm8w5JJQivd2GmboUI3CQo8f3wXFEYlNImoqUJy7Wphbc83uzgYwq4iGIDTIPW+UR13ucxpWXjp2hh4VcKpyNLnbdeFyOV+OIgcxZPnjkOaTqkuySU+yjRy+frk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=syGGbLE8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="syGGbLE8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D9CC2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791923433;
	bh=ym3kMBxyO8g3VgFidNMcj8G+6R5uJBcGhKNVAMO4CIM=;
	h=To:Subject:From:Date:From;
	b=syGGbLE8PS9PuML+1BoHUPbpgzvPwqL2Uvk13gCHntunt3dQV3x+mvbUrLkCpw0if
	 IDccnpJfW6XpozniL+Z5D27jxQOCSriy+QIoayl4geqs8xzc2NJHNi/Rjv2PQ2orZu
	 NR4jw+3MIsf3iURnHOYZd6wSkLUjJuO7MBZeZdKtMDNSJWcAlEd4idCZLv5ZVa+7Wb
	 OoTWQcGr5V4L7cEjfJMevSJIk4eR38blxRZw/esQP2ivhsSSHqM0SFNDe/2a7+ke62
	 LvhWbylsFRz+058Xb67NDoU2vWZy23/RU18bZDF7//Uv7sr35vHhNkz31pK4jkFaCV
	 DPwoIEGF6C+ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0ADCC6B1A
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179192343369.16204.11660608245241354103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04725b0490f2d6b00e73f81968730a8fba03fd93372f3d6d02db5d0d85dcd860
Date: Tue, 13 Oct 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791923433
