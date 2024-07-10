Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 416A783CCB
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 21:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720646243; cv=none; b=q+ajuZGD8g/0+vwuuQrDPftLy8Jd636zTiDllpIXtj6IwcmHk89dw0P4ktzpJyO6e/Xy81H089BLCmY5aurfw1w9BQjIPlN9HF8U6pDBOwPrDvPwRwBY76o1mjTPw+F6//h3mLMyk6wQm/kIJALXM1TMEYH9iuCWx4tBFOllAN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720646243; c=relaxed/simple;
	bh=knXbW+Ar/AyigouMoBqT3oaLRbFXF2kg4AFYCRvO5Co=;
	h=To:Subject:From:Message-Id:Date; b=XukWn2zzbjQ4PrIycjOXbIZv+UOwHuoQT3fVlBwhMT6hbpRCtsTF+chjcz6oLSOMp/Vw5K20ogT5zS4efNQtXpxb2t5zRN48O+WHXpvijlxtTsM0fFAmwGvcmjRwsil2etbI6mJFpzbz669OSXjWBHLxeXQ7GtH9YfhWESy2RZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JgIeD5bA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JgIeD5bA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D59EEC4AF07
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 21:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720646242;
	bh=knXbW+Ar/AyigouMoBqT3oaLRbFXF2kg4AFYCRvO5Co=;
	h=To:Subject:From:Date:From;
	b=JgIeD5bAwD0dd18laVEQpt0JXHjoNr4ohjJxwqwAjGwhSYaRWnQVYNNemBKNzpg/3
	 by1bz6jADT3UQJraNxrO3uRgqUswWW4TpP+WJry8JsV0dUS54Ju36ckbisLQcLer+U
	 sfcRuccB+VjnUs6G5BTTcXbtPaYwVCswukIIQfeCVAFcBIy7/N/rmfvRPHTfrAyofl
	 WVZXnPopdn0oBjYY3Pq6bmHACViyFXG+Fc5eYtFfQeqjN2EdTET24Is7sP4ngFSWKp
	 NN6fic9NR7RKgbGkPbaRWdk0vtBzwqJIFlg7/Z9sYESnjn6jGWhAYqRpdP1fdF0Kgh
	 8SDCGpO/pwILw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF7F9C3DA41
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 21:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172064624277.8241.15803372324118958417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 329a68823a73fc3f70e077f1e3a205135b485a68fc6d1cb2a92fbd5ceb175db6
Date: Wed, 10 Jul 2024 21:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720646242
