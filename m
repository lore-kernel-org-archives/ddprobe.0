Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 047513A8FE1
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 17:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771952694; cv=none; b=T69yL+gFxfPbZmU48whYY658Rh4dVPmXUtkRrpLbKrMz737zSDpnsWfeMkbJ+u+7TIZOA6wLmipquSunmRc30M/sngs5VPSU16/lipSxr5M/ThJn/C88uPWSLpX/C1M6zrw2jZ1lyXQQzyUd26B/TxkFJQi/JxvMZ5527CMQxiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771952694; c=relaxed/simple;
	bh=3u4b9cInURtcRsRKTh00GV/r6T5Z27JBn9aJeGMQjcY=;
	h=To:Subject:From:Message-Id:Date; b=kdG1JoKiiVeJOfRnrnFegTi/cJKd8nHlyRZN4cSsSvcEmYMuVtuUAxBgFQ80xflYKuySNIV1M7rM0tY8BRhrifYoTOSp1McU9kpuxLCC6UbL/kiYr4x8oZOiLgjXMpugH8TDLzkO5FpW1tyKvSr++WA94n7RT8c/TnnW9SYnFkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oZc6Mt0V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oZc6Mt0V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A082BC116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 17:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771952693;
	bh=3u4b9cInURtcRsRKTh00GV/r6T5Z27JBn9aJeGMQjcY=;
	h=To:Subject:From:Date:From;
	b=oZc6Mt0V+/4ByF1NjaufXCEmvIQs5RdDomMMEqk0YyQeXE32Eex44Wv1TPp62oBss
	 OwXHos14qcI13kyi+i6E6FDd0S5xzaLFS49tXgNc9dMYBkfFaXJ9yjbMMRcbHA0l62
	 3mmrcIy/NLxyV/NJ7ffBkOvw8voziEWd6aFifoHEWpOHn1/ynMPB9kFyFsPcmJKZaF
	 xz+rqhXLwgP+9RaafgQVMWtI/9AAmB2CmsEYNMaGEYWf52bJ1EQmA7qRIqRZIWaO/k
	 Jy4tBdR2thVYQttWb0U/UcHc2vKi0Nflz6dnv8QfEy3/ZyxlUxj1+M+urllLxPoSFZ
	 YUXkN59fqnrTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F78F3C9AF
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 17:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177195269358.24806.7751690519244064061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b78dd1aa46a018bf5e5888a24ff5815025a6aca62587cda284f9669314e2692e
Date: Tue, 24 Feb 2026 17:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771952693
