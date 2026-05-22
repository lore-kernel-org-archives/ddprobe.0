Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8752749DF
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 09:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779442954; cv=none; b=lglJ1ebWKWtQA5ETwk3BgRgvLy+rxuiOeqjMem4gRsczx/V61/huUEFdKxNWItOPFOLe4g/ZxiEnJNTrxrBNEyomjS0evlil3ZFfzkeI9rf7+ohkv95kmovrGDQymNqwMNClXfDAD7AjqGUMso/v5J/2lbRVpXKlWtiL0RVSaVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779442954; c=relaxed/simple;
	bh=R1JjwrCD+/jvls65Jp7S28BNbgThVhN8YjkN5KabAUM=;
	h=To:Subject:From:Message-Id:Date; b=JpfGiHCjDBTHI18Bgu7eL9Ftj2ZcqdlwA1X5kFW/LDWdJs6YPnR95S7si2Wkd58+Vk7a2hlzIDYsw+ooDZ0e+0xwTqJwUDToyM7iFBG3axRHHgN9LVyj3ZWjIKWKQUFFz2umIh2LuvQQDi+RYM4pr1xh5UCdYuTs6EHrw0Bv5Cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yp+N7hEf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yp+N7hEf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFD3EC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 09:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779442953;
	bh=R1JjwrCD+/jvls65Jp7S28BNbgThVhN8YjkN5KabAUM=;
	h=To:Subject:From:Date:From;
	b=Yp+N7hEfhvhQM0JVWUhCpobE1oiHcm2ERKYAyCM5f2C46Qw2HkbH3xQz1SoaEcNCt
	 t+LArVfCGo3Y49iBqEHae+p6LwOZ0jIBUOuraCrY5BUKDbncImxoXBnNqTjNfaXl6V
	 WjME33s89julAs+M/mqAHnQ8XBoqJTlee5R4RYfOlQdX7i4Wu8PJ051weUovl1leUV
	 Y7PcyGYvPGaE1yTZILuZLpSIVAgF2Yf5Rz1IXtYC8hYMk66LHqr4iHC0mMfHRf/PoK
	 FX7mG98CbLUeYX/FWIXopQeAoTN3tWusVUpGxjEzLmwFH2uH7XnseVgDe+ypuG7AlB
	 YVzqCfXQ/0LfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7B80CD5BAC
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 09:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177944295368.10290.7927637371371370756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8aaaac976722237210316e2635d9e3a26d7598b328d15e1cc622110f16d4b7ed
Date: Fri, 22 May 2026 09:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779442953
