Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6052025776
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 02:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716345803; cv=none; b=u31btBN7k3cVIks3FxUHwf78gTe6dQWx9hzP6DusfmanxbF9n5Szn3JtRgrzJpzPxjD4a2y65JB5KAe4c5t7wtWPC2EH2W4qgj1jYqB6nqeaFtngWJEj8Uj2CLeU9MNfwXJfdragMa76DMos1D3ww2+Qrj/ugWuW8YiyDTzACDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716345803; c=relaxed/simple;
	bh=JcJ1jb1+0g4vWb6MwbTua2/CSnu5EotiWonPjI2mGxw=;
	h=To:Subject:From:Message-Id:Date; b=JcAzqv9o9jfUAGvCAwWII0oXBlR1+UwZDtNo5XsZVoMliE+eY0hfO89UIAQ2Q5TDRMhShOfoXh6WvuJhCEmIZYrWqd681cNhpxMH/UQaK4CRjQhZbvSo5+TwL0vA80kiIzpuLqhEaVBviKOnWqpiZjv5KxltaeFSerxINW9ulUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DQ5mKBLK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DQ5mKBLK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB202C2BD11
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 02:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716345803;
	bh=JcJ1jb1+0g4vWb6MwbTua2/CSnu5EotiWonPjI2mGxw=;
	h=To:Subject:From:Date:From;
	b=DQ5mKBLK5DXfEmew9FzIjeIR6W/BXz3AABu+dR9stYDkuZxYf0nR6i5EcNfgTxLdI
	 8KykzZvRZPsLa8WIKUjVDO2Zr5KSWnuOpZ5ga0ofEDlKPdL3vQQ6EwoB5vUlRxL0EH
	 YMAewpSRcyWoGwG22vl8O/zBI5hkpM2481oMugEmJFyVso/prRlTeac7fz5FIokmn5
	 UB83FgAbUO0rhl7AN90EEXg5j66eOYJv90n88bASOwAeZA7Dyla6Tqpol9vvU2x8IB
	 1/6Sc5tyjmTlqn+R+5SPGbGbzOWPUD042lg7xZ6mslaDeV+s3/y6gS0jESuyDXLhSc
	 8rYlJo5z3l4Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0353C25B74
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 02:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171634580281.6280.13232987185865430042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9356b7582964f849b4d6f79174ea4f56480ddb063bed82a239bdaf613b60147e
Date: Wed, 22 May 2024 02:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716345802
