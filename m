Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C75DD1A57D7
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722522953; cv=none; b=iV2MOVhmTMEkX8wRIJc3Z77b+1nva4Hso42GJ/SBklsJ/R+WQ0qM2XSlLFtA8uo1ccl6WyspCQRXTlljIC9uR7P8HAFFafRfLdohXU0TkWkuXXzXX7xMbt1gSm2z3L1DXneKXz+r7xjtwZ+l7GatVxqfCVZKumnjfRd0xpwolXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722522953; c=relaxed/simple;
	bh=r/pvkzCAFmJdIUVqbjt4hj+lf2GhzjJb1+aW5oTxOk4=;
	h=To:Subject:From:Message-Id:Date; b=LWf6B5efUW1vR0DGM1UU2RDHuS4MNtfoZqbOf0hn6JxJLvCjG9ovqV80OupiEkaapb5KRkHYrjZ/hzqZJk8SNPyVWaxg0EueD2nv3wk8aYfghzl4Zq9HDFYqB/afE7rg9v9LoMa0rMMNeNONgbhSkb2fu8qvyqPgBVmhp9gKuEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eXqc2Cbs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eXqc2Cbs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA490C4AF0A
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722522953;
	bh=r/pvkzCAFmJdIUVqbjt4hj+lf2GhzjJb1+aW5oTxOk4=;
	h=To:Subject:From:Date:From;
	b=eXqc2CbsXswMhqox93bQWA+qE2e3lkfP2hhm7P/87bj7KEU2kalrgTSQXExpWdVcQ
	 U/R7XyQJ6YZ+5pJKHHsXKaIdO/HTgZxT9bwTLI7JukxWEJYFvq5O+pN6cCBfnp7wza
	 zzvmYalp/ipswA2uPU8lDgJaTj2yqfwZVfYHo3R9hIomnCiLGQnn0Tm9CGKAn49arD
	 0bELqbAHfnT8MqEUFwmoPgejWQfqvTGjxWWYrYzMEEFR1XaAQEpP86PrSRlko0kADn
	 ODuKIrIrarjIyLfwmZh5A0gANqO1GCvbqOHJKjUJ9rZcft6lr6Lkd+5RZjwL+7aftz
	 01mehVUCeSK5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EA3C3DA64
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172252295360.29657.13367652949059700008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4980bb6dc01546ebfd59974d1d8946b8d79dde2cb74017bbceae9aa43c2fe0fd
Date: Thu, 01 Aug 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722522953
