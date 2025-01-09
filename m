Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D47DA77102
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736456753; cv=none; b=YepJ4vtzsi3dZ2kH48qfBhtWI+zqksXK/8FnBmrl9SO1r7aVYn7INW6chCazYkhXQzbtnZzLx7SpK/nXMOtQsmoFtN2wSaMiF22YXKkNnvQquC+IoIij/iBsJ/D+g+i3KN4t1HRTMib8I7zlfMYabTs/hIAnoEClAWYXHCuT4PY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736456753; c=relaxed/simple;
	bh=d7tyRY2nyc2573ofz08rgVZBDcDiwDIoiZEnIIjjj30=;
	h=To:Subject:From:Message-Id:Date; b=KxyMyIlPjKBrdgqbNGz2hp9xDGnE9qWUdXaIikpBxm44poSkD2+YaYk5C5561vgU5dQylJE/DMDFE6xY6FX00rUU0jYsyFXw+YneF1LpcY/ikVLE/f9EGq7RM44gackfuh9zfZaKiCO+N2GfTM29pQcbqJFOW3ywiJOGDnVT7mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tTSWd1bP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tTSWd1bP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB210C4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736456753;
	bh=d7tyRY2nyc2573ofz08rgVZBDcDiwDIoiZEnIIjjj30=;
	h=To:Subject:From:Date:From;
	b=tTSWd1bPfRuh4Aol+hJO7FCtBTvCO0yDR7Hksr1q7Qp/Kq9JjllT+j4LzkiL5wngV
	 HOT7Wvj511FrxIf949jkcBx274RSyAMtrgIdPFSu9n4B3N5KTvLC/QegswXWEXks0I
	 5vIF8yOSwJbY33cwqS2pPoqCUZ7/H5JhF+kWX9/gkI1J/Jp9/v8+T34LEwgYHdsA4u
	 jX3CXqsRxSyAdpqby4ToSTsVlnJpbQtLcO/g+VqgsuJNWOvPyiIuGknti1E9GTEe99
	 xaBxc3FdusTjj8scK/AwF1h0wvaxIjO6Yyd6uLmrO2gGpNsX9V7DTHnea+LpMA27rN
	 koEQL+wUYSy7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95242E77199
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173645675359.8287.10909678155909415983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56bfdcfe4a02fd3485538959db45fbb6e849bc088f9d10f4559c429774d3a632
Date: Thu, 09 Jan 2025 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736456753
