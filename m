Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C957322A
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754115594; cv=none; b=blmDfb1LglDk8D/WhOCCDTOWlah9SNv8gLXSesftYbahrUI/OOIuV0G/40/HtSSzN0tJ20vAA2KUxCVcMpTl48Vtvp55E82cBvs9lbsl24IRnM2A0DBhqTgdhZvn0+a1Akl2o8qmnXsb2NomupisEQb0H/XgYlTq2TmxnVQ8Ypk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754115594; c=relaxed/simple;
	bh=SwM8zcJ/rbKEnWI+kZvyksiVP9xcIoLVS9Vi9l6BWtU=;
	h=To:Subject:From:Message-Id:Date; b=o7s+IO5r506mSwun/mBtR9OvhhjDkuZ9u0Hx0DsdSUuOYiTSrVXWMM0ko4slkitwcTUqxWH63CXVAEyLZx8LpcHlypiw2LetD2xZUFnAi/lB+ArZlLjPbBCsza/hgcodJP6fPTOblIpbkRRe+HUWQDhO/nh9aV4RaHhMuOZMjpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=botSTl3B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="botSTl3B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A708AC4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754115593;
	bh=SwM8zcJ/rbKEnWI+kZvyksiVP9xcIoLVS9Vi9l6BWtU=;
	h=To:Subject:From:Date:From;
	b=botSTl3BFnIGsz347AroYmFLykInqT9UnWkgTmW3Cgw8RSFm64Kf0MkaJSznQWfGc
	 ENun/ukUl7dQE2DJiyMMZq4+GLq0fE9bEsaHDXIhkur16S+qnA3AcHvnu5+MyaI816
	 qVBo5CQs4P7EysE1E3A2JBBoBUEZm1zxGHOs9UyFbWX4FsGjx1LVXcO7lf/Vr0m1pS
	 /X2IYcGi7UadhaIXmFUV402kLVY59oIGxUm0wnHIKQYsGuZDHCdER7KeFnyoMPtRQ2
	 Yd+UaExiyxNa1jHN+oa2Ckelg1NwfeHPnOjBRbgKyrOSrzlKm87pqHx+SrSj+j9YRk
	 4DAREzVJTBbGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A35C87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175411559358.21284.14359194322640693386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e21d010f84a81dc50423fae29bd919e36dd740236464e387620e513177b924a
Date: Sat, 02 Aug 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754115593
