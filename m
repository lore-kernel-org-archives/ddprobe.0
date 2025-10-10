Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AED31C5D44
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760123394; cv=none; b=A8w16jE4/ENtQM2WWQ16bkPH8fGyxfhbktEzfOysr93S5F6r6nGLpC2cTavAuLCm7PZnrdjV/IzwmMGjGbnZM0LfY5+/eNdyRR9vEC8F7sb+NRaK3iTbCuV7IzeUbrpZWWhB0ASvKgLxM1mqY/d7iaOZKrCCMEeGk1+VSDw54CE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760123394; c=relaxed/simple;
	bh=0z6ft5FFfYSNv1grAPQqNYRPq4hU/+nArnwNKWn6Zb0=;
	h=To:Subject:From:Message-Id:Date; b=Fl/DL0khLyULhrNYqBk6lCQ2Ka9hqivt8dWa3VQVKzKbTmviApNeRPjehVRcLvaOO7jPy5Lthbmje1xqgdZi1D6HoNLqU1h+/Tsd9eKMI48IlDL81LvxcY5LroeYrkQtJvCHepHKnElJFE6DxMnvL1nH/bF4XGINrKZtrzjzeHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DhWEfwn7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DhWEfwn7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EDBC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760123393;
	bh=0z6ft5FFfYSNv1grAPQqNYRPq4hU/+nArnwNKWn6Zb0=;
	h=To:Subject:From:Date:From;
	b=DhWEfwn7FA+k/1HgdzNIzXlrAPxiFDQo9zJcGIGHUStMyR4JA/Rl6GI015KhtnBPU
	 5uBRvCc7y/2+HNdmmPaD9nH6DWkU/hdDC1R8wxs3o9We7Z1J2vuWWH8B5v4Kx2aCGX
	 3VMKPwJ7NXmh5tP0IGOl1ChcPzHIB5y+1Rul5vLb6bxzVNiZQrnOs9CvLTJhq8+Sf3
	 Yt2qjc+ut/QvHfPvdwtwlnph6WFzr0b6YFHUJOlzFwk3TPEAv4K/YnaCLY7M9PmPPS
	 Kitt0rVyd6JRDyGhbai9dW3rr4BRMIe5leODtiyuEP5SQc3+7B6wrQXsxIY6sfxf6Y
	 rLlKfL+XJq5iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962E7CCA476
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176012339360.29061.804850475716272675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8c5487a0fddf308b09475fb5cf25b7756164a3f136002aade27a53c990ce875
Date: Fri, 10 Oct 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760123393
