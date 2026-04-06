Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C361367
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 03:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775446534; cv=none; b=dK+RNleF/qdApjzt6LKFMhrmgT530PNNQGvSlsVGSYS30k8VRGKnwROVGfvz9Vlj9lr5qsxgQhIGX74feho2Pbd3cJ61EWE+VdEGx74VTxiK6uNk6KfZFzjaAsY2VIKUzAcoTJ9vOhYe+z+h+Bp+Izx3K6aA/NoUGPc/5CBaixw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775446534; c=relaxed/simple;
	bh=99kgMi3VfVbhOkTtJV3unB5lsfF4QkpZU6oTZoD/8+k=;
	h=To:Subject:From:Message-Id:Date; b=rNjVfq8eqWvWlDPIfIJu4JEeBEuw/Mx4pIrYJ7Jr6o4Sh7Zr3WcQwXooVhUgorIoZQptl7iKn8zr1zkPMLwriXaCXjop9NuEdPmPtUEIpSiblhR9rJMN3NKg0FoLDW9zRFiFcNzGHvUMxYB3S+qZ0UXHvBwPfEEkaxe1vUIuXPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p8A9JyoY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p8A9JyoY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0606C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 03:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775446533;
	bh=99kgMi3VfVbhOkTtJV3unB5lsfF4QkpZU6oTZoD/8+k=;
	h=To:Subject:From:Date:From;
	b=p8A9JyoYeKZxzzDXOt2/Iuk1axtqPtG6DOI5Xdi3LBu3QAgey+4r40EsTa2d01gbi
	 Lo1sM21zYc+048Nkjb05xmpy5xo7+YN1wkpf8do3LkGjZyII9d4Pqbf+1HA0Lr3PLd
	 rKDG1Py0w/WhCVFT14CNLgP+OyQRwXUSW4SrH9ydGujKxFyRiUGPi4HrwcHGa22yFD
	 vQCXOptX02QNbyt78NqChhj90Aus9QNtsxoQKVKr1l38OPvYh+KhzraZAsFKDUB7Ia
	 kRm/PRtzDUwRIzNVeXrHFfqPTxtGpYc3y0YjloFSqE6MHrJ2JG8LfzjjNDgO416/yS
	 FhxqTRm9mBREg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD52EE9D82F
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 03:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177544653368.969.15475237584995527042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e93508e28bf19955d4b59b3b5621e725c3d25f334bdf7020f84f484c7997582
Date: Mon, 06 Apr 2026 03:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775446533
