Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FFA532C8E
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736288154; cv=none; b=Eo05L8RjHZhsuVVVQBpFYjtY/9evJgmOufawYi6z/Ntd14/9tfl/ilBcQMIwXB64pLi6tFFpgQy3GxhtdyyCec4vjVROnSD5xJBkPtJFQ95GstaiDkCdt2WaYO3QD4C9vVCXiHa6ek8G8/Oo8U/5NHT4onQ3Z+NpGKj5Dn+2068=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736288154; c=relaxed/simple;
	bh=a5ZW0ctrSsssNBRz9xhWam+V04qR1DJswOHnyYui1/k=;
	h=To:Subject:From:Message-Id:Date; b=GEH+CO0jrOwDSsa/pBqBht8vkf19d/aCuhwO/DsCO8HIdltnrjbCVEtKeZ+GI5c9qOdjUCUdCB9dOxzaZEKzeDp29zc1pCvMcT2/h8az4jQZ4bb3d60ycy4zfxgmDnsjTdalildQ+8lWpXZaNd0stki3DfiHeLYIpdTOq4GUEbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nejf6F3P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nejf6F3P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F50C4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736288153;
	bh=a5ZW0ctrSsssNBRz9xhWam+V04qR1DJswOHnyYui1/k=;
	h=To:Subject:From:Date:From;
	b=nejf6F3Pfrcucfm53DllXHNUgTJBdE7bmNhBymjkEwf9BHK/TIUkeGUsJ5U2i8DpF
	 /ns7EXEU/FiCHjnpPcLHnoh94B0tzjO58w3L3EbzqbDvJwmQKv5PLZfH7+hor2Ah0i
	 MUxR8WEpyRPVPYGWXvkJOTpo8NE7LGe8iET6i6TyeA2f0kPExWYVddwGhOoBngBEZF
	 GIcoRPzWUEKci2FGB+EV1P5fgdRpQcI24infoZgY+JWH6y7rTWpN5UYa80w07djBk/
	 KW6YI6Ge1CQ7MxI/84cLSSQNs9KBCoanjQYZWrm5CfRObk9w4vNAKKjgWuPdqAQHSA
	 z1mp99jHsnNvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D47E77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173628815359.11408.2513474871718286829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed366349dc099c39705b965db21e6567750d105a049b960f1a538222535c399e
Date: Tue, 07 Jan 2025 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736288153
