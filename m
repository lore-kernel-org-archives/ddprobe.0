Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 203892E9ECB
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750435794; cv=none; b=CS6EsMm+nOUDncUeZ2qKJ4aQtwocyT3xj9xWoNtr8zyK5AlM6EJ2OMbrygc7lUgOe4gjL8IWF8NWVAn2jDfuADnjyJRzge2AUj1xNG7HP3Ea5gn1DTpRMO7lglnOX+VLQqDNmLvEWV8bPCwLEK9wk5DNFhQ9XADqScORwCutDOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750435794; c=relaxed/simple;
	bh=xNfFsiaIAFTsu7miETgJh5Xe8Y5Blp916Hdg+LQTSWo=;
	h=To:Subject:From:Message-Id:Date; b=UD6QXyZB6pLbMbdcU1wdmfSnVyfvCMPjah4TTj2PdhD9hTmPhrqUoaubfkz5d+4qtqP+ewjSnfIrK70RLaOpqUDA5/zmuEeiwWGKe6L2WLje+MG3NKLQROqmEmEXyuwr4VK6WTeS7ed5fEoQeX8NkIXLO9smIRpQ+dSTW/ZDpL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gxvDj8Qo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gxvDj8Qo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8A3C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750435793;
	bh=xNfFsiaIAFTsu7miETgJh5Xe8Y5Blp916Hdg+LQTSWo=;
	h=To:Subject:From:Date:From;
	b=gxvDj8QoL95DI+OTfKaqyZyk3/WecO8KbwjxTlN7XCjBnwL++DbWu1TeRGgsy3uw6
	 a4Mu2tQKxQIHSp1rkmKHDJq3hOKcVl1Kv1LwPNIadnW9s1+DDWWRJF7Gs1i84Gpqbc
	 n3hIZQM3ehhJdeApKBEy1C9SXcTvR2mbRWbxByWTyDDYDLM8pOA/ypQhMCJtrRiyZ8
	 1mMNxNjE+0INp8pZTH/gdHSKfLEYSz3Zh/A0NrfuAkSuIHMNX0AThbrwS4DgVXycHu
	 11mWdIwe70KiN4AYTUrFHdfBussUhn/vXqC4tspFWO2sJn5sbNa0oeery0SeocEKck
	 q8G/PJQU9okew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F145C7115C
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175043579357.19002.13252079777177782510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d476c8aac2af87de3f6109aff8965e0b5c80328d4f8505be8049974b9ae8610e
Date: Fri, 20 Jun 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750435793
