Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24CAA37417B
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 03:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773199494; cv=none; b=d+2l6+/1yKERPQI4tm4Zh86IFhKCNuDErtupMDsAU81JKwPvj+QFHH1muL15hf0505LIiVXblZiv79v0TUczwpjUpPmN7qrrYIbhOXMseyR/EJftY8JGxpKq+lyqPIvv0t32X+wntE0t1cZNDIMDOFi+j2on3GJ6o7ECKSH9lGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773199494; c=relaxed/simple;
	bh=MMkxiKxjRGO9PO/4yPV7kaeyQw/gsyDmHdZCdA56qvQ=;
	h=To:Subject:From:Message-Id:Date; b=VdXLqqVhGSPwA0jlpMCjvCRCr0Gszb+gPt/c/Vm9cflBzh8Ao3br1wjxz3NDLu2BaxvSDfmiizYownSRdyFeK5/sZH7TllZHdRt7hiiktjVWcExOAcv0YhTE+0wDLQJQerlsAp/AEcruCHILesPqMPupqV2grG0TnMI6BiBVFJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ta1OztcX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ta1OztcX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17C1C19423
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 03:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773199493;
	bh=MMkxiKxjRGO9PO/4yPV7kaeyQw/gsyDmHdZCdA56qvQ=;
	h=To:Subject:From:Date:From;
	b=ta1OztcXERYkv+uTVgNSuTWVIr9VzYlJavma/PI5HJtvvU99N5p+0w5cm9nt/Akix
	 NnZfoZjXPMA4jo6nFdbz7DVU0OIZH3UJRBEJZdn2KiX9R2Xik345YeDpV0XDpyJq8R
	 zKpI0/u4RwO/RJAayR7xU4bwB/sXvui0bnMFYhQe3LDib7/JRSzVATHKNz0IcpckmN
	 cRjkda0A6XAiwOjOxNL3tf0jIB99Nfmoe3NDW9AFd6IoVaxS3i4aBCpKTQG6Cp5yBi
	 bx73CThj8S9w8hFDrCqYtOoN/2EtWs2Wg0bygDtS74JmnVZLAYZ6l0361HMeihlnYB
	 oJO7OQ2mkeG/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FD0FD88EC
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 03:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177319949358.614.2524294846169008705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13df31012f002f1a5c36fddceb0ff0965d9b97d255259ca344f375e20cb016a1
Date: Wed, 11 Mar 2026 03:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773199493
