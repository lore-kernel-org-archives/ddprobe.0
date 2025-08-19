Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B58728504B
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755617395; cv=none; b=ZzsHayYq000ZqsMSH5VjbrbS9+RnDUU+oCZv31sbwgQ5qhBvO54voMDZnvVxs0aVYRPhNrt+BYFbklAejpc6oQFJQgJ64FV/DuzEYyHA2BFSd4Y3emTBIs0GwEjFXG6/I2rvw0d6MOEnBOnLLC4IQq+BWpiR7FBkJGEs29x7EUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755617395; c=relaxed/simple;
	bh=xBIhCt2cl/PevPZlFey5Z39oZq0US6aWyFuDu656etk=;
	h=To:Subject:From:Message-Id:Date; b=kv1T0s8fSMKejl/X7joeWctqItWnqCMf7wOW49fbZS04aqyo5T5iYsIoeWr8pll/oKEWXKo/O+V1yE0kdYThWmmHBuCyBD6KgnCfW3N9me/EugAASe3jU2KU2E9MPf999ifnh6qF90Ix72VYFifsUrhs+yVKSl1lUOi4tBOhRhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dFJ2Z5QO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dFJ2Z5QO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1453C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755617393;
	bh=xBIhCt2cl/PevPZlFey5Z39oZq0US6aWyFuDu656etk=;
	h=To:Subject:From:Date:From;
	b=dFJ2Z5QO2dSUfqoqniPyOrNp2N9fiDnwevVEj9coZz4n5VSzQSCowEH/yxAu3FCyx
	 OIJ0M3t0m9eV5KgjjSk7bNwGjagNKBn2u8rZCEGqqaE4tbc7XPGWlDAfmFSjylnC/a
	 Obfe+hS/xSaR0ErlcJNUMd8A4N7A1smrHdAq+0zXHUH7cHYL0MgFA3yEgXRhyxOWjO
	 AsQQj5TDMKriiH6vrKfI9G71s6EJVkbSka625NFaOq/8/ai+NB17fW3swfB1EAfAZu
	 3D48x08O4qB14qYQJuQPPHqII2vcSJAnPGift4XHmauIb+jYFRMNgviYHyuaLwcOM2
	 6qF/LPWQIFB0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F46ECA0EEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175561739357.865.6300203916262201570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ed40eda228ae3be5f864b74c5730741c0cd57814c911496779942544e37519d
Date: Tue, 19 Aug 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755617393
