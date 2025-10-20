Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 108AD2DC322
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760944194; cv=none; b=DgHA0x+IeKZsAsdmRPpIVYbeKgJ4JhaCR1V8Bxl5HoRgnZW917REBnzu7tGLkfKHJCF+AO0USaOD6DnAnKKifc8w761QaYxTcR+i0KZMXvSldvxb13fGRg/zce1XZNlCwXiW/68HwpBd5+vTzyoT4YOYyYOxRxAzVyE7xUpVVJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760944194; c=relaxed/simple;
	bh=ysLGShRhNuBYkUQIZla8NIMUD1rFLEus/bknLUOi1Pc=;
	h=To:Subject:From:Message-Id:Date; b=AgvUGrG7A47/935YiXsTYmqi37sFQvw1aZQmFiJmY/ULOT2trwJVq7BzsI/st2L1SYpJZInneYWx7AFH/a+XGvhL+Rbb8VsMuAmLnqirMMxspN2JCl+OnIxS+AvZM1RM+r7fx8Cm9J34KxGOSiEytwDralMmKMxklB2PUxpT+V0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HCu7EojD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HCu7EojD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E4EC4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760944193;
	bh=ysLGShRhNuBYkUQIZla8NIMUD1rFLEus/bknLUOi1Pc=;
	h=To:Subject:From:Date:From;
	b=HCu7EojDzYInjUgEwz3Dbm4dfsubc3dM2NQgyD6VOyGFeu5A/ojzWudSqrMe5OSxO
	 rKKokDLqxAxVRjWluRuEPgdJVCUpKhXnxtL/qTSTR5PGt64RviRoaY6RyW/1+HdpSH
	 lZjqbLo3NOqTeWAzTelKMDhBVV6rXHcfMQB2l+eJ3sHLQt0475tQcB/vyQRD9XStpg
	 9u7SCemygPbr1dGthh53fc7Hpv19ZZmhHAI3m4qGh48pL3dM/U3T7Jrg8GuERnwVlZ
	 oCQnvMcy4VmbHR+bPcSGL8Vw46GdP/Wp0sKMD5aDdh4JuLKLumuRKdW0JPXVzFYIOA
	 IrTPLW5Nl21ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91782CCD199
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176094419357.11685.5188487594764038290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2d3d98813c95039ca9e71577a5301c61d22c41dfbe910207b9b31059adb9965
Date: Mon, 20 Oct 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760944193
