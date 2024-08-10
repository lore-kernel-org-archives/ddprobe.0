Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F20A1BC2F
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723272354; cv=none; b=pgqqpP0ltPXjw/nbwb0VpWYTMG5jm7RnrVpy0wRUI9TdlWKd/nDHmg24wNitReW7cq26R2B0ScAmVMXBz5D+x2P/vgQ7WZIOzXceglp2cI2F7wcBofOGTfbb7MTD1ujt+4HQu/NVewtr8P9gkbt/uCvDOszOskTiwtn+do2yPhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723272354; c=relaxed/simple;
	bh=kc8yNswVLs+DAvo4BgKEUDhLsivfyi5JNkc43SxC1A0=;
	h=To:Subject:From:Message-Id:Date; b=TmqVaP3lbiGKVydg4l2FRutwZhbaaPnF746oTm53kNC1CrVrOUIA3/zncsQ/VLwljEXoLOgHfY8uaX/NrwWpxUtfp+msVf9Et9zCqPWdH3+3OAGGYjmE3ygEW3X7GVH/+UxM7bL8ummRh/eYISVURoMLj8BmEbACQfMS1Gs9sSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kOT8rVP9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kOT8rVP9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB14DC32781
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723272353;
	bh=kc8yNswVLs+DAvo4BgKEUDhLsivfyi5JNkc43SxC1A0=;
	h=To:Subject:From:Date:From;
	b=kOT8rVP9m+spYBXPVvasIJMEBpOMvkGOScJ8m81scUTuXOnvKGYhN3dPQWi0BDWFe
	 og7vsF3lhtyktYzZ6CnM98v8IfqhWRxzrgQ4chM+7vdGqaakWBG3nMt4F0O5I5yIvj
	 jiSGGErQHwunjkJ3RL/ZW+32vxs+lJ9Dsh9N5iVfRh5dvcWGsUNW/Z1WrmPmpGmDY7
	 qRsKIuVDkYlydEqGvYKIW5a/Fe3l/P4M1JruUTBex6lnA5q9Uun37WhPH3tvrnv1aV
	 EWpKeiE/JgbjiLWMkb9vnxS5zrB1s5N69EXcnoeCpoFrLmW4UIwIo6ARfGM+MqJHeW
	 Z4nXsfNqjy6TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C3DC3DA7F
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172327235360.26053.11851527028629735911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f69b4da7b0e6e06d4e41a82d1b3f64deea186d4e91df259a3d0b4105fc7cd873
Date: Sat, 10 Aug 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723272353
