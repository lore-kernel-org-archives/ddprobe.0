Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 354372C21ED
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761205794; cv=none; b=r0x61iy5p+q1GVkTYE2x/I3YfQtOBgH6PxcAAxq0LUALNfljp/tw9gI3rpUaKednAp5J5ifbiXfjDzA9qUXVDsfCA15iAfozJk4ETryfQuvytmD43yH9J0P+nWgwOH0L5EjumEkf7k7Mcm8fmR5lH5QBjIGy7Z3oG1ttg5oFzrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761205794; c=relaxed/simple;
	bh=PiHAHd3N7IdI93HkGW4XHzbY22+sL1iybBrglZZghW0=;
	h=To:Subject:From:Message-Id:Date; b=esxwHa1YtWZ4HjMImoNMy0vh8KvKV9iDIxrFlc3Cx++q8bcCv6urEg8p4i5uAhz9Yk8zzH++vVBQboXcGYVUZ3UNloSElnTR3ndHgMgfh6w1re1UhP6kf9PlKtRV/xZFsGd3rSAb95z7USQkkeDIfayZt9MhYyMEOdjQoJyQ0Ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YJvwwEf/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YJvwwEf/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A394CC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761205793;
	bh=PiHAHd3N7IdI93HkGW4XHzbY22+sL1iybBrglZZghW0=;
	h=To:Subject:From:Date:From;
	b=YJvwwEf/8SGDNeJCeCszyTn2te8XK8yUt0A+rP2qXMgJfYY+iRUmJFJqCq9dLj2BY
	 HDqRfappxO7gJrWnOABHBXZrKNRimEtw1dU+22VUhtK99bEO+CSmABYW2JaxtY1dDR
	 oovWV5RfnpAM/lQ69ytZErfvrWTeZDp/qbrSmD/3/sIAwqHYy4kkx+Hf5i/CYQfsuY
	 E7tVJ1KLq8GrAY4Xz/kzUOq400TbgbJpEwr3RlerLXBBXON/Mzuqy1wNKhwlS+TKC9
	 6zNCgTfQk1dR9Y5OzCbEVMwbzdR72D0NU/RUj19ANSdO6uE3x80KQYCvStck9xQFYE
	 LT4Hk/v0jNQWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90373CCD1BC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176120579358.27138.12236835534247165830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 552a00559d88344d1f54f8c9b910568aaeb06c3798ef6d3bb3fd2c74b30fd75e
Date: Thu, 23 Oct 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761205793
