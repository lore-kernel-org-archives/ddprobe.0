Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB1BC5C8B
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 11:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709983696; cv=none; b=Ei48VUChzHNetkzvjc86RnPJ/TO4bOY87MibL5dpZIrV5TAWHWnLC0pl7bRT3EFo3kAici/wyvjYrRdmY5rH0O6a5eRhkX9KkNJ+Uu5vYv2NB0oZpJxEyeRY6vYkSLUBzjs4ONNGouulTxAFneTU2njfnYfoXXRZiXC0/q3ykno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709983696; c=relaxed/simple;
	bh=RMyQyuLBRRh5GBhAe8B9N7868Xvs2a+MiWfTLNLDGz4=;
	h=To:Subject:From:Message-Id:Date; b=MfU8+Oixn5jNlt+BFly4h6ZbU6RclGqrv2Hffs+lAPUDdkkRmgbQuGg9oE32Inas3jjq7YKyZHyeHVGeN59Canzz20DOiIIsH3f02N+1SDog45cs08B2njhRS4nO1jza9n+EqRm7xTYhNownL2wKIcUXXUXLBzVfOE6Xs2FQvTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KFsf4CeZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KFsf4CeZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E49CC433F1
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 11:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709983696;
	bh=RMyQyuLBRRh5GBhAe8B9N7868Xvs2a+MiWfTLNLDGz4=;
	h=To:Subject:From:Date:From;
	b=KFsf4CeZuOEQYuOZuUVdNZph9hqjP40TZoLOHy6qGnI0/sn6rN8lsq5zKAhVa0ICE
	 Z66eo9gBJowzXkbLWVmguTc6vaQ0cWRvNnROUXypak3QoZBmal5ISK2lLEE8r/oYAK
	 858zW9svXRElPizk7bGpGOQInPYEJW6Sf6VNCUAt1ZyzoHv0RnOZkO0qRhnPgaqyVB
	 SO84PqZTX6fpGHOs4/lUeC5tjgvXojTdlXvWYMRdkoAJOJfqTl3MaMyadniuvTorxk
	 qRaHsWYvieguuLOaN5GL7v+2wuR7V0qUYV4OvZF0W7LcQhIhQ+n70oBQEA3kzr1WL+
	 KlWfDMB077gew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63983C54798
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 11:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170998369637.5432.11064892614252507699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abc98e59c85ddb3601d54cb31a1f49232cea45e51abb4b02f0429acbfa6b61af
Date: Sat, 09 Mar 2024 11:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709983696
