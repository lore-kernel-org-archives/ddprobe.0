Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 525DCA955
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 11:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720264523; cv=none; b=PeULks8xTJKJczcl9R005Tnue5ssSJpI9SqaK//Gabdw5BXWew6FHu4yyHdYnxAYyKmwW8icjfHnIPgYd3HBCYhEgmpn0Psz8TX+aUNOUPcreCtyaYma8VUDBrHt4wBosli9VtSb4A47vb5T6HHM2giFZ1LdJoY5QZclVuH3gPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720264523; c=relaxed/simple;
	bh=rltqV54VZlUJJ+Eva5Hl6owfirAg8tpKx9Jr4rN4Lq0=;
	h=To:Subject:From:Message-Id:Date; b=qepThynQgHU+5ii7nhL8W0AnpE3hGrelZwBqRJEgRNWnHGjXmm92mV04TQj4xYWnOygut9pGjEGwN0+qQR7ykniVSBC+99WJK4xLevHjKWjZF0I2EriI1s9lP5PoHIhx74IQIzNhzsRPLPu5nxg8YIjRV40t2pBdfgNXI7WC5cE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lgCYi7Q5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lgCYi7Q5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFD95C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 11:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720264522;
	bh=rltqV54VZlUJJ+Eva5Hl6owfirAg8tpKx9Jr4rN4Lq0=;
	h=To:Subject:From:Date:From;
	b=lgCYi7Q5ZHrkh/T7XUvpRUiC2IXO7QGtwtFU4ynPISZetG7AWCFCE2dJdB5eiF/q3
	 wPEvNEFcGtu4zJV6I2gdYFyd+ODzCA0crTIL5pLs1uxbd7Hoh3/VcLd2Se2a0EIYul
	 0Ah8RMmTem3OagZ5Qbe5gbtOeKCJwVfLD/Jv7M+UNtfz1QPYKD0yU5WC8sbUM7+Onn
	 5suURU/rzUNgqegPhkIcK1MnTenXWYxwfUW8eifwJXOX0beQn39O/rwG0TzawgWWGh
	 RjNfeMamdrWsDvY/QjsZqd2mTjm3YmNghRlbiHx1rMi12Y7AJkT5lU3/yrspbY11QV
	 Ww47nzMlcdC9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA437C2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 11:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172026452279.16417.4454052423673045814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 832eddcb3de30b1973c9f3917406e62eb5d3b4b512bbfa372a20d23a18bfb5a6
Date: Sat, 06 Jul 2024 11:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720264522
