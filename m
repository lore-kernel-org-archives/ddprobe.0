Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F54541C63
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762597794; cv=none; b=NMjWWP2xvuQGzuiUfxC/h25hhy2GLWFh/uxstGzDuEDMvA9/vYg0TWc4UZze7nigJWhZVNlU7QoUTKVPO7AXAYYkd2kPOlvmzExseaecrLp+q07/sCPLWWDbYm8epEYvThUJ2dVIa29b7ErANL9+34EKADhEK9yzUgG5T0wzMUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762597794; c=relaxed/simple;
	bh=4wz5Q0jK/rpiSVfmUgXBNamvFJ9McI8pWoGKNofG1SM=;
	h=To:Subject:From:Message-Id:Date; b=G/6rY54m+5iPttlDV4RlMf6AWtAXBJBj2al4CH1TtcyH2RaKMSkHX05MkcmU9BBd9PwA0ZeVrccCVWQnc1TaJAN4GGBrWaFuijde1qyMqTLWcdXNbfO26oo3qJQ+vSfU+ecw/zyUO3Ua//06otf+CZ0JV7RhMGMhxFiMiE9qyeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eIeoZfOv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eIeoZfOv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D411C4CEFB
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762597793;
	bh=4wz5Q0jK/rpiSVfmUgXBNamvFJ9McI8pWoGKNofG1SM=;
	h=To:Subject:From:Date:From;
	b=eIeoZfOvcimOBdGBXvJtm5qC99MMdSWY2YRt0xDVxcmcVmoB9ztIRQye5CcvVU+tQ
	 C0YQ8OyL5Ph378Wv6nAsUtZi/TWpTAOUtk84xi2loEzE4vvZEh8Ca68BmXeVfoywsj
	 nx4Y4C1gv9OgK18+3Q7x/M2LLmeUayYVJ3XHmNayFpZe63KjQ1gxOsieP78MUZ8AYt
	 0zLAZDb6Vzi6T2Rg2kHvfre9G3PP2JYlqDWWckQbzEF3QdT7CKtWdr313xTKZ1jgrL
	 EDbw1Wti1s8H/7gcudyLxNA6pFjB9e61ov8JBNBEH3vUfUpgknXY4vpJ1RWIxqosWj
	 KVYcWZuuCXPug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90037CCFA13
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176259779358.6178.9016120080858435234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8cba24a183972087e69256e14b60c1b4edbd1fa4b2b197dbb95014ddd643426
Date: Sat, 08 Nov 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762597793
