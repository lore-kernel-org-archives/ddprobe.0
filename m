Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D22F15D5A1
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726653954; cv=none; b=rCiXcBKbT6uTJrqrch8Kaa9D5lDaU3QP6+i1pQHSuNxGIjlk2oxN94Sdg1b/eRfVVlwNRac01ipsBqG3Z7jj9SNGMv/esxZOhdLHXMiJg5/tYH0EcXIDlCLWcFfQ6dvGa1onvov+UZeenGDnT35Zka64EZbga6c5FiTSD/+ydZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726653954; c=relaxed/simple;
	bh=ixSNCr24kTwGhabOy2pR6womvbVDmORRKeQzthLEbfY=;
	h=To:Subject:From:Message-Id:Date; b=MiC7hDnfezW6/gTYsl5SawLnqpcRsHs7JdBEdrgq98aHM6NO9ysdh+CweUsK+G6U4nN7tzRjj2q8XjXp65pnF8a36MjHWs2ckghe4yyj6RuTaaz0//o8jNSvo+Tlxy+5ALBc1LNHkXG/YuEvOn9Jw/fKAupynUONDYHj1Xbw800=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UeB6RhnL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UeB6RhnL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4AC7C4CECE
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726653953;
	bh=ixSNCr24kTwGhabOy2pR6womvbVDmORRKeQzthLEbfY=;
	h=To:Subject:From:Date:From;
	b=UeB6RhnLv4DZBbKzZQL5fmZKXhyqMoCObRGnN8S79+L2VZmxX5BpbBbNpsQvw7RIM
	 +Tr/yvYJQjDXpfCPU95GO6uJMFOe3vDUrjz/JN5/GWkOa2Smq7q4QRBzC0ZxYt+kNG
	 YxmD4oEojLZlJrRzRgUZYC574A0GIhZ5Fvmcs0WXhBsAHPxJvW6LSv6Tz01SOTBG9q
	 t5QhqnVaQ6SY181HSF3wSmvzunmHqRFEKZ4ofj3wffdO6llyNXHmoQkdWeAppxOuWk
	 oq489LU2v0+aKPFonqoBKG0p86xbEp0flFFY5uzEzRdK8rJMlsXnD+fdP9kO7IWb+h
	 +l/NGNz3p0xcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A018ECCD192
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172665395364.13886.11267043111810909964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08a24f4ac19c658ec07a131fbe726eb01b70e91278e6dfacb107eefdc1f98988
Date: Wed, 18 Sep 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726653953
