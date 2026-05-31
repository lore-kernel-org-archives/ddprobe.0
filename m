Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ADD41FC0EA
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 01:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780190674; cv=none; b=QSjMqfTX52J+HxTw0kYnuAiw/ugES+i4vYfQHVcyJOJmQJuaMSya4R0flQ7Xxqjqocynj6MpL4iwDz+78PeyLQNgybtjGl9Ofgg8VBNhImkA8NSoCtVrMvc24rbvn4PI+sygJWC3eA+w40fwn7dFcIhHEjkQGVnHfoi3uRsl6PE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780190674; c=relaxed/simple;
	bh=2B3envtoewkfGy4qC7D79aEvXodC/S/O58NT9NE+gs4=;
	h=To:Subject:From:Message-Id:Date; b=nuQaBip9V6nf9ANIMA1mjXiLUQh9O5NL+vn/D8tvXzbVXg5779HmgVl5VlW7JBy5WL5bUifzd6unb1YgCAfqvQN8hWhQ4dZ6Dn39PLnwveI6gdSWnBB0CL3eiFl+GXkUf9t6LutAX334HdVdasGb+KLHHp5pObfvA/ElxBDw380=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pHZpCe5O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pHZpCe5O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9848C19425
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 01:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780190673;
	bh=2B3envtoewkfGy4qC7D79aEvXodC/S/O58NT9NE+gs4=;
	h=To:Subject:From:Date:From;
	b=pHZpCe5OyE/DUCETgyJvV4Fe8PTACUcUMcRZ2g9TI+QHnYHFgVWJU4D7It87J0lA4
	 ohaVvYAjaTIQ2le4sZKTqT73o0NwHtfotnbwjlcSor3w6vQPo9FFHVJIb0pwQkw8w0
	 IEXzsxNExNqrWJHwAVWpHMkfST/xaWi/uhEG63j8O0KSpR4ay07xgmlgIc1QX1GPHk
	 GJS5pgeWEzt77GTrLIY3CyC7zrQyR2U9nfTMKjd+M6vWfoqQ0wkwz23QywsbFOklpN
	 dlB/e3VH6BI+QybCWmHS1Nrt9hURw7YNcWM9lneUNW7EkuwURrKdrWjbcOFj+r5BVc
	 pwU0yl1FKCC8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB9ACD6E4A
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 01:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178019067368.27247.15070007132885452961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b750d263070ad428b3fc8a9da6bebef6b41c14c58836aca754e27cce758ce9d2
Date: Sun, 31 May 2026 01:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780190673
