Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D77333B6CB
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 21:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772833494; cv=none; b=pkbH2D0ICkUKYZBPhiRRb48Qc94iVVx5ZpWyrB0Ty4Pv4CqHobWbtODvYM3GunQu3pUSOSeRiuz0WTr6Qaq9wMEo5hekvIrBP/jSNwqO3HRauNxSJgRpST5ryn0bjDUoPzZ6ojSlf1VROF4z+5FJZEoKBY8je2Y7sl06W1aAFig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772833494; c=relaxed/simple;
	bh=giwkxXN1w+eAnUXr/sdHrapSUnCe9Q0XfwQYhVEMlFU=;
	h=To:Subject:From:Message-Id:Date; b=hViuUjOU32qD4yKRk1yVE5NdRiPDeC96k9QBntGwYea7nMo0s+cuAM6okuyrZhDo2cyhN+XrCMIwLiOVJNbqXG6/IPg8E8GU5KHWxBBxj2P8wUW+P5PAixkZkqgrzX9IPop0mssun6FDs4oB1jtE9Cd9IMKllDwcRU5xM5HPaF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L82VqBNq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L82VqBNq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74E7C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 21:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772833493;
	bh=giwkxXN1w+eAnUXr/sdHrapSUnCe9Q0XfwQYhVEMlFU=;
	h=To:Subject:From:Date:From;
	b=L82VqBNqed4b/7ILjZzOOspj+X9lTIp/bzrKIPcJc1oQCMP4oFplxgEHhz7vEj6Pd
	 Cmu+/BmU1070x2n34dGJl03KMO/Know3aV/E+XukKNti/+BpshMkqm9jBYs/ydcwuX
	 E0tkCS7nqex7pCY4xRs42a7xfwHxmXMJrUhAJDlGXvTRekwT+61L6zzeLC/9O33rbc
	 q/EqK2PacZz27cwdb9wTSm0/Uoey4VgMg57c9AAcU/KJAnFZtZXFGeLxTr51L3wlK1
	 rFJJmf7Nhcu/Iym9DHXoz1AhyS5P8vD6JIkZmWi3iobkP2WZRCkxxjSIxfMSJXts9M
	 SevAI7cXm17/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B59F33A92
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 21:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177283349358.9265.3023555366754287176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bc89bdde0a45a28eeb5a39875db7ab436e670c7742287ffdcf7942981afe3c7
Date: Fri, 06 Mar 2026 21:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772833493
