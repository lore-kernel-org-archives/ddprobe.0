Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4508F13DBA8
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 17:30:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713893423; cv=none; b=k5dgPMzISaVukCECqJcA7z9UooxTb1lt2bZBUhkV6edHh2ZUwTC2MHRg9Va9HmXDUqFaK2vP08klibsA7gFpa5lC/Pn1QF5nLWvfzHAkBrH+mBqWq0STzAk9pGMIDzNWDnMZaMac91b0XLTNiWgOGsws3FxCAyn0Kq4bCTzBMzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713893423; c=relaxed/simple;
	bh=zja3mZXmT8bx1cB2nMiQxvn/0iI3tu2lO7JLJpBmX4Y=;
	h=To:Subject:From:Message-Id:Date; b=ujMZuLenkVXGZxw6isUHGm3UpACDZM4E8sI5vuJHGctp3SXTOWI9SzvdGaKmKUC6ewQ3T/mM/MSNTiklvrJ6dobK6SURMY02GX6kFzoeuI7cbrrlpnOEVzwNSPoyOBxPyTH2S+L9kVTeoLteTWwEDJUktmZY+KxuMF5nTqJPf+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eiZz/o/G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eiZz/o/G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3822C2BD11
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 17:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713893422;
	bh=zja3mZXmT8bx1cB2nMiQxvn/0iI3tu2lO7JLJpBmX4Y=;
	h=To:Subject:From:Date:From;
	b=eiZz/o/GqFHSNkyfQSvetKXlWndv71Hroq+2YW1zlw56J7d9q6cAjqrl3l2AcmhKt
	 45nq0rdAb5pA8A5/MQWI5sgWUvmusnpSdXhn8gINKngBaLYs2gRzO3f+MbPN5Bn7eS
	 GEF/ojIvLSZnspobdCVsRT88qtpM7lsrtNPWBs6ZhrBbNQcuzBgeG7AIvErLY0o4Nf
	 /aXybqi5Y9QUMb8MJegZyWCaxdiLlMGt+H9VezuAA82DoUsfN1xCzpQCCwjBacJQd0
	 jJTiLqyliFkOMwBvGQyBEcPeVf/F5iZhH7H332mM+CwnjsZ0RnpqOA1WtYrj2si3HY
	 6uih7VfUQENxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0189C4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 17:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171389342277.17118.6616155247866744597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e02b3069113884f42f67ac9773aac0d550acc8f8aba6219c0dac26782c0c57b
Date: Tue, 23 Apr 2024 17:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713893422
