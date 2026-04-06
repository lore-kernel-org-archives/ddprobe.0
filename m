Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337A538F251
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 17:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775496334; cv=none; b=Wv5W9dx3HVWtWPM/n9P2LA6+xV9A2VuDsAqPEHrPpfNoA6OvhdAP4iJhSpqbR7DLkWisUSEsxNFRfQkMFXSTk6yJbIN0QTnivJq1KKUvGnIR7PR1EANnBvMGRu8hxwSJ+kQIBdAgP5AvMIa+wLWlyzaSiRRtkD+bTvcNNVGL1Ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775496334; c=relaxed/simple;
	bh=+DWZikktXw5i6UoH9viVCEK2B6BWqGj1RVgeOuiAztA=;
	h=To:Subject:From:Message-Id:Date; b=Fffy1+OBcZCpgCqIZk82x9F+9YV9QX1iFiwrWkTJTlOVZ1xeXa/P3I58uVzJAmsd9Z6dCZNxs1zArF8/8DtES8SCsW6uhw686IFO85utvlvqKkrUOytp8wIuaEkmu8pwLib0zIxQfDYNUmkwWLEP0BIXtBTSgAujfYJGxUf3msY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=itQrtJ9J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="itQrtJ9J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2595C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 17:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775496333;
	bh=+DWZikktXw5i6UoH9viVCEK2B6BWqGj1RVgeOuiAztA=;
	h=To:Subject:From:Date:From;
	b=itQrtJ9JD6+2W+zg3FqjXtM7kQatUXFfYrWQ4Y8pVUqvfTLqaDoIowuKLTagVz1QK
	 4ZHnrRhLZyXI/cRM2IkFlYU3uRrBAB3j78Q7tYR6WWy2c1aVCoKjmf0hlQzk/y9zd+
	 M8E0XENZcGG/qJMRCYAKUw1AeDdraIVPFAyckNGmFRHCfY64Xt/B53pTaK147mw++i
	 PI2rKtqwPd/KK48vdDGB0bRypDxbVEplM44NZu65ro0g0cIz8mxMtxxg0ExYWEFLwq
	 XZtoQmH/q7e0tkGuiZU+gI8gFR89PoJhMHbRS9m43KF7HQxg6W/b06EdbT2M1wh85v
	 LTa1ShNZeXCAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3F9F46C62
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 17:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177549633369.11806.15182624180396446581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f1470a44b8404ddcec556db1248ab9f2c0077dab6f46ea137ab8401d9e07fe4
Date: Mon, 06 Apr 2026 17:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775496333
