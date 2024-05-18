Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52E4D79DE
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 19:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716058943; cv=none; b=uFY8lJDI5asMfXr+l4DfxNKxtmMmZNRhly4ob3dzABxFyfv1YKIRvpYeXne67QFz9dnBMa3e5tmJYVmbWlsYhIpUlk7Ez8tKlzzREujUzKmHWle5irfCRJ4gQM8odO7wIoLBnQZ6jiG63ZwFXdeIde+wrWdBrx/GnQKRIvSofkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716058943; c=relaxed/simple;
	bh=Ej06Voq3IISt2cH1oG3CLieIivPAeZZJhR5IGljK2Vg=;
	h=To:Subject:From:Message-Id:Date; b=ZpE8R4TFryB5vzeIE7IEDCqdodrSh4Tl5tJgWCjx+VqsmWv4uGQt+VWYDIoQipccWd3TxkdtdQ3WXYNcf8Np3UcP+r15fgAMMPtJWgmrrmCaaFfq8yhTF0M8x3Y8SNNoRyJAJGASDYa/pCbgWeKHbbfN2/zYestb2u9KuUshHaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MS7BHOUG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MS7BHOUG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD9D7C113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 19:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716058942;
	bh=Ej06Voq3IISt2cH1oG3CLieIivPAeZZJhR5IGljK2Vg=;
	h=To:Subject:From:Date:From;
	b=MS7BHOUGdjce3I4GnpoeaIKTTZVu7o7fAaLW9spHdfJCzOQvCu764CLJ7wgebd/KV
	 m/acKGJk0hIVYBTp1EvZbC7AWPoQmrrBg162qNURwE6Q7U/uPIrax+8Wu64cyzAkWp
	 uo6X4VElSQad+wbXvm/YIVAUWqe3/NuUouPc/3AYMy9ymIdomkYd8HbIax84FyojYT
	 OqsJRgYWq9hhTt9MA8aLhMu+BQliY/OPGgMS8sxtYhg0i1BheaiB9/ZDfbvKPxHWPj
	 kWOjFRAPMKtp457QK/8RhKILOHkQ2Pi4Q7hrVq3+uQjdbbeutUaCh9aZJXnd6LMfo3
	 kgnncgdc+nMTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9A20C25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 19:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171605894278.15250.13874448557983446047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ce2dc06d7b272fba1bd389a38c730146a00b0f678b0e0340e1b9861ac2431ba
Date: Sat, 18 May 2024 19:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716058942
