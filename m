Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D48324677B
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 03:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782097594; cv=none; b=DVx4Xg/AsaUJQiKdRWZa0iCSowBNO9Mo/aPmk2Uom45U7IwaTgBfx5YMvgu75iF7yU+hWVh9c+ewt/7w1S2XRe8LyfDAsUcdd7sN0JcNYkO/vt+Ahwky/uR2Qxnapu5eaQ05YY4D8nfZMrCbe3PCd47QBDukCXu20bD2uqal/fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782097594; c=relaxed/simple;
	bh=+O/afPdDYU4e64jRl7EdVWLBXxDzF5euhERm2UsPEo4=;
	h=To:Subject:From:Message-Id:Date; b=I+A30hPUApeped/loFL5m9yzEQTiRs72u1ST6kLiqzSz0cOcNYKAUHZW+5pv73hfEXuFwG4manOgZYtIutdx3xLfcJAQme5ecEGBc9XNnH6oIBGTYi5XkMOw9aOyop7tqhZYyDjtmP8Wx9T66E8cUITYEO1gGwxmq1aAjPy1S/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VpBMrOm0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VpBMrOm0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1236C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 03:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782097593;
	bh=+O/afPdDYU4e64jRl7EdVWLBXxDzF5euhERm2UsPEo4=;
	h=To:Subject:From:Date:From;
	b=VpBMrOm0usreBhY2VO25b/QT+5qmrWwFHH8T0hBjsyTSM4gdmzpxosk2vFLWgrvde
	 MOCi4ERQ7VLHRI/YdUw0cfFyRAjeQ2qcUgzfGagHLunI19T7WaPIDJVGPcrxHOlAfY
	 UPyoZsWVZI9RoqPEcBj0ApiKQnw/Bgb+sQze9Pu6A/d8/qNQayjElHXGcV09knOfHE
	 S4ts/QhBguVA4se4elh9znSENuvxXWyeRim6deVMzGXWhj6zozRonYRvhC55prRbLA
	 BPAPVLuo0NGe3Cvu3qPS+1v+dZe2Oo5/JZq7on7SB2zwWHV2oycCIYU7N36HBk/jUc
	 CqGR6uAMi2duQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B19DCCD98E4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 03:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178209759371.19532.12675172069865219801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 962b45fc2cbfb004af53413b88f028abe0547a76cb3e1a5afc3630053310f088
Date: Mon, 22 Jun 2026 03:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782097593
