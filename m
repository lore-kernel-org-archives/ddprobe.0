Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10DEA7405A
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724274354; cv=none; b=WCrLcafrycUbYTEvfrmqmwy+WGwQm6w58emWWtpDkN1IBra3WTxxt0ZXq/n6JO8hUJNMo7SdX3TW8WgVHevOFSSQcDxqbM4iIO0biBE5SlI2iDj+IcpHSdyGVKCX+AMKbYgA7/479l9r9AoHBjL1oMzA6rHR8y2NmyQ4q0LQcpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724274354; c=relaxed/simple;
	bh=I84C9eJ7JzC/HMxnXN/+slASAXU46e9gERsrpU410nE=;
	h=To:Subject:From:Message-Id:Date; b=QdtCrrIrsQm3PwVh1KkrEu4qkpO0b6cjuVPk6nWs93CXrQYQ7AdL5+ipR+KjnasLE/bhYS5Je9YY7KdfQfzLjuz7hsdPA67nbk3BJWhiQVK7bSJewMrFn4JUPAWPNKP35DTUvipdyVGezTuAy2EIboJG6JMqTjOASxTcF39PlOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CMETNw3e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CMETNw3e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9566C32781
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724274353;
	bh=I84C9eJ7JzC/HMxnXN/+slASAXU46e9gERsrpU410nE=;
	h=To:Subject:From:Date:From;
	b=CMETNw3e9PQTa2iz9XQHN7Te1Ofdc/jx1dWzXz/3U8Nc3Jn0ExwNafTEMahZ8YR6O
	 zvdfeOJX76Lou13ncUKano1tpnGoVJyZz7jUAiq4nrJDOc0c0uXUxDigvj5z9a1GUW
	 ftOQ7SuUGy7wNZMbVODeofBtwycRxYy7EraeYTjU0gpN1S/YF9Was/Yi+e7Dqeeoxa
	 B876zq2NDcn7qApYdRQT8ypVtg8LvW7qAV5Fes7UzwxdZhpMTHzmPs8YwBjn6DlZXe
	 /yy5/pJ/5pHaqnNveScJ7LECymrtZtcPBkAHvnnUzmQvdFZf/OxJ62cC89r1jlFaG/
	 ci6ElR+++NNIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD31C52D6F
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172427435358.31895.1471247616905819400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abd6e5445c7fe8868530a3082750276bb194f2066f92003c78b5b6f391cdb9ef
Date: Wed, 21 Aug 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724274353
