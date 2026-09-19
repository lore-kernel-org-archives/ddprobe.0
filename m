Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49C852D322E
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789822834; cv=none; b=bWEmUSj4TQCvjVv+/KTBNQeOsONAehWkb2bLOaAWkpSYMFKQgmIuPqcT/QcmjqNRidnNJxn4jmhCqERrS6yX3OL31kMcfriLSL12aG0AGhAUiVUn9B5dIlG0bcj0jEw9RAF+S/ZPCLALjsfN3yhPrabvZDB9ZefuqyjaPprEHzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789822834; c=relaxed/simple;
	bh=cQEMWKA1rMSy+8aN1a8sIbFpQNYfP1dj15gZPMPI6SA=;
	h=To:Subject:From:Message-Id:Date; b=JYTCzirU6uWyURvl7a8h4HRh6OHnBZUHSIyY8DaguJilQ9ZMkqo+Bf9ayDZ0xCyPGk9tQmE7XjBzIYoNVOZcQ8Lov9FgmXybca4ryMat8b/5InVZCLxBltyYpbrBkYIJYfqXpQkPaQKMGJNe7dHJ2DWzBD4c50WDpgPdNSo2HWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J5GHgPkt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J5GHgPkt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEECEC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789822833;
	bh=cQEMWKA1rMSy+8aN1a8sIbFpQNYfP1dj15gZPMPI6SA=;
	h=To:Subject:From:Date:From;
	b=J5GHgPkt3AWBTA5wBJsbfBic1PqCQabRAwMqVoJaLenMTfVdvF1gks5MgPUzvukSo
	 NRNBFogU2tc0N/ImLSDCBN8albrzt0po31v9oM2VhdiBqTPTTMUykc6V976gfnmDAE
	 JYwijiUbLdPgXF6Qxxzk/EPCTSKMOAdm5+yc89I0L3lsnBm8VtPBhryK09y5JSeIKb
	 sFQWaoolM4bo2o7ocALmJGM60+IbKOrbomS2THccYLkm17bQnHWb29vKZVvFpV8HWM
	 QmNn/WlkPwQWHuT42+dExV+5x31iO2WjD1YFzcrXKm0aLfjSeFa2vS/sK1oq1DUJzb
	 CHgsfhwNel3ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B7AC982DA
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178982283368.4287.10071331414120718763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e71383e8dad26aa29d336efcf1adf6a5dc9fede199865edcfa2ad663a309fa7a
Date: Sat, 19 Sep 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789822833
