Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21AF83C465
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750038594; cv=none; b=R9dQWzrRJGtbEw63TZI2Srv2MzDGvH3i1SfEWM7cPbFmNw4uz5LfW/+fXEpK38IU1Jnf8ROw9984XRddIYo2VTTa34IoKdVBxiVT4V1MhSM4pId6RE1BkoXojDo4NPo3dV0tg5dw0eS1P8FNoxHHJ3vGgyBvHDSMTRcSB1CpRfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750038594; c=relaxed/simple;
	bh=kuFOoFb4eF4rbWs45wVlSbrwpd8eFe2ppffp+wIfWJE=;
	h=To:Subject:From:Message-Id:Date; b=Bu2O/+M7TDNBlwuXZIHEOx94LrYN0/jiNn4T0jE1EGtl3SXraQBVtYILXIkmS1zMJBAt6e8G1X9hIpJZY/ENbYAghgmTJx5TwYB82osUyrzP07Xj/RZZUnAzm6A0P7zy5l8RYdVJ1BVe/n2hBnMhBtfLdjOIu/Rh7Oh/w8Tq4K0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cXcUJyvO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cXcUJyvO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9ACC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750038593;
	bh=kuFOoFb4eF4rbWs45wVlSbrwpd8eFe2ppffp+wIfWJE=;
	h=To:Subject:From:Date:From;
	b=cXcUJyvOrVdEthar95F9woWbAW4WrR220Zvf5xpyXQ0Y/9vPQHsInSkd8oSsB3lo9
	 b6sF456HnEhIsHZ5BzxiDRuCFIwmbbtUKlw7pIlb1osHUOSwxfk0Emx/CV+JuHv3wj
	 cmOElEoX7I4r1TxMW6pHhb79bMNWMQ7rjRP+q+hA6CbcL8cu/KM65MwdYzDMIr/9sh
	 Qj0vfEdyI8eRocpK1se3ZOahLpf95axF4FR4VM4fbrhW2zJYqIZdfT9WfzmHIspBpn
	 /07GIrh9wUqC19mfekvy1Esx7JRAAVDzdUC+rYEta31Ug59IiSyrydaN5nQzEfaPxa
	 gXCh6VVFSyacw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963D0C71135
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175003859359.23303.16410279114626915089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68d9db96ae1750fc4b867fe502ac87a145aa5766fd45f2592282723714c5427f
Date: Mon, 16 Jun 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750038593
