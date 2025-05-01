Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF8C1A38E1
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746136794; cv=none; b=cx5KCTBR3HkO2dAGfH9CmFyt7TkJQnRKBfEcTc0cx0jTHCHCGfvYOWNOOcfBj0iigxRTsEYUrPfolz72MzLU+1mYUELLPsoiMDQ9nXKjEqwCgx6uEwFmOdDJ6Li543/nNZafMZY7dXgb1Cy3ohaITvo2m8WQZmhP1f2pETSi4cI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746136794; c=relaxed/simple;
	bh=9PmhzigVnP8vHPH33a21qe9FgJilbPoAvye7Cb/qGJE=;
	h=To:Subject:From:Message-Id:Date; b=ZGHlc3Kn6HV76YmnO52eUeprXSl/O8SU6mhZCNxU5Al3hX4echSwOEqNQ19VHK+aDzk5qGW7zazWyGKqfwQtOubtjEgliT5TzIEOb5tmXJw3jDrE22uWeFuLYQlAzJHcyQDHhJDYvxpvXDDAMfA1kvcBMLOYD3FGyUhjO7eC37c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tx46RVIt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tx46RVIt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D2F7C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746136793;
	bh=9PmhzigVnP8vHPH33a21qe9FgJilbPoAvye7Cb/qGJE=;
	h=To:Subject:From:Date:From;
	b=tx46RVItc1gBRLa+f/ImosiK5Z6jVFTT66CqFoDtWXOSHBKRs0mUL1bEnvhm/DphJ
	 bqNlIJSDfE7NkxdOfsskKHZZpVGzBE7ZeZRcS1kBhJQH/JKj1TZh38U1xnQiELz27Y
	 69ji+KC3w/o62fcyy5j+tTy7HxZK75Vobmcf6g87+yJD9U1jDsIhf4mOQbKK8xivQ8
	 lv9i7rHB19J9vdXauwMj7V1nJlaAq0KEaAjZjX9t4LQ96V13aj5OqjjhyDd9AupAV4
	 7O2U7Bb2iWeuX9sFJjTVgb87YvlphWvcn1gyXog++zATU9beVc+FW+n/LaZjgBVrvp
	 inVd40kR8FyzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECADC369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174613679357.23561.12325979603059845775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd001558f82ca612c3dfbee65eae0cae5d9965959ebd2ab05d099dbf4ca71c88
Date: Thu, 01 May 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746136793
