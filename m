Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7114F811E0
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 22:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716416603; cv=none; b=TycobdSH//NJS5wH5WAUYFn6hVjSsN+DbR3qhrNtH65IxYjmnY/QUMytgLGkhmcpKSyQi2weyUOE9I+orwgzcABReOXLlF9strv/2BUIcRy5YbYaN1b3dWzGdAA7HLlnMMEm8b31ZPR3QG35+VIKvwfhMiK9pDoTkbffLu4cINg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716416603; c=relaxed/simple;
	bh=b5XBjk+7kM/dwocHWhU+ddY7fHTmd9iuCdADkX8awOk=;
	h=To:Subject:From:Message-Id:Date; b=g7JmA8INwl7WSQVdeLg6DKTuy7muzv93aMyGtkOt4jTa67ZKWf5nkF0Inio3HXCKdZZi0wt4vg08k6BKVGv78PdiDs5rhBpbSPctbeq16gYbyDSCfO2xK694KkLXGWcPWruh/0noWyxHkmtQdaSgir89zm3X9uWJh1UxoUfMGJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qd67ea7A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qd67ea7A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC40AC2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 22:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716416603;
	bh=b5XBjk+7kM/dwocHWhU+ddY7fHTmd9iuCdADkX8awOk=;
	h=To:Subject:From:Date:From;
	b=qd67ea7Ajoet0XXjPt5wS/xyi9wW/CEKXcYXHxQjAHP5DrRdwz4EZDLK+euS9ktHP
	 4g94LyoRd0Ecpc+YUj94iWIlLnuLsrQQsW5KPFy1/FH8Ah6henCQ97mNXYmlskGfC7
	 0eA9YLxmbColB3diLqcpoLKQ1BXjT0LQ2PrjQEfI7elinX6M1A4hUeYrneMCW87CVH
	 MHCkvrjApYlQsd8RGBZVYQKlZHyC1R26dgs7uOKxjOjYsuVFPlycDIeJ4NGkCG/WJI
	 2yEhfeyxnhH2z6H/AihxH6WIfohl+xPWppuCvqW+lTsmxoi+pH9el3PblhRUBsBDZE
	 oMiNbUbswVcCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEC8BC25B7C
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 22:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171641660283.8176.3803590207840529925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0394ed76ae8981670af6ebf3a4248f272b4a3327be6aa96d1ff6a4f388aef6d2
Date: Wed, 22 May 2024 22:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716416602
