Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 100921F30A4
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 00:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773102294; cv=none; b=IycPvCAWSStSBkZvbuwIKsPVoiarbdgkrymNoRbuLIOANHmCiZqqTgYs6yU33+eg1XAQDmlk89jUt6+nYLbmClFK+CGEx/NhW0ECDSW+MtdCm7dNyfhZzDRKdXiip6HueeUXaiTbS+ncIIU2i9Sep1rqH/ZBExJhZuJouTmuCx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773102294; c=relaxed/simple;
	bh=i+k54LytL93kdjlkSVeANTO/LRs9xy8P3aTNR/al38o=;
	h=To:Subject:From:Message-Id:Date; b=fMe1H0lD9QZKxQa2GfMHkZbQUVMIjm93SXSVaoev2iJBTptxuZEYgobBXqAdl9/Rhwu3fPKmAO4IXlHXs7vjKJin0N27UpPoOum2UvaRMPTl393ZNeeHmbOaUV7xPU1ehPKKYZNN0CXYLn7uZhtiHWPregSFicCdfrrVe/fNSzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KkWMfn+D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KkWMfn+D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0957C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 00:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773102293;
	bh=i+k54LytL93kdjlkSVeANTO/LRs9xy8P3aTNR/al38o=;
	h=To:Subject:From:Date:From;
	b=KkWMfn+DkAjfmeCkJK5pMt6wF5HaarN4S+o3R4jGCFoAAnqI7le25d0ye+HYRkQ5n
	 pB2NzOTmy0+0OjYpUGu+LuXDczEsEW2IP/QeWl3+JL6nsCJ+X1QjxnDf2cZ+rm7fsK
	 jg6tyJSCiwz+dA5EiASwykC6HSk2CD6Jo28B6IPyYEF34eHRuzr2S1Te1VXyNW5Gby
	 pWNXYDtxGiZsOSDUMIrvK+7mvtYilNVh9nPbEErM09+PvTzIzXQvGhhy7BWYY0W7U8
	 +nLSrnWgfQYW1Dj0C0N7kbAJ4Z7QV/ldY/O1WgJT79xTKwRJA1qH82l+MkJvJaCSYN
	 NNgl5RKNZeEMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CCE0FCC9A2
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 00:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177310229360.18103.3756878436724146905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 490af4e15f3b20641d15e58d8e98ca866a3ef277aff8b581cac47f76b33aded7
Date: Tue, 10 Mar 2026 00:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773102293
