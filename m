Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C61062171
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733500554; cv=none; b=gMpTiaYef4HhuoJsY0x+6XEJkAo77+HsMyCT37FDplCtSaWNl83FnHlNT5s8jBjylj9YmKyUbxftSMZQxe77wFGMXrHY0yWeRUkfPg7U6rJ3Tnbu12VffumHGCemMYNui1HHDZtmG+pPKKhacHVHbobW4kbGh7Ph5d5lJu6NshY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733500554; c=relaxed/simple;
	bh=yN9ALBfdc5nQQjjdAO1j0aHNumAMT/7SKOqEKEmKOzY=;
	h=To:Subject:From:Message-Id:Date; b=kSqv7hAxnYYcmED7KjojbAmklZPHwo9NRMlGesiUrBnanbug3g6ozqZu8L+yJPCFb7CsP8AaIg+rjqCuFdhyRFPzBVN1V/xZ434n843qxuqeR7JHe6krKsjOP8JbEn4MNtM4mP6GPRWkYmT2vMxMKRYbZKK58KR9Qipsth/a+JM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UYokeaF9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UYokeaF9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA35C4CEDC
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733500553;
	bh=yN9ALBfdc5nQQjjdAO1j0aHNumAMT/7SKOqEKEmKOzY=;
	h=To:Subject:From:Date:From;
	b=UYokeaF96Ynjit910UG+eNQHvTHptBsDwTUCmwqkLx5wA2Nnz996Y0wQ29p2+Iqk6
	 tozuv+pXYRaCWt6TOQOMBaUkFAWZbJOz8aAK/Wl9l9hy8G8YhqWG/ci44L/xxBSUud
	 iXVpGUM1nEbYZR7Fd4eCsh8khKGX5sWnr+Xp11QZN/5S7HZI7HKytJpKxiSZVdm8C4
	 XJuFR8T5sWmWsB13NmPIBEkiDyKfx5W3JUo6nZasS48FpI0rXBVwytpl9h4VidOJGd
	 6eS5Jrau3mk+xgX1xCFnRjwCaAPWQlRS/VKdxTwKl/DFO7pugypOT+6PArzfQPKn1V
	 WWxwHZU/Oj65Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F8C5E77173
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173350055364.29997.8921297342155137990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 256cd6b7a919e5b3f66248243bc915e08682bc97ec980e20d761772b7a0dd1b3
Date: Fri, 06 Dec 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733500553
