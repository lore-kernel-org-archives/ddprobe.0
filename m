Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13CF9348875
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 14:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763648514; cv=none; b=QuLF8gmi4eEyYlX3pk3X5a7QQbqJHXqV9YdkKVhJKEvNcCEoOfgMYhUDaovvKl37dzdzL/ZT7Y8zWNJDZuKTG1uKIBetvsfynSQFynM0Jnyvow7EBhLekTIms3JcY7F5IsE4UEMEXA1QqmcqmgKbkhEwdhtgmuPi0UcDpVfKYI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763648514; c=relaxed/simple;
	bh=ytkHePHb8xBEF2FgK5HbbDi7iI3aXmS77RIgxkjNRik=;
	h=To:Subject:From:Message-Id:Date; b=aTaIMONgsXrWa4vOMSAfsd1VAzALc0+ZqsBzNYCHYwmF9YTE/E3e30e4NJCf3VolLHbJ//OtK8HGhAprDM9MkzDDuKN0FK5C545O6ZTpCgfsVzkg+hurY7yY4P79K2ziY/LCBi5WZHhL7YQbtMzsHp+vPI2ey7V1ohdfWIRw3qc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O2tq/4py; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O2tq/4py"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBF1C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 14:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763648513;
	bh=ytkHePHb8xBEF2FgK5HbbDi7iI3aXmS77RIgxkjNRik=;
	h=To:Subject:From:Date:From;
	b=O2tq/4pyiUh4mzogGbe2ib4Jf6QmqsJhTQqLca49z1qPzVQ3b7UuAmxGipOzNQPyc
	 o+ELMXIo30ftoE+UejGqn4d4UyNzO5Myd8GD/9pW4WhVMeWwy1Ki3x5W2IwRPVLEes
	 HHhNX5/rYc4f71xtjSeynyZ4Q0HdwY1SVv4HF+xX2hsWuX9wFaBG1mc/4lnOLw4UJP
	 /hUeYE5OTIb4p8jbrTsgSls9K3qPsx33brI4ScmDJtlF9okTpWoOiA49h4xni/2zJd
	 yOMP+lfL83jU9MoXrdDW3htXZEccB3LoSXCGZhQvyTpuKEWwjnQbIY+bP6JCon4V9x
	 2f9df13Q5c4ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D21CF8862
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 14:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176364851360.11627.11731759584353018026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a8afbd4c7c00611ec3f754e945b36fc2536ac2429acbac9726262b5727545d9
Date: Thu, 20 Nov 2025 14:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763648513
