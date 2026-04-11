Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1915E2DA75B
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 00:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775869054; cv=none; b=FdQVqJTWMqd4+4+zqcewdFGZ0Cw+UcsY+tZ/PAGuEa6MjGr5hgIGPMB4a+ZdPQ7mazH/FllvY6z9n3ehspnnwGRVzcMqnpmkoTe5yUnrwZwcTA9N4j9aXUMppfsqzOy5ei0PqQY6xPPPbEI8XjtyNAHCJKT3xdeQ9kv5fUhB96U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775869054; c=relaxed/simple;
	bh=XZSdQuv+gbGwH2jjbyqd2vpndF31V2YKyb6Hb1zY8sk=;
	h=To:Subject:From:Message-Id:Date; b=CBX5w1wKsSyBpgnx+/K+KG4JUc+fGZBkqKbCWQQ8zsM7o8un/Yw+prNn942dZSrMo/ieZOLoZgCjhArBLjRoualyw5i7mdyusWqLupU/uff5WD5ZZAs6w0xgU10vQTX1LezkeFKnVChwEKurGF0HFCCfutTjBqXflnCyqSgkM94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a8o6v97N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a8o6v97N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB399C19421
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 00:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775869053;
	bh=XZSdQuv+gbGwH2jjbyqd2vpndF31V2YKyb6Hb1zY8sk=;
	h=To:Subject:From:Date:From;
	b=a8o6v97NnT04DK6eofSsaaAPw+YEnmTd2qjycf0YYv4WDiz9jKe1bTtvWuNGx+fn0
	 OIIhZjquupn5TKjh8wN2q0wptwLcNEh1Sw6VgOcMts/bryyUYjo6FgA+FIfFIPedjW
	 1QojBph7f7g0a0TzaCt4gYTaZGxW6BlVzumi4+FqzWDvvu8ALKS/LF5CgBwfniEQvX
	 D4qfSXCG7a1evLIkq2AJHZjLfUDJ2axbS+ymLDLKEWvejKkzutoV/D5JNQXHRf1Kac
	 qWCeMB71U5q4R2F5ko0GxktbqCZxQVfZ8xwfLkShDQNTm23tE5nuecEiIyMnAdiYg7
	 hBcgUNbd4h25w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96FEF45A18
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 00:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177586905368.16139.4002510569335268792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04a47014dea364462062b166d980f2d7badc8eaf7d890dc341344fc43d862bdd
Date: Sat, 11 Apr 2026 00:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775869053
