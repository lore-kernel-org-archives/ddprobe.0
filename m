Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7E8A2D
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747633794; cv=none; b=biSxuWDK6VkalipxCewAoc+7eJv2t0bD0kZoLCCoURt39KhviSMDqvatIrHdCzN0qKvkApodbfcMi3UYvcI4YE7SrM7teY8hRk8zT7IOdqxuR/ndFyS2qN/5wY9L1UrGCMfpX5Ha5nMLPIHuTReSu/BVRGGOoZkWNCGkYK6gwSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747633794; c=relaxed/simple;
	bh=H7GPAMde0lFZJBXXfLo06CsszcxUzwalvwPSeltAdXs=;
	h=To:Subject:From:Message-Id:Date; b=RmCNtmg+OyLTW2myo4HwkY4SsjSVUrjstUWEVjsttlvgPYgdoI7mhWhekANAQkHZUy47DbDSYRJ0Zh6c+2ZxCxk1mg1ptwDtRPZv0vQKegPOOIJhDW1R1b9gxVRQ7vMuRrFiA120pgWCM0fjVa2+QSHskCqKFlkbcVOg0GRPGe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l364jhIh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l364jhIh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13BDC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747633793;
	bh=H7GPAMde0lFZJBXXfLo06CsszcxUzwalvwPSeltAdXs=;
	h=To:Subject:From:Date:From;
	b=l364jhIhRhKYcXfq0J5jkv/3TCmQD4XVuptCqjkjKWkRwf4svpX6B3tawGtMzNfrv
	 vmvM848LtVYu5PbK/wyU3NCA+v5J5U9HQXR1CPSFIYszSqkPznM4fupBbwjdXgBw1p
	 cxVNI2DWj+6n6Ja/be4lBirAGUBY1lHA45gtDk7nbaKJv1h/b/ciQn5v90ajUg0xpA
	 t1vJXboE1t7gGlMQMn2OQZ0vJhFNneNKPRT4yhAvjoFjOKvbAJF80n64NMohlxh+ot
	 lQK8oURQ+mwt8+auPPvI+jGfLqPUvSUqJW+Xj1ehBC0YJyaMk9PPxpxd926gz5FuWX
	 TogfvUTXBBwFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F222C3DA6D
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174763379357.23713.4160564482666575679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2a139f46c6269c7d827f385bc4ee82aab2a48c2121092ba0995cb732dd71e75
Date: Mon, 19 May 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747633793
