Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B64F3126AD
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 04:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765774374; cv=none; b=YLhfnUIuUx6OHJINX3Juo3H/RUgug+Ko430PhsIK5K7FSohHB+jotxtJOd6RBdJAz4YRr7yONbdCzcpp/Jsjcgav77mn6lBI2SC5jk/++S2dewdjcfO+GTEVIEJs3zRi5/MUTHQ5MLXTz+YjT16ZPoROmSvY9/8msNEvVkxFCAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765774374; c=relaxed/simple;
	bh=OqSe8IRK/Ljcd9sSJfeHkkFafor0qhTf9eoxoFtbJ8U=;
	h=To:Subject:From:Message-Id:Date; b=m86U5LpjCVew++YYk9Di7m5MK79hsRJ/GLwZ/yUObSTrMlQ38gmCbWGMjuNxWFUJYmIQMQWGpC3Rpsi9WIIbYgbhWX9lxvmpLJga7yIaipligH+ujtO1DPfj1dt8Iv9rVY5rJe6IzpO92Y7qI6nhRNE8Me8MVBEpClOSjftPCqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rhSwQ2lS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rhSwQ2lS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B03F9C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 04:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765774373;
	bh=OqSe8IRK/Ljcd9sSJfeHkkFafor0qhTf9eoxoFtbJ8U=;
	h=To:Subject:From:Date:From;
	b=rhSwQ2lSKtYpiOFDk9ccsZb14xYrCK6yywL/xfcw2dq/scv+VRRvy9T3jIO6gJHB3
	 rFtC6BGomW+mUsS/8h6aWfiktv4/ymFqnHXJgYYY5fhuAqf/IICgqiHrFHmlGbNS4E
	 VfvAtAerr/BwhUJuXdAn+mXMFgH4OiBTY5A2P8xL7opVp1ojQHbQPOD3sgsCBFl4DR
	 yq811fOxeklXzIp14ex+b9lK4gibbAjij1HVeJl1P+bKl+NwxL9yf8Xpfux7EWvq9P
	 uZeYV8cMhYhHegHejduHwmLU3ogmAyazPpJW2UUKlBdDIMTfLmlbAxY9+/r/gz+TQi
	 WcUYNuzOpjQeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC51D41D74
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 04:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176577437363.10244.7980552275223443935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0b8a2dad22e6238d5a4bdec1bac6b90655b2396d764a890faad200d710ab9cc
Date: Mon, 15 Dec 2025 04:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765774373
