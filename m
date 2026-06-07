Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2858C283FDD
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 18:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780856674; cv=none; b=Hqn+uL/E4ZTEuvRgTsZNDbQt4IyaCNbKvokfunN2BpoJTELwgm5X23W9Z0Wl1QZZebcIbzgLP/uqPUlD56L4oBVj10DcitRRn4BkF7b2ikz8L9SfhHTXhk9NLaOx3pZTIM72njKkCDR739YIPwD0TjUjXaCSfrU/+OOCCFWRMfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780856674; c=relaxed/simple;
	bh=sjvjwkR2yUpqAB30t2q9xqIchMsNGZmDj/pXcm9aO/g=;
	h=To:Subject:From:Message-Id:Date; b=ldNY2v9HeXt2rbSMDMM3t50J4i5tNWMZEdumt7eWkrRsSgxg7cr1gyDFAj8VYH0YfWb7CjN+WU+sH+kTc4quvqurM0zgR09VhnEN8sEQSU6PnnZjrM8fCFpa7FOKWbhSKb7oEph1T1JvzmSaL6yvHtVijZAoKERbVZ0PaqyZIII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hod43Sv3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hod43Sv3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8907C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 18:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780856673;
	bh=sjvjwkR2yUpqAB30t2q9xqIchMsNGZmDj/pXcm9aO/g=;
	h=To:Subject:From:Date:From;
	b=hod43Sv3tmwxoQyDiu9Sqtwjeym5w3P2dbItYHYSEJQ22iTb31a1xeZBxdJuq43En
	 24336+67ILSW2BGf8wSFayIt/Zn5Mfw45/okP8613PbbDOu3Y6JlN2Wlfv6FMLlvEF
	 Vq7fN9b3iCIFnLcXIrVohUe3FwdRg6y2/waOWZH+dQgA1lJxarmnmvQ0oXy9GTlTpr
	 or0x8HK4LMiN8QqeLZKA3JvM3O0qWp0awL4smyoV5DlLVm4KUdz6FCDD/mwJiyELEa
	 z/U+yqxGkyh0q4nEphxNf8eaMy1Cr0fp/yhPcimAGeM6A2uVVc/w8MEv/WoFI01FRp
	 9dPLZla4LgbGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA962CD8C8C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 18:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178085667369.11223.15818854964619261702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0e3115fe2cf7a5458ea2a529570b56029c3c0a92a1ecb0e650127ef28836dae
Date: Sun, 07 Jun 2026 18:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780856673
