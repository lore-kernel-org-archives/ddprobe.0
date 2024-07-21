Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50DF31361
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721525154; cv=none; b=sfPk8awEP53cnWp+VJVtx3KgVU3NYbtk1qQgSLiSCz2WFW+dMQL2OGLWKaUjdmjrfHxHaFp/GR876Kk3zlj2yvIdvk87r1ELfV2ja+L1arKWfELYQVbp+UhhJ1cUcq1Ep45OBsAzmri/8CIBK3l5t6u/EkRj153IMBcDM5Z9Ebw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721525154; c=relaxed/simple;
	bh=nbezo0tXeSr6KC43MeQ1MDbjdAiuAzBYCtZoZ9uQfyQ=;
	h=To:Subject:From:Message-Id:Date; b=j8nPJsVp0o9jMFXkAjA42UCKlvpr5piYoVPHXfGfkhM5vuppYhUTLJkw4XP0/dV8dlzSDW5S8l2+JL+LDgIZR2cr5kjJzwf88c4zH6OR4UyRGX1e/WfPVyhME8AX2A9m2TwQkfC4r9ZeWS4m/coh1+Sm3fERWone6pMXsjQj4kY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YJmEBMsv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YJmEBMsv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C39D7C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721525153;
	bh=nbezo0tXeSr6KC43MeQ1MDbjdAiuAzBYCtZoZ9uQfyQ=;
	h=To:Subject:From:Date:From;
	b=YJmEBMsv+ysVicFdLmTD1lLvgMO3jWt0Yh5GesECr2l6UUAhIlpNNy/7iD82ZeWpk
	 qJ0IIbIEgu2z+VQKbMeMTyhu2W6b28yAPooUlQENuFCgHwzW8aGRJosWslDShCz0uQ
	 KTgr7j8gQQVhZWI2aJN857MNDoBTSDJ9MQHAMkaEpRsJQFHh3lpzr6vI13Z0lz9/0I
	 v6zDdmh7mPYWhAYcjzYGFy7k2N8enHhX7EPVT9IpiYSUmgrhpe80pSWljeQeKJRrQe
	 NG4G+Zzu40mUimgxAx01EQxGI8CN0NiM3yUKD//oIKVjw83covjqW0p9bOUDN7W0Zf
	 EQgIQqF0y4mkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6BA2C3DA49
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172152515364.27403.17374688542150341710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdfb7d39d27bbcd65911b8a34e221102ee28441f7ef25e24ab6cf113e8f4c8cc
Date: Sun, 21 Jul 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721525153
