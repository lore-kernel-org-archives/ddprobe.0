Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8315630BF73
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 03:49:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755575397; cv=none; b=UyAjyIxaPJBzcpGTPmtUs9jbaRDdZxf+7gqle1eG1Xiylp7LMYjUpuS7+bZjIPksVYDb/g9V3Ej0ia2f2aYDcMFl02OuB3pwDKc68ySnQZrVpAw0T0GKmBv/+c9iGFMaiYIglT79Qqi4K/iCAy4iEB37dQPQoHiXP//StirWTHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755575397; c=relaxed/simple;
	bh=3CZUmKytPEeUARYbyoxV+4wdnjwE2qVAbWU4wuOZ5eU=;
	h=To:Subject:From:Message-Id:Date; b=CiQbX0b6406BhhEXBy8cTM9PK/mihEa2yHgS1panB401rnysONT0C3bEfjHwok4/MmALUhlW0CQ+gv6eXvkfwCxp4HVPxyR+SZPA3HIGxjgGa9n4fNcoOCSe19yh2ZKVB/ClsidzVTn8I2HUvLeYp+DeQH0P2ZUSacZ/0db05K8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y+oNAMaU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y+oNAMaU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E4C9C4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755575393;
	bh=3CZUmKytPEeUARYbyoxV+4wdnjwE2qVAbWU4wuOZ5eU=;
	h=To:Subject:From:Date:From;
	b=Y+oNAMaUlj2WxhkpbxREt0US5K3qHtv3AcvepKYmRCvzSO7VEQ2E26khwrcxn8D85
	 0nkheCEnOAwt5SfvXAa8sZeWDdEpM/QRM4+qc5KnCo+/EU3oxhm3NcoSZeBU7PJqEd
	 KsEFGFVpmMCUEwW9PycxEQTLzTUenRsDUx2oC0/1X7v+Rwh3u3MqPXXlxuIX8oHu4k
	 SD/dxoFc70frqs6qc7lrOE+2QUiP8VYjycW9FqGgAAfSO572GfCwPQBTfaCvB5eLdj
	 0yZUfdni92greUjbLf8XdXGU830cEEySwx12rGm5juGStS1pOJWpqCLlVfEWds4b4e
	 drNDyW7a/OVZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E091CA0EEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175557539357.20766.16709106343436977825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b581d472f2cd3d45218978902ac7755c2724c0d405b7e80822ffa4a0d1f79cd
Date: Tue, 19 Aug 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755575393
