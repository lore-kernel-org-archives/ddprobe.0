Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56827134A9
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 18:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720291583; cv=none; b=OVFV70i9qtSsn59ZtDkz5p1cYecQCkZ8kacAga0ARjW0bkUlGRsGRrishyoI1uz3jpABfUNq/Pabo01HSSpJ9RxNUTTd+DWgp7X9sPuXZv2rYVGOdh35asimKoe4pstxSt9ntvBN212V1SqO5JgSuI8FR3Yf9tRsJL3f8KpvAI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720291583; c=relaxed/simple;
	bh=xBkK0ellGBLG0L9RTfC9nTn9RK00lRkLX4X1P5k9X+g=;
	h=To:Subject:From:Message-Id:Date; b=HZG0TRm99ZtFa2CRbswNBdR1UNtPADRAYY5X2KabDkCSzHir/fUR7q5Q497LLy0s4K8S3giaUcErLVHEdfGDkhCEQZHmhj7CJ/JzCLGj3Moh5KKkTVrxr+q/qor3Pr9l0OLbi6Nb62abuoVAVoY0dbM48yae+dQCv6RcMKzddw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gAAOBcgR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gAAOBcgR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D662AC4AF0A
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 18:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720291582;
	bh=xBkK0ellGBLG0L9RTfC9nTn9RK00lRkLX4X1P5k9X+g=;
	h=To:Subject:From:Date:From;
	b=gAAOBcgRmxD1znMJPs2CxjaUG3MSzGoFyQ/sVRVbEAxG0SzXxqAGvfGISieYOnrP1
	 wlQekHqW9HwcF5VcweksXgFuuBxjeLa4GZIj/DzjPo2A1H3fpctTX6umek8qsB6L24
	 rHT0GXSfv/ahB46nIltOTXTh9pdMNPduG8m6bsc1ux5EvHy3ND6OWpZUN+60VkNp5+
	 dlul5q0iXP8EKzqJAGVGtQZ020+gDQnGzM2lRzlhoqFWHUoIlcDCV/3AVT3M/J9Kdg
	 SR/U8WTf+Kd7H4GdmWtYtGfQVCkaBpQgjqHX+p5ecdyVFOGWM7of61uIJnYiviTPsJ
	 SXzC2Ev5F8rVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C536AC2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 18:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172029158277.24503.4076176371536165826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9568c523e6a84ef7013bcedf72fb3f1c5f6da55ccc835cbaca24595c35202be0
Date: Sat, 06 Jul 2024 18:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720291582
