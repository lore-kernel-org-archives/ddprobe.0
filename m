Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214011A3029
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 02:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775354734; cv=none; b=AInMl3QooLYnlDvaUC8PPrEQiXJNCfXKPIpsw36TE+25cZXeG5b0ipZn8CFmMLn4ffe0RPn59RcH2G4qXCujhN+56BcnmnpShq3hRAQrU+hdQimCJdW3DFxh3BvZojTQoIFQ9mxsag0JmGMJn4dw9+3OwIbyLP9+ikqjqKJ9j44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775354734; c=relaxed/simple;
	bh=LlL92FfmMKHgpLJj+rl6WKEAmNMg+y4U+0lB/G3tJo4=;
	h=To:Subject:From:Message-Id:Date; b=U3jkKT/pLZW/Tl/H0M+/jkP7jksBG5GaUQNcrKI6BncyXHrqJuaqJwSW2llLrUwtjAlqGu5jH8fqO61Z99fKKY02oDXwlxPmStfc8BN4iNvJJ91dmSVs0W1QD0Kr+CCIzkDk5zAGJackIf9eDFOt/dWy2H0wLARd2aZMFOexfqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hrvEMHVJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hrvEMHVJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C39B9C19421
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 02:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775354733;
	bh=LlL92FfmMKHgpLJj+rl6WKEAmNMg+y4U+0lB/G3tJo4=;
	h=To:Subject:From:Date:From;
	b=hrvEMHVJ4ZCKTQAMVW5dbXff7Rgi4Kp6QPwXKHeo3cZExxIX+OwAvLkrMtPaJSydA
	 mtN643ykIzQ2DWJl9RuaKR9CUmr3vujKcC627FdElwNsJWt4CtA+9V3lB03ZruEp2J
	 cuuBTRhre27kJQ+5ddebNZv5TtOzGyu96uz8QP6TTfyO0/NO8WpixxVlzez6hDpDIG
	 YL2GcKUf/KwLmfAfVSdLp/sgt1IXIxLqxtrMXwzt/BhoIbxpLkTljGOGYcYn33rqh4
	 mwyMZaxhFXWbydg9t1MyNk7VzDYyqSApcoKG+EZkjd0ZUEoAeKXnb7xzMf2gaRoXj8
	 U4r11oezDx96g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD7EE63FF9
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 02:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177535473368.21182.12403226757291363203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dc9aa9781b46ea19e3309e3412bdd3320d49491d69aa611f609e9a8fb74dab4
Date: Sun, 05 Apr 2026 02:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775354733
