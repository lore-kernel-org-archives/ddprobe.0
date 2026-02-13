Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ADE0139D
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 00:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770941094; cv=none; b=PbQaVMFO8PkocPEX4LovRKsU+kwUonaKRF3FYwr0byMh9j0xMAXsd3IGa/PCSulu4OTYMJTryiG88teK5SoiIiGx3x1O23+apaTdw0/h5l5ZXka01LypNgG6hEqL61v1QmRzJIooNCHY84vlFiKck3PREIUEPjRbtop17Iy5ha4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770941094; c=relaxed/simple;
	bh=JT6f9bWFDASPs+lHuJ1xx2aoX4g9JlfQZpY20aO2Uqg=;
	h=To:Subject:From:Message-Id:Date; b=BrFxyPTDGVvMkJzMCQUjeWLKK7ixqWlkz1pS7mcVYr+Z5aCQGdKKSwQH09WzZOhlZJjb/TMkvaWHFntXMxxu9dRcEdZIxHXb4QAQJ5Z9MWhKShohlM2THYqOZXr1eGmzz/1xuC4frjgS9Ny4bp9XPTt5cPukCZag44pTOX7PvGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QjDEY1MW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QjDEY1MW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0018C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 00:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770941093;
	bh=JT6f9bWFDASPs+lHuJ1xx2aoX4g9JlfQZpY20aO2Uqg=;
	h=To:Subject:From:Date:From;
	b=QjDEY1MWoBD1v2Jc6cxjnOCZ4rl+Xf2GxWSCWE5BX9bZL/WA5/N44lXb2bxUpdbGD
	 5Qd6r1CKbbwJppWdKzcnTJ9X1BG6BsLF6Yv6QiCNlZNnKjKk4duihvTzzvKWJ9UQPv
	 TC1NHLFYAfwNrw+5RWO9vVKdj0EUWyEf9bR4QBl/o2zfQoriCattfpwH1vgbBSHq3c
	 09gwYfcUPKPc4c2omYPOU72EYfXtitrvzoBnhCUocCvSV2JP25YnCS9ITDRITJgfM8
	 JhLB6bB49R84vrfgfx/RzmMbbwv8Qkzvzxw2fMrSaMbArEP1IhmD3y8hb9Je1+xXTb
	 XwGSIQzZPkRFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93318EEA871
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 00:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177094109359.14819.14407552521723852385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0392289ee992df2f5fc772f212ecb39d5d391a10868e61823b0178095cfdf59
Date: Fri, 13 Feb 2026 00:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770941093
