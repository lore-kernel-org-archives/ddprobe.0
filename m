Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32CFB23DE
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747499994; cv=none; b=ju3+k6mP++jVCrW42xRix+LVXT0v2bHjbIXJmX9L22936zX5ocdd9JgBTvQb3gIeFDlMEfOL9Jkd61CCjcSv2i6HEtSPwwc5xdQO9prLw4OU8fXGgvQaqgXyfT/0ARwptiXc8dO1rftnzwv6fTNIbVM2FFjk38lcS1XLjvm0ngU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747499994; c=relaxed/simple;
	bh=VbShBQO+DXdffkh5sQp5MIiyAhDhGaY/wIf09Pl/RqI=;
	h=To:Subject:From:Message-Id:Date; b=M9KXwqjAG1vrRZTfEZkA1GKJ02I7P4LTmQwAnhDHzRh6VnfM9ranb/7buwJRAXYzkhHOOkN1OjLc2NOROirHZhxl9FIy+ff7rt7rkPNo203A/vWDrUSEfudIh4Dpj0/cwz0nyBBwjzrdc64upjuyjIYXu4HZdV2JBQBW+hO3+As=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pA2bw0OV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pA2bw0OV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1ED9C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747499993;
	bh=VbShBQO+DXdffkh5sQp5MIiyAhDhGaY/wIf09Pl/RqI=;
	h=To:Subject:From:Date:From;
	b=pA2bw0OVfQWXsv2DLx9zP1lkNART/e2si5r/FGtOi52RrFYiuXM4ZMM0JQG/jgNyI
	 sZygvny/djz8weJnwxuJVyOYymE8gzOU6hD1uH6Qj68VJIo3RffJo6Bci4WCLrFGWY
	 kibqGz7OgouPY/OZXf41daVeOZKJXkn7JDYLZ7HCRbuvo1fjf5aOIHZfD1Sxl7rgk4
	 NjZFOv5ZUGr5Dg0+VLII5s4EFh8DYoZEwqU8r3xUefTKioxNmdGQ6kXKMDLfE0GQ3d
	 xYzqXcN6e4qmFS5rU5y+WuXaljsotnnc9XBWix6o50OarAe/9LzKvgfD0wKzm+QBJf
	 7I6rmcvQmNb0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF9BC3ABDD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174749999357.2844.11761279324494889512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2d2feede5e20084de871562fed694c5c25a4693eeb4821cb4553c7b41b40e4b
Date: Sat, 17 May 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747499993
