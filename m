Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59D131E5724
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788398434; cv=none; b=I+G7hSPEq95ojRFutVn9AkpvZZLBdny2YJUoUqhTZvJfLEmzkMGkIkcJa4U/zvRG+JA8wtVdfnbuZLQEXGR8DNhCcxddq6wakd9lhds52RoxxCDBAo47+6QIP/kdt+6gyhQmMHK5MCH17Ze/sgpkWaHfeaRWlyJqFoUyHyIafc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788398434; c=relaxed/simple;
	bh=QCd9j+0FIOEyv1arRHo5RIRVuxv5X5x1e6wdwjE1hWc=;
	h=To:Subject:From:Message-Id:Date; b=ax69mdzu8ydBkv+bppiW/wsaf+zmtbHNvOtiqGuN7PEk0foLXsIKZ5lKkdOhGdgKggAdLi72/pj8Q62bD/2wBLAtJsDglyOv2w3m9zofvHggDHb/FriTi+ijZQQGpCH+eNTFsg7a0DPE+Nyk1AR0M1fkjR3cHutZkr3VZXXKaJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ACG5Uq6e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ACG5Uq6e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE0D7C2BCB3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788398433;
	bh=QCd9j+0FIOEyv1arRHo5RIRVuxv5X5x1e6wdwjE1hWc=;
	h=To:Subject:From:Date:From;
	b=ACG5Uq6eXNoYf7JkJW+lihAgI5UYdVPjHGu3bPOqbaRJmDwxaCahd7tEL5Wu102/n
	 A+VdWNNDhoeUsVJWZ+P2xNqIJOexGOEQ99GJ28mcWgCYOpE0X/8W/xQQLs4G5zLMoW
	 bum64FWLv15G9blg3OT2HDoJRqDWeWfeBofHC5elV7nJxw8BI2DqgPz3osuSTlXXUO
	 QBfi2FVAlFAIz7MsICrfYPv7qwEAFRIZ86pQhW/E4uBG7x5miBufg/gJS+JEqh/iTE
	 VKwV/E88QJq2uLvJm1RNLo5p971ZJGbaLNvc2lErbC9nuIhGcOfrAWCp3IAi60X641
	 vZDXKYEYeYU5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA89FC61DD6
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178839843368.13472.3103625346866601300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9a25f3533b69eceb2695eb80b829955f0a27cec7c3e67f41f918fc1a80f5d9c
Date: Thu, 03 Sep 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788398433
