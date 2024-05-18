Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8119F171B6
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 14:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716042743; cv=none; b=M4FBZLz4IdHTMBn9yCD/OXOOzk0jkiYP2WNg338p0w4HypTRIDvwM1gphtoGNtCz4pDb7B5p+FNLGc0zGxlfdWzKG64/tAR+WDjjHOO7mFym4fABMBdq419nrQ0tytwmSLxpp9W1NGogqZuWTJgSX0BPByVws6Rdw6YDzkqbcNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716042743; c=relaxed/simple;
	bh=GwIzbnl6H/+JzaY1ZL3NbCLqGvnAJuaJm7pitnvNIdk=;
	h=To:Subject:From:Message-Id:Date; b=gGZ3FJeHfMcIo1Q+Qqar6W4j4BWvQTNMc7AlzBKJ73Vumba9ztHsSv/4ME5rdM5/Q3ImrAAUDoIiYgFfF3YQytHgVSMfukMgTP4K7P7JD8eGhnESlL5+lQVphf0x4XiX6WQjKlDEtbDENcdiHCJJcsrYmcW/daKa6+s7okVJrJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fWniV0gH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fWniV0gH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC681C113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 14:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716042742;
	bh=GwIzbnl6H/+JzaY1ZL3NbCLqGvnAJuaJm7pitnvNIdk=;
	h=To:Subject:From:Date:From;
	b=fWniV0gH8BLdBFkIp2JvqP5sPV+toqLXncyU6tgSH7CYJVFcELz745btciqlITqR2
	 uM/EDtwtO/spurKITTil/JaR/QQOa4cvfoNsHEh8xPMsXX8XegCjtEesy3F4izltpc
	 hH97DDGr24hRDasLzWbNmN/2P31AFgatouAbzonjIqt75JZYnWDzKqtQyOgneyWQWc
	 cEpjuKoxXSW3AqDOL2lQkZf66kPQxlsaHIztJum+yTY/yOfy0xojaIEn8ZyT/pOFyU
	 LVxhMdr3rVbxUAkaxQb4Bnss4L9UVnPVdcE98OOrxOomSo8gEyi/rjTTpnngcuKCxJ
	 RjFjUJRy/42eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C750FC25B75
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 14:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171604274277.10955.15616040806065001992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e530f40e000823d9939776bd43c31920af2112ce8cae0c86796b915fb7032193
Date: Sat, 18 May 2024 14:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716042742
