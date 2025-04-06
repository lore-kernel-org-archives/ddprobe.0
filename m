Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B2372914
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743983994; cv=none; b=DmZiqAFA93gE5cx7dqOMQjgwODvVaKhipm6KqqLmmLfpSGHiz7CRXm8vo5hgtLKNu5HtY2DOjjbtZZakHCnjOEBZfa1lXBpD2NkTTlo5yw+74jI12pIB8YJtVnp7w5kX3MS9+8fCVHh2yOjeMsvJnSA/t3th86vfjDKDnsWGATQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743983994; c=relaxed/simple;
	bh=qqmsjd7faWaRlVU4uWoDJyLsscQ4KTbfR0VfLIh4i/s=;
	h=To:Subject:From:Message-Id:Date; b=J5xEf459M2eFpxycmP18IN3R6Ux5plZkXyF7J1iTwpaOkTgHfaziBKuyIORsksteZwOUUzx5wzUywqUNk0PMieN5JkZIyIrjp4EoZ+zvpz94EhIQs4NFO5Ep7RLQvzz/qKOvG/+ozqekjZX6VzdgbzUCKQ3c69Aj0uNN5P5ET9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a6iI2YlT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a6iI2YlT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B570BC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743983993;
	bh=qqmsjd7faWaRlVU4uWoDJyLsscQ4KTbfR0VfLIh4i/s=;
	h=To:Subject:From:Date:From;
	b=a6iI2YlTn/OEfA0rnfuf/ZMEAyKE9z/gg5TKq41sm7uDwMfLnitGm28Tpj6v7RYeX
	 TkZG6x0/D4SWApmn8K/eB9jt+bPAugXSQ6yEPTRGWD9XKNV4LI6QTzNz+7ShqiR4ev
	 rghpaRXPSSbqlGbGXSfuTIBRjE0hOS8H6x11lo/1Yrd5MMkQ7CRi3XSD6cftDp5vuM
	 dHDuEQZ4ltXZPL9kBandqLqCt42G59SZECdw6zLfzAu3KK8hWav1sNTubzciP68GUL
	 gfaVpxKh2F5E5/4yvlW2tKiaobCVGajOF4LiBWpLq8Nk/pQ+JwB9do9UuhyCm1UqEM
	 4DLAdE42Gr56Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F442C3600C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174398399364.21265.16055191019343767769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71b749e17a2c67d4ff8ad44f11ff131d5cf5aeab220967ea33a951dcfa0c7c62
Date: Sun, 06 Apr 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743983993
