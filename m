Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2175929BDB5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759507795; cv=none; b=RteC0tItvkmMhNzpWoTzbl61zS2E8WXYRD7ewlSK3xXwB6FtywxZFvnv4OraSqEaCoD0H25xsIzr54c47AEAjKMpqnjDLh2Q1BCiyuh0emlQq2rMYFE1BxN+RVSKTFK+OBAp4qA8JCfrymxvC5+j5h9SpDYT2FnKOGcnjhnGshY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759507795; c=relaxed/simple;
	bh=34jXwtJDsSvanaxaWf+J4IBywl/uoHcaOo7hZYU5QDQ=;
	h=To:Subject:From:Message-Id:Date; b=ua80PiX0zrPjkgAU/tAKYEI9NIwPl+q8keXQmK4mPcq4Odv69CzQoFYiVhHM4lnwAzMbrllUYsBx57HRpBRFF0D96IFemZfFOodqRK8Pv1uByEbTnHwuDm+NlKfmK8bSQU7x2FSmTxCZqvEMxrRvyZKs/oYOKBxqDfYd688vzF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lemT813d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lemT813d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D42DC4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759507793;
	bh=34jXwtJDsSvanaxaWf+J4IBywl/uoHcaOo7hZYU5QDQ=;
	h=To:Subject:From:Date:From;
	b=lemT813dHigrfqcR1u8pVZrFC83mGUE0qxFD96v/DPntlY8sCbiEHJ4ZnHi/iJlVs
	 VMLW3akDVIYMTPd27ZRFmBASvkaPUTPC4XQosb754234jwvxl2E4eNel6SMNEz28J5
	 erzz1nCzRdYnkO/RH2drvZwn0K8g7xAl3vHVh8UueYlA7GqfAurJltUxtUaILcxpAN
	 uXxcobNr79keev79HhH2f49atIzXljo/n6Tjio5VqITuTB4XsU9aRbS1a8ENu+cO7/
	 TXj9eq0Up0eaLTtn1YlsYgxuR5+u3g/9b5TbqPLXXhItXGw0hbu1eAdJannYXh+SjE
	 hKw/lUimiUWcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFB2CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175950779357.12937.5410714723820594648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a326d6d4584b9c8f0d48e2d330708074c072d9833a1fa5dc70eb32a66e64abfd
Date: Fri, 03 Oct 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759507793
