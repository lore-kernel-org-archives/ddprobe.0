Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA5C9345CDC
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 18:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778781633; cv=none; b=VVVSv7yQxtRfgU+JPBNY+yh1zkB3O9bNyfuNr0mdr40Xp9+YRGJ1a53DAQbwMsYyOn0lZwjVHiwVJVxo0elirxEk6OV7ltAIg81VpDGpkLpmGrdwBgiRjwZAZo8hTNj1SCKRKBoY1KYPMTHZcLo8pq4GCuMU4m04fFxBCPmu2vY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778781633; c=relaxed/simple;
	bh=yTA4DE00livI4aEGL8IbYq5CmBPUsW9SRFO8s56Y6Ck=;
	h=To:Subject:From:Message-Id:Date; b=hGB9rMcH1ZtCE+S9mM0QyY9rLXrxJSGmPyIcc0vFaechKdVlzfBOhtXaU0ysHWpR2xQoKI46tPw0dHg3dub10foeAZLY7OYnFyVM/syLEBr5MawM04YPMncJoxwrNiWnBpvj0nQMUdSzoFGXBMJYvwZHhMkCOGmdxFajJjVdmo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EUKOljuU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EUKOljuU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE1E5C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778781633;
	bh=yTA4DE00livI4aEGL8IbYq5CmBPUsW9SRFO8s56Y6Ck=;
	h=To:Subject:From:Date:From;
	b=EUKOljuUVomXYdbYSLKYeuAPDZ1BTnCEAefGh+SWDazl/CWfazoYAIgzbZFZO9att
	 fzmQbhYgJS2lUXY5qkVAEfQXswmENAO3zV0dkaKgHabncyp1UcAXsb53Hh/M/xAD/n
	 sj8fV2HrblBp89nvsGYhwhMQw/1lm5l735AhnLQdKEo3MRZoW10V8uZ8/yz2msMcWc
	 8JIlx7faf5/DHpCUtMJCQcsXyahmt8sQp/bHJG1NMMeBndN557DoFlm/PEUM/x7IiF
	 qQaX1a7ZqupKn+hl18YSOZqyK2kPBCzgATPbrWn+VD8cu+4eeJcafnzgLfaocvLWY3
	 eJVzdj/26GDJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5ECCD37AC
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177878163369.27384.1488278992996196658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93c4b22c5427cecda1f168b22899a2a48d46d1d814e60dec8b03ae95d78ac64f
Date: Thu, 14 May 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778781633
