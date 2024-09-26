Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE5F1865F2
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727330154; cv=none; b=bRS55OWSmyxqK7JGXj8CjXVqrvSd+zs42XRhl4khLN2uDHUuhe3QE1Vb8Y6mvT0Qd/y69jPhyTWdc/+F9GSTmt19pff/83DYJ8is1yawqLSKfrdif4kiakp//BAZpnVAsi9lVqdzuA39lUwY8RtwrBzqspRIeSz113uTXec87xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727330154; c=relaxed/simple;
	bh=InCf2UIzuFMiDe4sgZZqXhp6BiEWyH8mhnNakHaMpoI=;
	h=To:Subject:From:Message-Id:Date; b=j06IenYYgvAHlCSCMkEdCXHeJyR7iIqSHERxdFkwdilvWEsurKvglhyoAUIs3so7JoLZWOw+NXbMvt0GenQPzrB8g0V2+ghp7nok+rAhDo++E7puP8xl61ef7LSSPrmPC+K1tG4n6OOCCmJoA39OIXxo0e/LRMLmTgew7hIXZOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HKPryTvh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HKPryTvh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C6DC4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727330153;
	bh=InCf2UIzuFMiDe4sgZZqXhp6BiEWyH8mhnNakHaMpoI=;
	h=To:Subject:From:Date:From;
	b=HKPryTvhQtr7utSN+0s5ymsKkeGYssBkJIh8CitkFHKdCkRv5BD/IcQEa+hjZa2TM
	 07rGdEuwwF4Hplxiqv/c9HyDQmwH2VB5AMIk8iRi0Z4/NJf3IeWYXP9yNSjOacnjH9
	 W5jkzseCJGk88V2+cRjzCJ0/EylrPGTYP7F03+bbWYD7GnYo+6PbYtlIBZkMo5zKyq
	 Lx98SjzPDA3yt1w0/4jdqbqGeML+seMD33TjwceRvZvvo8KFw1CdxskVmZycc7fOG1
	 jsUIze5f/gbzGlOPhLCaysQclCxjjsCM8331mPoPOk/egXv7A9YqHlE3nc+R/DBABx
	 7VdDrdr9v4wqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99355CCFA15
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172733015359.5355.12680876032037737884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6576dad28363ef8398877d297a63762822ee0abbaad38e1def574af27cd235f
Date: Thu, 26 Sep 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727330153
