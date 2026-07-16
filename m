Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D48A448D03
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 18:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784225914; cv=none; b=OkbuVz26ol61oa6B4lnTlonAQ4TXy5xRYZz8Fo7MX6HZRq4eUUrBqE/nW6iikRyG7XC5XwEzf977KKRMCo9Gjsl98xQEv6OWjopszCfW8xlK6S0jWISDzR/Lion39A2RKUWaP5pU9znVNiWFbMcriw/yLFXzjPCbnB8XrbLzEU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784225914; c=relaxed/simple;
	bh=ERt3WXjjvQfJMJqMZkN32nWhYebtHxmfrvJFBQsfyUk=;
	h=To:Subject:From:Message-Id:Date; b=YK/vQ+m88qX+N5tJW/Lz6DIgDgrYEomS1T1Co5WIYmEH8BMibm4t2hVAvC+naGiJL/2xsrdSH+wuvy4ZtQYv8W4uS+nlu5nhoeGNL3cy/q+8uQX5tXma8OzDPoKsbrVn3aIJGw7ZQNGTJfYyIt1Fle7G7kxJNGhIulXUx+7gtLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jvOq85L8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jvOq85L8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D03FCC2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 18:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784225913;
	bh=ERt3WXjjvQfJMJqMZkN32nWhYebtHxmfrvJFBQsfyUk=;
	h=To:Subject:From:Date:From;
	b=jvOq85L86pWgJkhg8rH6fUm9bEyZC4MfN6o4wZ7lyLgzGTLy/v9Bgki+vaElR7qf+
	 u3YnlPiWgUFWUoxQQaDso5lNovAdwAjfaF4IDYe3NWk322Veeof5aGTBkxJhiWoBeK
	 Gty4Xdv7jpWOjxKxl0jQXmRL61363+fbjWfckxGWSUmYNboJUgHdpdmL9v/Spm3E7K
	 +gQwN2Spw/57vChmgpsPOLBNvAqaalESNLXKNhpwm+NajjWS6j3DaRCCAjlb8IXrC5
	 tG/8hLizCuJ/4uPIKxs1L2VnS/og9eDIqW1FCen+QZh92idKeqbYo9XGPCaN71LsdT
	 0EYwKGUbg/ZRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD82CC44515
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 18:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178422591370.12296.8205365819241546302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b7c32e6d1399294d31e253bc8544334280957b858ceddae64513ae94f7b3ed9
Date: Thu, 16 Jul 2026 18:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784225913
