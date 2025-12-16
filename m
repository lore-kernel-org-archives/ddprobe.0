Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1C626F29C
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 16:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765901034; cv=none; b=hGyN945wT8Zz7mTNgjiCMoyPz+XnZHjXKhW1KVTbtSoteVQl2s15XwIldKoPX3nm5hEYYqD/ZNbB0TIC3YS1KC6l7wBqHBebexsHYfFBihZiv+4eQvVj9yubcbrVWP1cgauX6BDWaXqfNUjmc9kPbFcGzbP7CPyyUuPYtaDNpB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765901034; c=relaxed/simple;
	bh=4FY/1Qi/YfP7TVL+aOdApoEFxUTkUKXLGya/f3FkGW4=;
	h=To:Subject:From:Message-Id:Date; b=rqRmTKUqE67WXzBaTn/lT7JzwBTCCCXz7WP+yzpv3XPV6wCc70VllN3hoWul5QUUmESjjycvPGiNbkR3co30W1D80vRXaKOnt4XCBtNVkazuUlNUcdmNfE1UIu/Er/IgYlcfHRcTMuzVeIg1ZWinge48zxRIn+dmc5IBY57VAHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KYYhG5D6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KYYhG5D6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1864C113D0
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765901033;
	bh=4FY/1Qi/YfP7TVL+aOdApoEFxUTkUKXLGya/f3FkGW4=;
	h=To:Subject:From:Date:From;
	b=KYYhG5D6sOVekdW5tS12x2eFWGRY7g1z29ruczDi9dx8I8Qun9ie1EdjLuRsrJhgH
	 UE3pHt6EM+svdbBCJHSBEZt7vX6zXUiGXeiyxIGpOlYh8JXrU/1hkvT1DPrG3JRjpZ
	 GIJMv5NSYyyjMCs9b8PNuLZ0n0HB2kt9sQMmXQlccaUWVmlmZPWZPOyDjtnj75fN65
	 W/8xJhtZXlqj9HOaXO9XmJyrSiD9NRD9KVc5UPnYpg6cWX0FsQF0A659YUPBVLiqwC
	 eM/K1diN3slvhALJIx+hYMoxtbpBjHYEbV8syJEi5FDEb73iUw/BrYWaAt+S2uGNxR
	 aKXSDtxNy7USQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9958ED609B6
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176590103360.15035.18009072945927682423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04b02241877461a05a23738e1370ac89d989149ffdbd979295d59c3170c0823e
Date: Tue, 16 Dec 2025 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765901033
