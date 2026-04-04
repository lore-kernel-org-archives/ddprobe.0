Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FFD733B97F
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 19:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775329534; cv=none; b=l+gRXeoHBKPfKJxKF3BrCmFfc5vIA2hOBV0g3/jT56zzaan7C+yegMTydxy3LCegl8iiiZB30mjOLUqVK7NnNmX3iKtH+9HO23IHHP6vlKVERpEK+hG8wGwyj5/6bwglcGhz5psMLcGlVxedt6VOklYCLs8Jzl704ZS0GItg9Oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775329534; c=relaxed/simple;
	bh=/Kc/q28cGTagXI4jeFEdOK3/+D4GXD9PpJDR53VqoQQ=;
	h=To:Subject:From:Message-Id:Date; b=IE39c9T2Fk/qngZslzgePoHq6nWfkDlQSYQl40iyeTxpOeBzY4nrRRQ8aM647WacZb/NW0qLWZqdSd9YCBeHdmvZ/HiLs1ldaLijpn6tEdx5wjz4rsOKCueJcsMIlR4Xr/9zDa8po9n4KvhvugyfvlGvYDEsbECP66J33b/aVKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ozIrlhnv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ozIrlhnv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C11B5C19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 19:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775329533;
	bh=/Kc/q28cGTagXI4jeFEdOK3/+D4GXD9PpJDR53VqoQQ=;
	h=To:Subject:From:Date:From;
	b=ozIrlhnvOpHph8g4Wcw53ZOSlyZxcTkCaWZ0yz5P9hH+WPx/jBX08jaf5IypT7h2G
	 X9q7MCsAZcTpLi8fZaBVh9sQn1ZYtRuBSVWT/7JoL0drnzBISeGSjMk0I1II5TpT5i
	 +7HEb+zB+aqYRIO1vQyE6buLSydXw2uKkOv5pcy6TZFBcBT6Z7PK3R8YMDdiCPGiXv
	 74TOE4M2dOsqxC7MKvk2SK+847QQ1v/Lk5kSlY7KKPNbBx3nuFeX4IEY5E/8ZGU51b
	 vaj6xLq0YXvYFjB/BcP0k7EOwCx5L5gMiyq8FRZ6JAbwi8METSfE2VD/L8ddzOK5Ab
	 iZU8ZKOtMGw/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD746E63FF4
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 19:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177532953369.6489.10678528336969828631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2e203ee4471a146718a2795207ca00cbcb747b723cc9961e09e907ed72e48ed
Date: Sat, 04 Apr 2026 19:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775329533
