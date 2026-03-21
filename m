Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D93920D4E9
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 03:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774063494; cv=none; b=QSqClHgVxVqEXgPlCQebGTzoVv/hiTPGUZs2BtfaEPrF7SVU5HlMKUoIdulO0wSaBA5yGjZSQ9XPqBCneQyfcS+s45jJY5BQdJMaqdjHRgf9lcJuGg+vsJ6MPONxKANovOJ4dmWs4lYH+m5YsfYgu9PXrghemIx0xLLp2ivtdIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774063494; c=relaxed/simple;
	bh=TlEOdh9+6wlL3IVOkEMEf8QopArPlaDL4mfPalRTDJU=;
	h=To:Subject:From:Message-Id:Date; b=T6OVmvj4M3cDCJR0rdgKy5ZiH/UQjDkv+vhH4IlNjHfEEX0nrKm/QosZYKeijHIHiikl7xiIdZpij7hZB3UqXTZoM+QZ/gYn2ezeftM4LmLa/R/8zaF0XlUKsndFR8nCLdKHdadbzKsHdWzVMHNKV1GyRloEIcUL8Cb0B4qiB44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LHH8uVfO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LHH8uVfO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E4AC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 03:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774063493;
	bh=TlEOdh9+6wlL3IVOkEMEf8QopArPlaDL4mfPalRTDJU=;
	h=To:Subject:From:Date:From;
	b=LHH8uVfO/blQfKkQZ34zrySHRCSdEDqmSWeH6rojw6mXIb4zzyI9kGUVhJZKglwbt
	 aNWvGgILGlso1+YQBPfYJ+YzdVsg7Ph3F1ob9UgtadTLN8ok/Vz12CrRLy8Ndp+bPS
	 i7vGrIu7Q5CrRKOy+F/KkDTw/YcNJoBYvtif/UCG3cqdW7N4xflxnSmSc65vtKD5ZJ
	 LrLHZnJgTNXCGDzy3iNj/Vs5CqcBR1Q/ut4cHNrOZC4T3461IGpOM1IN7hsquC3XEV
	 W293GoHW7SyQ/26NvGXGyoSXoH8bWYRD8lN4szI2nqGKNOAFLyq6zYpK2gPlzt7kgk
	 Qf57+xQuXTh5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943E1108B8FF
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 03:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177406349357.31463.2442199952596635731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bec57cc2df2bd09fc83062d8803fc2a1fda214cc0c19abfcc7c529217ffd79b
Date: Sat, 21 Mar 2026 03:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774063493
