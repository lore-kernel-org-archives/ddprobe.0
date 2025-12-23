Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 169712F3C22
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766496234; cv=none; b=jrDeNGQR3RQ1VQvIvbhv0UKAf0xReRXafdS9C7guGUGr1CxJdUDRcjUE56Cdjqeb3RCqNHTs6/HnDyoLHJNP7n67jo+gdf0aS4RD+JIMf70wSyZGG2b2C83rxs/tgnzdjLSkmLiARwFmKlhNIqhVNzKJ30iXq8HTHVxUnS2BI2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766496234; c=relaxed/simple;
	bh=Br1phYbVjpD8mmNlQzE+ksKvglPMlLPQXjDZX2Sg4+Y=;
	h=To:Subject:From:Message-Id:Date; b=VXjIfuxI33FYnPJ/iKWf0X8ASjpj4IVdITi4++DzMf+U5wbmXeLbnnKSW4Hu0fuEJaQGVAemyqn1IN/Zckz5O2gxKC4nsFn/dKTFVGiDwda6ouh54O8xVrCyhWRwLWUWQHab1Whzr/aw+kj7M7OscfY2BfpPidUK0Ek/vEGCkM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=moYPC2tf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="moYPC2tf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D62EC113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766496233;
	bh=Br1phYbVjpD8mmNlQzE+ksKvglPMlLPQXjDZX2Sg4+Y=;
	h=To:Subject:From:Date:From;
	b=moYPC2tf38asvcTbfeifizG7QOZB3nxwpZTm0xpIDhLAvvmt6PpQwlUkE9bGo1Ndp
	 UUSVpoqxkVCh9u8KfXm/Kl/HdlTafDTVqlV+3U1JE+fs4ChXK596V89pNu/u5WASDx
	 MY48gx3SUuqNmqjWuS5FCiSr3Rc2W/ZXszTWZMDHYirQJYuJIxHEP6Cjbvd8AEQVkz
	 8RbJSchIZVc0EWiKou/eec4FlSIfLt2o4YBNYldMYiW/I0dAoRI01nB/Htm2ZpaEnf
	 WFMaL0J6uAZZMD1SqvHlP2VIQofmMY2NQ8HsZZaHT84miRkpUg1mBbABnMw+fKg+XC
	 Fop5FdPn4gNpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90351E6F090
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176649623358.31616.16884300363368308363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cb506d9a1329bfe7f48ae39fc4b28a1de2c8efd5f5c28af48bcf63f5bf7d679
Date: Tue, 23 Dec 2025 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766496233
