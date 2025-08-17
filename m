Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE2C1F0984
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755421194; cv=none; b=EZ5X83bcHJHYPfQbnNOh/MchYLKU0HeWVSDjrLJTRFv65ovKFH9mjdbzRWBJdAXgSgIAo8NRJyTjKenYZ5ZffVHIZ3IHTJXMYxeR7SWVafv0ROs2cqV78yhU61l40NmnJMwNrTuU7GlXKho68hkD3JED9Hj29cYga9wpNoQf7dU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755421194; c=relaxed/simple;
	bh=onfFVjY7WNRhe1XG8J6ZHzm0qXOmzkFL7N4oc3ffbmk=;
	h=To:Subject:From:Message-Id:Date; b=UTnAYRAEp/Is9JgwMZHBB2QfFHnuHvX4oq5Ohu8YGm0rSXZi1qq1ERTETdRtz+odzUvoOBQfCOt1zPiKOiFAo3tM16e0uddjSVmjQRhtvdGzz9dyM5tPqoKc+wxY95Lg6Kl7o0hyojyLD1HrWbVB1g4ZBTHqlpRTVHmqkQ9zdk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iHVSqVSB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iHVSqVSB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31F4C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755421193;
	bh=onfFVjY7WNRhe1XG8J6ZHzm0qXOmzkFL7N4oc3ffbmk=;
	h=To:Subject:From:Date:From;
	b=iHVSqVSBbdPwgqPQeoruNI8LOPHCYOCrbOH3pk4QvqsS+VF3K76yj/oL9/CbeeF7Q
	 4uDFuZXy83kY8XWrc8H3ICjHfKNQi6qtdLzmo7dMYgQsvYvgKWhqhBkQQH59KG213C
	 Bm2HS+bAdsnrW24ycqiw2htO6PQOPlMnCP11PefMz0m6dXK+ak+RH05zhecRSJIR2U
	 FLTbY8PKlNGhWD9jwZrR0yg7cPnswkXO+HZlMp3Ijc8nuqDiQxBAStPMjz/3FjmKa0
	 haWowW/Oj5hTuXz4Z7gyeQdWOr8cI0iGS2RCi7j+3GuJkt6tTV75cGoh/VAeSJ1kLd
	 opHypmPnmsphg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92407CA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175542119357.24066.12376264322155012846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b30f6883cff19d8672bdd3b836041d22d2789918e65af9993e0737f6d848f332
Date: Sun, 17 Aug 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755421193
