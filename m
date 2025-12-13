Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F27713D891
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 13:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765632174; cv=none; b=eFl4Ez0T21saUcM/HKCHN+Fs01olXt/pKxpLE5CjxzQ97JkR7Az8VRCrupfkg/o/YQxWqfm/DLHgsIQI7WqgkHuVgh+S6kTr7XJQjBJY4g5RtReKNC1wm0Y7vJRCVhKc/0EEa4D9jd096RPvQISJ8w6+XZ/RG/mEenQlE8IhPvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765632174; c=relaxed/simple;
	bh=w10juplzd1SeXGkQ9A5XcOcxpGWU33t9iA+UYhdny5Q=;
	h=To:Subject:From:Message-Id:Date; b=I3Yg72VE6ntjINjI8gEz74wqHEspRty/AjzhXJTblt1w9h5m8Gx+Tt7r7mTzLfrV9HSkLVYzq/zYVKeRT+zoQdJT4YsZE16Nxgjwo3jhNxhB1a1QsIBf5gj3neX9KjLXxPOezFZzXxy1jQr6nihpb7Lgte6CG//j7qrGiOD/ggg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WnBMmgx3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WnBMmgx3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7BFC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 13:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765632173;
	bh=w10juplzd1SeXGkQ9A5XcOcxpGWU33t9iA+UYhdny5Q=;
	h=To:Subject:From:Date:From;
	b=WnBMmgx3vpc2+m+F7Rt7LbqTLdthTBd+Tc7KlUoWGXeDLZmM4Il02OuPp7CuW+G0R
	 o7O3wefoVGynKGiKSMj4QB3myZd12116ceezeRCfW0bD2KCTiBTqLnkUVK7NazFUHC
	 lkq11hvS33eEzqEpOU8QYlFccfGciL+9XzbWR4ggxYKVJgVkWnYPOdPJvunoGHJKGr
	 pkcII/pd70xxb+4B25ZObVB8Vn5QYfrxz6e75bgVLtEIhWGIMucUWJ2HkcQkHvXWDd
	 TOysXa/HxAwJLTRRYaEFMHlsJktYqSab5H0dFSAg0nMbk4ekS04Yn7VbnFX6BvavfE
	 tni0IB1xTKzZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF71D5B154
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 13:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176563217358.15409.15285232977303084036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acf53bcf8960ffb7e897349f7b9a7243f364f76dab9c7206827472f7ab86bc42
Date: Sat, 13 Dec 2025 13:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765632173
