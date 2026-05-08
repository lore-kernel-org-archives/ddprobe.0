Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3162BCA45
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 18:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778265454; cv=none; b=mqf4foF5eGWOeGsJrAnqg8SeibFn3skX/Xx71AFoFw0KT+OhkSMDffr+Q/U3eO94NcA/1vYZlbgQX3/WkqV5b4N8B2tUdIyVShzOoT74SHHDCEet5g2lJlchq7fN4MQ4I2jQxIVzAJWqgL9F1FJirJORIMjj7gcs0zpPK8Q/Czc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778265454; c=relaxed/simple;
	bh=eCWXQx9AaUf88MAG4GI846uv1t2F60XBHkD7ufHOQyI=;
	h=To:Subject:From:Message-Id:Date; b=tPDAjAHEL2Y1SEa/J9qfHPEjYxNdwzwCt5ASZYnOm5bWRyJg3AnKCjv9BQRRZoBYM+UA+3uu83iRuUvAksWoLSz8rI8ynIIjp2V9QUPg+DIkKqFUbN94NyazK7k4nNc9q1QxuY6WHF26YbZPAJbxmp1OV4y64stJh4GdhphD+4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mzYRWioS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mzYRWioS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAAB6C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 18:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778265453;
	bh=eCWXQx9AaUf88MAG4GI846uv1t2F60XBHkD7ufHOQyI=;
	h=To:Subject:From:Date:From;
	b=mzYRWioSwu2qfiydPcWvdga0zXuFhr0/pXt2WQ4o7fILy7jHDi6K1bQpn5b5AlkVQ
	 iUwrnHD+++y6nAgKLBaUWQZKcD7BHgrAHvmrUNIchrMZrHxn2nn4MBQjNFYNrUekgP
	 MX6h9koa3pe1FNMaQGtSmyUwUNdjxQmgo+Azkfhl0zgdWdAgLqaK4XrEmPQ4tG1/xf
	 ceLWo689n5Ffkt+7AHuKEULZKyxmHXV5AJq9iiwenFVHk3SbJfVETqeOK5ZFLhPHbV
	 UuAyRqjMKTX0nekCh8j12XDBBjPkvDFIYneXAZEzDJPrnDgaz7bBUAElayI4ejDu+P
	 9+2KnSmOBQ9ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEF3CD342F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 18:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177826545369.2707.8497064977639753850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b1fc51579c6d9fa1b7f6aa256110913b614034c329a1c49a82d53b374f02be2
Date: Fri, 08 May 2026 18:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778265453
