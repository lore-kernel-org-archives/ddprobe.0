Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D633EB11C
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789371634; cv=none; b=OFgVj+bdeZBzB0nO/0AIxNr+heJvf229dOlAHonpfWjGeJLWQ5M5CFk6SqiFB519N/I42cVA5eiYm4Z5x36z/jFUM49AmPJjlw4IuCvZuFZv0SA5gzS0fCwm2crW7HD8+gqjCrIm0iFe1Ahr2+oP8nhcZ8zPocWMKiuvmUh8zbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789371634; c=relaxed/simple;
	bh=etDtqql7ZptaGuKdIbckn7TK64PXv+e97HwBqlRndew=;
	h=To:Subject:From:Message-Id:Date; b=jyCVlQBJ6QHx4qjZZ4U9TASJTa8ldQnp4FBm++rt7AXSPSrvLlp5BgfQFB3/F4HgtE8KvNsRNiN0Yd3gGrCXflaxgAvqLJsz9wYcJFxMXt3BFhYguTJqqsPdqmWgSrzMVDIY7kDQRgf5OR0OB6igPu/2HyRwgx6CmDSDHfER76w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JbcONJd6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JbcONJd6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CADDEC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789371633;
	bh=etDtqql7ZptaGuKdIbckn7TK64PXv+e97HwBqlRndew=;
	h=To:Subject:From:Date:From;
	b=JbcONJd63LizOldQJFryRWmBFXrMnfm5ECdFxacGr2KCvO8gh3t0eYrvhHg0a1elo
	 ZEAbpYOJGptRVxTALoAnb8EH9c918Q6Y6ugyiWdcJR/31zwPaCKYfSc+Dki76t2OaL
	 KZui0F5zkcIPGJ0xJ0QMtWQ99an/MinBKK9XlQPEzqpzAmkLmdDcmbTob5UWpS+I4F
	 ri0zr2zZdyb5Si8bXWMKHU9dYlU5A7ijL6kT1sZ6lKxICjCC9u0lw54G7eMxR/Gsfk
	 wTQHkXbZXv0fKxzSkY/mf9j1HFTKmzkR5SHDJBTs5YUW4p/i7Hy503wn43EfrjPyXj
	 58dBwlUZYf0lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FD9C88E50
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178937163368.5026.5957583597301072299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18984057379375f80e7e74f9eaf1709e80da937e41ad68e9bf19ccfdb4d67ccf
Date: Mon, 14 Sep 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789371633
