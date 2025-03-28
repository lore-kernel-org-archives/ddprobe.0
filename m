Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8FF17332C
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743173995; cv=none; b=D/Ap0aZEGzChf5tQwy6vme/9/EYGTH2zfCujwawD6eaAnhnM99FfYDWB6Ok9o8wTJ6i16tLUkYq7LgZxbTdU9dQyGtX6G6U1PwMN2yY9NZV1rihEpEgEtvcESTBlKTrOOxV7HvfUgxS0+O6ZWHVO94CmEJrwc0u7g0gxTYZUGHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743173995; c=relaxed/simple;
	bh=gpfWZVf9lOkMFa7e/TT8NSFe0yB4ZZOGLh89+FSlZ7M=;
	h=To:Subject:From:Message-Id:Date; b=K5DNXeiFSzBBAE3R4jzmMpk0fWxTvNWOM0cMWo4hHqNacZ4MvvaUyERa6mAgrW269T3kkJktBYNSMrmZqtJyrXy/5Uf6ao80qFtaeJwk+9yJZ/Zflprfwch6T5mZ03U1AdIfHZXba049MNOhwF2RmO2AVSF68dri1a1ZqtwGx4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=buaREvEC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="buaREvEC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC492C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743173993;
	bh=gpfWZVf9lOkMFa7e/TT8NSFe0yB4ZZOGLh89+FSlZ7M=;
	h=To:Subject:From:Date:From;
	b=buaREvECp+ABjDl21/hZYXkEpiPkyohd4aovG3lOxHD6I1cv12J7tBPAyi4xcBv2a
	 6O6+/I8W/fgimHOOXxqH3tW9rpdL9DWDE1EZSr5rxKOEwh7IuG5lVIrfMjnxwBOaro
	 QEyqsJ4rbiXuqEu/8D1NkeWsLR7wjV9ty9HN+ybI7KDZyr5Eup+hL9xdYokXuFsAZf
	 ZMupuXmZq8YEggLPS93MEbKjzfua5ZgJcci0b+4CgtSvkkyX3e3mx4dIQ3lNTF/jHF
	 zXhje97va1PS3LddPVL/DHJkG70nlN2itJ7REnpj1UxIGZ/JxpWKIgae/fKIAYnFsl
	 hjT6GQJgXbFMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D514C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174317399362.11890.17535342652824181027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d5db1577428e7f5102bb0e12f94e02f724dff02af036fcc46e4bccf261e9d98
Date: Fri, 28 Mar 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743173993
