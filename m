Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A4C21FC0
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789954834; cv=none; b=oy47MCyGmwncwVh4sULULhB6QKHoMOVHMFBsQvnLIKG7tBfRSMmIphQo8HmsXnro5636csz5iKZTnMkUs6BKHWftidaf8G3z+FDKhyB31q4KcjnkapAeWi9sGxsoLvRLMGHo0CR9+UsdSW4Cahjt3Q4r8UfxMbi9QPT38aiyzRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789954834; c=relaxed/simple;
	bh=MUhENTYFCh9lvSBOYvJ5bKkLDW2GYKaKZJqgoD9G6Sk=;
	h=To:Subject:From:Message-Id:Date; b=mWohVOuC6U8zh5rCj6kaA6aOKsLSygnW/sFEc6D5sTMCvelgGTS71hUqTk9/hIagSrlJfAzGYW29ORHmOIeqkxWRT+I19nEv4HSdErEgC1BAdJh8h2hO3hGZ6LEcJb3E30RrW7MgFFasyM9s9WTJYbcRuwL3AwDIpZHQw/axCT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DJxSLe8l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DJxSLe8l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C7AC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789954833;
	bh=MUhENTYFCh9lvSBOYvJ5bKkLDW2GYKaKZJqgoD9G6Sk=;
	h=To:Subject:From:Date:From;
	b=DJxSLe8lC8pls/LizU1RM5Zy2zQ/69U1YYOE5ytbgrqH05kKUzysQYenxqLWhdQoe
	 nTetWcev35dg5WwgkD7SGxqaqE41q+E/XEXTca1rA7gBPsKVki83FFueDKg+LjjBOd
	 AtsZRn3B4XqxAN46Bly52m4wQ2x7MSvzXWb07Xr6TPtmLep/BeF19P4zozt9/OzwZs
	 MEhx1js07qko7D4RJ1YpgQjDvtSN0EETnL17PIhfJpdizkbNlUjBppsGYMbIQo3/1F
	 I+0NAOFz2aG6ePxQoTjjwJbafTQ3fljsL+Vr+IOniR8cggAV8EEXcBlKxcg3y7Xugk
	 SoZ/qdGNm6J2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE706C982EA
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178995483369.32595.8462554604609063487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 715db9919088842fce713a0d54f24d75e680666b821281c893cd28b114596029
Date: Mon, 21 Sep 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789954833
