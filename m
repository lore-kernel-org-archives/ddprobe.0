Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F38993C38
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762395594; cv=none; b=kXTBXrxTlxKrN01wxFPzSoLwqgCckyf5mOTOYs5pXsxGtKQTxUkHONAm0I73V90eZD59/B7b4TWYNgi3oYeMFV81m6xGyvL7aHru2k8hfV7G+I4YJNts20FymbGFkrLWtwDrcssY4HgQY41mXOJBhGtQbeC/pYjRdhb9YcC5tvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762395594; c=relaxed/simple;
	bh=vh2CkZxytaRRuebNDNtprfTmMyXKUGLTQWZR1UicvOs=;
	h=To:Subject:From:Message-Id:Date; b=h5VDWOjGAv5Dc02MajzvRyMHjwi9S4YPKKuu4MaGlc2CRGVt0KdOFdOVlzlmM95d2QxLcGo8bYO+kaUYX0hZM1hm+VDZkLhuGlPyEcfeBdMmGIdMCY5UhddEvhSypV2gWZNbODLcKKU83dmaEigd7j82k5GXc09M93GQr1ywgUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sWzQi1Q5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sWzQi1Q5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18EDC116D0
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762395593;
	bh=vh2CkZxytaRRuebNDNtprfTmMyXKUGLTQWZR1UicvOs=;
	h=To:Subject:From:Date:From;
	b=sWzQi1Q5tNUTXtNCFuj/gYxRzYP2TxfnHT77H/dsjIEpBg1TiM4mxgHz7Yb7sn27p
	 cRee+zIZ9fTXXOcNONd1xFOxSki+CdlHD2ylwzwt9fQ2sofUc94DfeB6r00YXbuNzI
	 ymnicWMGtXdxSo7td971ZlKYe+LAKaWxp19lXBQ5Wq+N7NYBfvuiWEQYaxcodTRD8S
	 KHQUGCkcKCvkNcqnKAra2B8GSmDtxWUeCxqw6FvQNH8W2SVUiWGPJDZ6nbsXWk96+u
	 61TZW9yiRANdo8L1vUdrN8CzyCPk6S55f/XkqkW6ob3GC0gLdlnOuhdHXFfs/77iRk
	 0oFgNx3VtKmuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93360CCF9F8
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176239559359.13820.2405251367212072000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e92a0e7aa3e34536ce18a12ba9df65c1f2d79dadbef8f19e2b9902c672d986c2
Date: Thu, 06 Nov 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762395593
