Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC4D1F8EEC
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753517994; cv=none; b=l2u6HP3OOefeBwR3vhVS42vthjW6GXMpEBGaIAKFxK/F5i1iT6cUBMKxaJ5UGCEmJECyjV7ZvN8Z1xvHbawxm4aVTdUj0nbpKDDjFqdMdJCQ4IrHpVg9OK5dQnIcv0JxBrWZkeZaSQ9IYYACc37t8ZZgbHlU2UmklJ7uHEN65JQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753517994; c=relaxed/simple;
	bh=FrG5CLTo5Oys4NrVmOwroQ+5bXHwbI/1WWreeLwjjds=;
	h=To:Subject:From:Message-Id:Date; b=Z+T1QzJJ8GBSrrqIrBcbyhXDYEcVaT7VeGUu+xBoklYI6tlM0cLPoZCnK3xPm8p2mTcf7RHynEZ2w69X7UJ1OMyk9SrK1jBO1b9+EC+wH4dEXsc+OqT7/RMBM/tg9rbSL0uOkhSF3drLMW1XVPoPNcVNxcxTzj3UtG3HxFe3xUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mX4D1zrq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mX4D1zrq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74ECC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753517993;
	bh=FrG5CLTo5Oys4NrVmOwroQ+5bXHwbI/1WWreeLwjjds=;
	h=To:Subject:From:Date:From;
	b=mX4D1zrqj2iSUvOjI/BdAvgKSr7FTytxJZ1yDUwb0edcow/IDjXCjnqBZ07Q1Fx78
	 NuV7zYps+NhClemd191QT9fb6EkXTP0mDer9jrWVQZd+9Qr4MhNDmhfaqaKKm4i0gx
	 cjxhRWr5oF7ZrubOArZNg6hyWTt3WD75ShXYsN7LHEPdIzjqLIaIcy1LPLXixKbwef
	 cZXfv5xC+W/OGk/Lyi+5YS0mMUL5sjlC0AKE5Xuqyn7Ko3kEWfqoEXRuuW55LV8j/W
	 d8d5I9qp2vHojf0yqOxSq5Eig8askjqT1jXMiF9D0tY7u7xZYyDzxJ395qgsXFCl3n
	 JsCtsh7StQ6fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9521BC83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175351799357.11308.7930848198161779820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e51b0d46a9adc77a41769bcd98e9a7666501e204e68ab937a8c572ac2347ecb
Date: Sat, 26 Jul 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753517993
