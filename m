Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B2040DFBB
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 18:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776536254; cv=none; b=L+l1k7vMrsHiqdCUno8yJdQfFRDiy1UQRCghB+9V0ZZbl9WWtJQKxX6BaLJaIdBwvGOvkcPeMzwTqj7yp9gvVZHeJRMqBq+muBjpHMcXUXKA8mLVoLW/7DAKKUIVgfitDi/f2QdtPoAJWwvrdBaBGna8+26s2jK/GB84K4/5D3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776536254; c=relaxed/simple;
	bh=LIOZn/KBW32p263Bxbh26ZZRvOTSZVG8KmOyarbtJak=;
	h=To:Subject:From:Message-Id:Date; b=R2oGjKvUKgZih1mtKwU6MQa9Hq2m/YvwcOPTXoHf7agq2ESnAUDqYsPcaQYzkHGyK9A5AkG8HaCj7UxhKgHRbi0joPkp+/JGic0/KxE85gh/t2nzaUYHmuwTgqduZoavUfOfNiWOEucUGL0wr5kxUTQ61gzHua+OqSnN2aIUH64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WgSyI8dp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WgSyI8dp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C10FEC19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 18:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776536253;
	bh=LIOZn/KBW32p263Bxbh26ZZRvOTSZVG8KmOyarbtJak=;
	h=To:Subject:From:Date:From;
	b=WgSyI8dpk//E2Xs5s+8yuasvYXISVR2ZMl0oSGbmM3phdQk4wpoxug9tBP/DgZn3K
	 tXnxxWdPx9Vjus/l3TDss72Ad2lQyJBGsG46WEB1cLuSmZD6gj8xihJLZqhwmi72CS
	 dsvoiOD1Q2yxtqm7iiaM0e1Yl4im/MXHtTdhpKt2ntmm6OAuzr6jjL0+Fs2tCWJ2YH
	 KRBiDndoPFgztauOqxyZWvO7jp/fNKtHWNgzoNe9QbJZBiqIQNBSFUEdoTc8s+vMGg
	 QkeiK19xedJsbdETM89MPquDgrHBb2GZporakKhhjKgqWv+d9fZEGY5YzQNLo8HtHU
	 It01I+V1DboEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED9BF99C88
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 18:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177653625368.20149.9606174308216070971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 418a0ef63e954f8ae90f8656bdf11f72464fa20bd523293ef859f92b4a2d728c
Date: Sat, 18 Apr 2026 18:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776536253
