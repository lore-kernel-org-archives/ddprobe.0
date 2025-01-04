Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4639B13777E
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736012154; cv=none; b=pRKoenwSG8yXl4wAAPHtdOW49SOemiVdurmg6m3HYItPdLxpcNJ8kvQ2cwXYZhXLaKhBUD5IhbH4LpKrDv8i9XHUHbrlfUaixHU2zPwbOS1u+7uLnjkebav1SAuifeQgr0JKReb14u1yDqIrhpY5BX4uKiXjm0b4ZeRcxehTth4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736012154; c=relaxed/simple;
	bh=DZwgLvLn+39gDpueuOdWshdzA7D0mXEpFnHjNsZd4W0=;
	h=To:Subject:From:Message-Id:Date; b=BO2O84qgU7gtkwtu01UxAnkLOjPA5yR0oW3XyTMI7YYNKb2bycUbctmb3P3+JpUGFgVuVEOTNcd1Gyc+5K9jEHCdWgsJsaPjKh19GKVvf44TCeNVMTmGNol0LUPqcT7zZnZHXY0O1oQoZ+qSmlbbCWsBHMr66l0k9RCP2mKr/PI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tYRmxIye; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tYRmxIye"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5027C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736012153;
	bh=DZwgLvLn+39gDpueuOdWshdzA7D0mXEpFnHjNsZd4W0=;
	h=To:Subject:From:Date:From;
	b=tYRmxIyepTUMU0awoDF8JH6KZ/pHcO3bNCGMb6vNertIs8Haj4ttuc6whtUzpzYTt
	 vHVGukpYPiJQVXIUOCCJ+aFyF/+BnfMhw2I/IZRgKacWiNJr+UY1DaYidXO/3x1Gyr
	 ks3UCIXF5FUNDKPaqLZRivQYaWoAzgriuKxUJC46pZed9aOycwKzq+q8mYZuuEFD77
	 jqIxtNeXu1LMDTfGYSyUsvdw3zJPfR0JFpA/CaizkFsT44uV4rowMT7Jz3kqTKVJ+Z
	 pbye+djYFs9IRek03yJLzOZtJgdHrpQTlSARE2VzLkkd0t+3VFI9LabQhC/jRqywqN
	 sEYKgseuEvSrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 998A2E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173601215360.27399.17722118557706400937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b98ccec4ccd22ec1bc9690c89990a85c84013c578f086c7e4e33c01bb528855
Date: Sat, 04 Jan 2025 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736012153
