Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A373217F29
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 11:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764501774; cv=none; b=XdLORGWeJzBRY+qPIBsT5Q8WxePPo3ihuYTbcbqqICdQuBq8HAwIs6zIcLrxgkZwxemkUZzzPRs992QRQ+rlomJtmVqIcIXGT4NDJQ3JP7M6n4RExmEW5mhVjYmrhxJ/BtHwO469QF9wnb9hfAR/t85xqnIsuNHecBxhFhtlcMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764501774; c=relaxed/simple;
	bh=i+Z3WImmlXbnz0DwhdizvJaqSLERII25pDCXphQ5T+U=;
	h=To:Subject:From:Message-Id:Date; b=jQ8tLF/6lN8tiAioQr7mV9qbmzF0OK0YTXQ9R+I9n1rbxfn2M6lhTrb5Okg64c6hDy9ii96ofSUcpcls4X6bxLc5UBuScKcA7bA4gf16aDTnBVHlFmV5WwaarZPuVadMAmA5hlIMbG349Xu0dcdzOny1ui2NRUkGsmA5FAlBO9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FKWX7s2L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FKWX7s2L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F22C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 11:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764501773;
	bh=i+Z3WImmlXbnz0DwhdizvJaqSLERII25pDCXphQ5T+U=;
	h=To:Subject:From:Date:From;
	b=FKWX7s2LIaOheAM3oc6U5E0YU2RCO7KBcIefGVfzo+uvOuZRFPS5GOHwGHfHQQM/J
	 NMLSBmkMsSpVhTHPRh3S/S83W6vPx1Mg9BcRwHiUGmAiHVuqpZOwi7nes6dlKVVQ+b
	 CU64jMFxYrLT1it1aBvIEJC327XKBN0wkNw/dQkN7UZSnhfiGNZfP8k4Mb4X5Rw4CC
	 BvpXgVv5dUErwxRcF6N9UTuO0KM99LkLmKY//aaNu1u5IXn+M9lXVMiUsuADMLstY6
	 PmOqpI/IUemRnyaav9Uo5GGWdCOB1UrJhj5tYrBbYUBWNUBaqaN8r2R/Frnrs6e5+I
	 23x2cJzNVAmRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AE8D111A8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 11:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176450177359.9957.10152680751710270032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d6c3efa91306ac5de4ff5efc8ebfca56f0927ccae7c47033ce01f5c4630c1e1
Date: Sun, 30 Nov 2025 11:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764501773
