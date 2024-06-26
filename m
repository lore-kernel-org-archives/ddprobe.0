Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56FD917E911
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 12:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719404603; cv=none; b=HkvBj2OxMGyXTxoPmNCphJ6jjVhyy3MiRspldXq0b7Jo0Xs7cISfnL2Us17IWj+WcohETjOOo9tjD9E7vSqVLtZkDUdhUElu674D6KifAzjRmyj7Qx7U6LV+TP+mpKv8nPQTWOIWt+zvedlnDKKWRgJ2vlDYGQs9/rWUooohEdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719404603; c=relaxed/simple;
	bh=1oMVMhJntQxiQXKCl0oEPnjloGu0efyOpkWVWn8QzqQ=;
	h=To:Subject:From:Message-Id:Date; b=VNH+40EzSMtyzzylNw7ykQLjMhqHGEyHvvck038YrtBuaF+x+VWm0Oop2knNcyh8+YKnfXPMyX41il7uKTGRHM9OZyyhWwCqr1TZAjoLosvpai2GNzeAw6CzenIVKfZ1p+fNtGBV2a96lKIK35Xy6eQLxohcB/jYR9GUwGhdgxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CuNi1Xn6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CuNi1Xn6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D69F4C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 12:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719404602;
	bh=1oMVMhJntQxiQXKCl0oEPnjloGu0efyOpkWVWn8QzqQ=;
	h=To:Subject:From:Date:From;
	b=CuNi1Xn6Mg88oaHd9W9AIBCJpQsRcfsEEw051jefIwSRSWb3wRfp85oK20jC8s2od
	 SVBaZgYDnmXX+PmYf/I96Vlxv0MrfKQblkg1sWD0mKsmuOo14KKP/qtbVLMhoPoRtQ
	 5ko/65m39wAOX3VJbh7pV80GS2pvxwJNaAe4g5aeKsp65CaSI4QXfxFj3tkYshqCTl
	 mAHbnn14mZW1X1KU/TRhUdKtD05fdVBKK7wg6JaRyerNA1Io0l+6OOfL4By6ZpgGXH
	 dnXZUGzC97ajvRDDzciZ20Dt6iF2M7s43acb+dvgfsObdxnluSL2WnH19EhtjXskW4
	 Obg4/IJS+MwFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF440C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 12:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171940460277.31762.12037214899954041293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4b1557dafbf1fbbf19b514a5758fce62ddb5e4f79a7fc6a725cc883fad9ef72
Date: Wed, 26 Jun 2024 12:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719404602
