Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 470E63CAA3C
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787898034; cv=none; b=S6mCzvUZ4JU7xWehZin/yfPRwJF0e1EBVcEJUgmdOuKbtJCk0SMLMOKxad+u6RO6+ou+ehZBhcCOJLoB0//FTfhLB1+UINbJM2B6I71Rc4gC866b+o8wVEADgpXhNOztDCrYxltQIXni5CN0J3XU7bB+BkHpHuLq9ZAtcGXl3vI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787898034; c=relaxed/simple;
	bh=tvh/Wh6+tPJOo5X99OKBombef5gwT2+dtZWUviWbEQY=;
	h=To:Subject:From:Message-Id:Date; b=RovKsy5lxTTPVJNHltjfzHfr44ZQikI41JA5B2ODWNep3wZVrUxELvkInqkwXyhV2rQzv2WMdsba4c2PXj81tiT/u2oKKe0bBB3b4n16OfpyV5glO6BxeiQt7wWUaUkiRijViJxDavhvlSWk0SMGWrPiNQnXlH48oMxDV7gwiqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KpaTKKG/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KpaTKKG/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB73FC19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787898033;
	bh=tvh/Wh6+tPJOo5X99OKBombef5gwT2+dtZWUviWbEQY=;
	h=To:Subject:From:Date:From;
	b=KpaTKKG/nkIUsQAvz7NYERgDwzzOwUhhl7NfmA4Afq1vPF3dEIrGZAi4sulyVmRgL
	 DJJ92yGKLV/jQ8k3kq5ZXqVnawcDxe+xfVK/zphZLv7W3P09pUF6J5b6+QndgbBp51
	 Y37H8+TxcOlVjqBVavKLZI3Js44eR35h4EnIoFz6W5F5hBGQJG9yusdG21nWRqlkbC
	 7nIGpCBsF17CjmooECY5SJZfeFxS4MtbAy5xeEJc6YvZPDiUdLZKR2ob6MulFLx89T
	 d2NZtLXWfYvSAGscrK8XAtM+aBo27VDpQLnujcahsKrPSeoQ1tcVM0/4zwYBPGftLj
	 E8fhhbvbb6HuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9713C61DB9
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178789803368.29904.8242498154389134818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 814aaccf618fd821aa0ea7ea584ad843bb2b0d83f97b779005322642c9a5697c
Date: Fri, 28 Aug 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787898033
