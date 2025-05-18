Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2CC92135A6
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747565393; cv=none; b=BXLVNtCRymXRbqkQg76NpJDmnF2vNOUeALBxWAhaB2ZiAs/tXMRq0tigVm1ocwcx+XlqfFU2XtKYubp5k3nfxVYK5jP+kWGFY+dTwbw+v82+X92W4xV+maSmt2nnSNsz2HnJ3d5Zek0AT9SY+yIk1tg/pzxwezcJZsCQQTcbUYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747565393; c=relaxed/simple;
	bh=8ZOiKdVzCbBPL2KfYQHVoTaJfbpvNZLru/8Z2xWRNxs=;
	h=To:Subject:From:Message-Id:Date; b=dhmrPnBW5eITnJIuMoDvkp3Z1wnzvYRJXJtt/TIaLj5bZaRW/6LCOz2o9FhGb178oAgIy0vLpzOwbgm/UIxv8Nt9ThgutF6FbS7HS3DgbU17NT2dWrC12H9PgIbZw3gj9Vk6JoGt1cUM6kJ4BzP5rA67AjMNSFjZPEYkQ/3G8Ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WAE7FPGK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WAE7FPGK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10ECC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747565393;
	bh=8ZOiKdVzCbBPL2KfYQHVoTaJfbpvNZLru/8Z2xWRNxs=;
	h=To:Subject:From:Date:From;
	b=WAE7FPGKbNvl7QJt7Jz8oeKEukTISNz6ZYX0oYjMSN20uiC/qLwBKXfTzwudMiWtu
	 Fq1nsesveBtnV4aZzTK3Y4d5bE3AvH0JSxevIAYO96A9i+3xkItRSODTWyADXR5ja+
	 9bGIHF1U6lBwAj2EUTIZunLxr4fnxPPrSel6oWXXv8jHObvHSVi2Q8IRiosvORfqC/
	 tIizpSSpKwOxiKc2jiU5QvwNBARlBICM17LH9zxCs89Lfhp/tn3ym9ON9FZYm525Re
	 AT4UDrYrKOTC+FlSYl2yTBBAmwO1iSWXG/k8blQ66rrJtkzWM67OzyuswL3gYrzg0E
	 eA1K4B09emsaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E68FC3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174756539357.3986.11025420218891023616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9bc29256517e56f3a0721b5ca013ea990dd987fb12301124f461621bd0a604e
Date: Sun, 18 May 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747565393
