Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3E636C
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734222954; cv=none; b=m1wKpL5wlr2GuFHfLNG5GMZKy5MAnrTrh6g0EMvkfHBb6VLTJPaVurK28C4a9ZwyEkLA9dPKxnks9yy37tgKiWoLAspfSCVd+mLV0SL6khhpK6xTei4RY/wScZsETBFs5Oejw6ce75Ag8BTWiawswYJWrh/SLOJeoz2fDjcEEYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734222954; c=relaxed/simple;
	bh=RwRtYV5KyS4cC14sGUH7SScLzVeLtI5Ck8dtGPRw8fA=;
	h=To:Subject:From:Message-Id:Date; b=h8jndilbnD3PBHtliWTgJXJSPL8YXK7Hgrot5GL0lnFkyTP9th3jmKCy9idzFq4Hj6/yvoUBGD8yT7lpeBO0IrhPtwFg7O+8D42q4TtkViiXPmFUI5NeGjmiI8aCFTeDY8Vxubc9vS/q3IUCrrRgwHNCBHFkQqugIfthC6V/WAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AZDgdyEn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AZDgdyEn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B487FC4CED1
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734222953;
	bh=RwRtYV5KyS4cC14sGUH7SScLzVeLtI5Ck8dtGPRw8fA=;
	h=To:Subject:From:Date:From;
	b=AZDgdyEngz/qFc+hmemnoym8qlIWVzjNkHdsABVhzRRz3WZxxoD9W2q2K+9z1ECDP
	 Kfw39bjbpHiN/q/J9fz8smit7UBZVYwyBio1bjJPF6MqDdBwMQJsvTW6Jd8vAnKCXX
	 YkwE7ermF8Uq7kGAzw+CS5B+xD5XPEqjKT3np3bDy7kJ9GuNlRS4waCvMzpGPugNMy
	 zaLzX6DdT7RLXnjuHAjBL/zSEQs2BYEZC/5MPev8SrivCCS9Rt5HnvT7DSmKFZDG/s
	 eqbKXIipvomedssNT6aaieqJnQ+lOGgOCbblIZNtTvqYDCxml9xq9PM/eRdL5csAhk
	 m/4ez+S5Yfs1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BE19E7716A
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173422295361.20992.8290192737414350678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d83b111bd05af79d118ff9a65117624bbca3aac3569f390bee1ee5990dbc7dee
Date: Sun, 15 Dec 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734222953
