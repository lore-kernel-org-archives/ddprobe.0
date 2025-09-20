Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7E2F1F1932
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758366593; cv=none; b=iZvVuQ4cyR2PVogsYMLQSQsFQ+4Pwni5bRKRslP2k8lGcF3/5MdMIZgFmF3tcJc2lQh0EXz5bakJTKJK9L4RXJARJsvngGqkiifoSFtjH7DyLoK8OsUfCPfLb7KDE1JvKrcabpAFIhz44N5Jp49C5orF1xRhbN5dZPYYknECipA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758366593; c=relaxed/simple;
	bh=R7cnTpoYxXOE12zXEhsUy5iB0JwxTJOL1ZZKOc+A6X0=;
	h=To:Subject:From:Message-Id:Date; b=rL5YcqFrzYrFplPukURH6DjLLEz4PJ2dzjZ+XAW7XhCtvSXwq/OnnyVdZenKLhfPUIuDUa5ufJc7GFcdzHoDjOG7FY5Ivj8k5CtR869kY62R0SbvhjF9kFSKally1LqJj9ykzXee3fie9wIiK7hsL710YK8gvc8XfdsdQZJAg/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oo4SGOda; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oo4SGOda"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B2EC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758366593;
	bh=R7cnTpoYxXOE12zXEhsUy5iB0JwxTJOL1ZZKOc+A6X0=;
	h=To:Subject:From:Date:From;
	b=oo4SGOdaoIOKqeitE+s9/mtIephl9iWEoGNs+t+gqnxF8Gbq7cXQNieJyvWgzcAK+
	 7Pc8uhu+eOYVXJ+UIKsP++zZY+ak1UD6+nQvI5XmU8XFVxZtnQuW67kilk9nbySdLc
	 1NdAoyANa5FGRPSNwA9saR9sL+uZRSb/jW+LLBfWBQTMIydQHm5GyQyBxYi/UIk4Ge
	 jUcyRoFsybRPfsGn5myVVhoXbiIa+k23mdGytQTyP0Mie8NzR83lo7Vpay9ERU73VA
	 RkFblXdBs02C9ZPMJ2BBCd5vHEx7r9aU5nrRQowpRGhmsyuvJY1vAZCpI1ZChIyOGv
	 bzPdypgGZ0i2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94549CAC597
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175836659358.30145.8938443320998649969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e4740889d36b1093d379102620da1b87dacc567a6164fe93c95de7be4c6c968
Date: Sat, 20 Sep 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758366593
