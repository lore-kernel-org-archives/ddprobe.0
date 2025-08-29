Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246B372618
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756446594; cv=none; b=mW8L8rgk28XncFVfSgyqhT/CUS/k70vkHqYnA+m3Yz/fMJsM1IYYflbV+1mok4fj6iSsWPqjKY8C/rq9wsjz+rWZga/RU+lTTWlZORliY6ifoyPd4Z5YF+n67kC4jINt1ChJLqSKsE6oCaaiX9hEkMHE8dqZsMMndxED0iitYc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756446594; c=relaxed/simple;
	bh=ZExYBQhjwGFND32hc+RUEGx4JsniRm5YgYLiKS+MF1w=;
	h=To:Subject:From:Message-Id:Date; b=s6xP/Jzt44DYtmDzqbGuJguEs3LUdY+G6RywIo0pyksHd2XOVUD4zsY+PKMFe9+sWnIro+vRDDDpvwW7CcxtRMU5RRZp/L+SeYdRqSjt0PS9f8fbGarD65S79mKkc5Ale+tO49E2bg+MZUXXCBMnKaH07Vn4nsZS0E6k7r79mEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u0fVyzD/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u0fVyzD/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1740C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756446593;
	bh=ZExYBQhjwGFND32hc+RUEGx4JsniRm5YgYLiKS+MF1w=;
	h=To:Subject:From:Date:From;
	b=u0fVyzD/HhwPVK6xeaDkfYXq6MxucKut+302OK+SxmfLtW87+pNUsAQ7lgZHbRrtP
	 kyTFFAph59L8wkShuFo1N+TnYVKQkpA2qWrYP0DX6CR0vS+anSvUIw4XIi7UPePdxb
	 Ch148IptfeuiIW5KhCWj9zFug/L+4Q+/igdAL8rIlIIBGwRK52njFQ4G14LTAgMTOy
	 gORjJhVwhzzESYWChuAi2oPBKu0af/tG75dd70Mi5FduWIPwK+BWzvHNNLD2M5+8fC
	 Iy0xSB6cfnMzLL/dyB9E7oIL7HS9pZLtwXgliSrBiddB6lmBR84P9XmmKJLja5cDnV
	 PPQbjGNIlfQ/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F268CA0EED
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175644659357.7426.5377093277532126108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 509d84a936e9218ae6881393d1f5a720cef2964eb83d4554f8c6c08b75ee6f7c
Date: Fri, 29 Aug 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756446593
