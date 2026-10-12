Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5457C4CC269
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791834034; cv=none; b=nuWRnE09hw9YwWnZ8EjPImwu3sZxtFVN7nuyC6W6oIUuBMmXIMz/UpI+rlfv13LB3eT4zibSDxXVTX+tqYlGED4Q4W1y4XnZtU+5C0PsixnTGS41asIoW4P5N+e77KsQwUkZzkKiwe6P3X0abz2nbMlcP1zU9EF89ZVYZsYPpqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791834034; c=relaxed/simple;
	bh=sWn3a/9t62SKU0gcpH6HLsLTnBS/IumRcpfh5jYlvzM=;
	h=To:Subject:From:Message-Id:Date; b=EhEAWlXuluWgpRjhgLWUAnTA9SeG0p82PTEGRfw9g1mRdzVgC2U2wWhD53sF20ojaBvUu45mXNUjoiamVJnIbELwhtrG8pHKfND96dm5aBEcym4sdmTUQYhOhD8Hw6A2edpltEh8M1VBEQtw/6rYKhs311ZQP0LVYcde8QViRWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZLEieijD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZLEieijD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD83CC2BCFC
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791834033;
	bh=sWn3a/9t62SKU0gcpH6HLsLTnBS/IumRcpfh5jYlvzM=;
	h=To:Subject:From:Date:From;
	b=ZLEieijDxCTSn7BU12IhL644m+oDyNSywIu3NMA/bMnC6+Z5NbN0hbnUW9836GIpj
	 lQVha+pLrj8H0WsqhUPAUhEWsgtooZVPmdZ8E4ck6t8i7wBHHf9JzKvb9uBcYGgOxd
	 xYO40VKoVXOIjr1Uby7/SLryYGXevgs6+593UxNYvQ5CAWCp+ilTvOvyjHH7CyLLzD
	 uQ2QCrUue20yy3JPaUs8xIwqblpOkxph15je0KW7yVLe8SLWRAVZprDkJs7nd8BKQF
	 8Q+dLVnLBlA3q4OkzeAHMwOS9f4Pv/G4ozbMSkAxAL92kzI8T0hl2pqG8IKggYEN7i
	 hE2Cb/j6dMKNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB30CA9ED0
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179183403369.11093.11472210980144276288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 152a564dadc5bee531707f455f1ba99adc3e848c21e8614ae77494bd4b6f7e15
Date: Mon, 12 Oct 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791834033
