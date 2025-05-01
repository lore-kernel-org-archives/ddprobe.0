Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2943622D7BF
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746068395; cv=none; b=h7gQJe3hkHPntcsEoUvm5fnrfDzbILk84Vjj0iPzS+hNDZqDyNOJm9eo+VaVU2SsReFtU1q6OXyQce2AbcbbmMJvCeBHULkTwE1jwqLd4x2aZlIT+ZQtDHICu/FOmehxaEBlfiRSqDb+83JhIDemTzCdwuTIo0S125TWhjmCU64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746068395; c=relaxed/simple;
	bh=S4bNsuCVnK5F84TqkfkpR73Mh431lQCg+sPYv1EJspY=;
	h=To:Subject:From:Message-Id:Date; b=Z+hF2CgT1vd91DZJ4hkAtDIrC5yc6uirDkHYXT8pXZG/zwiDR1JlDpIfDMi9rAAamUe2FFLwUBScThj/5OOPRC5t8nXI/LM1dGHQavNuy+TOuGUZ3HPZsbx3apvf+DWWb4dKZN65xLxfK/km0d0SfH+/ftD/nY681NFqn0DeL80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NO2TgAM9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NO2TgAM9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05C5C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746068393;
	bh=S4bNsuCVnK5F84TqkfkpR73Mh431lQCg+sPYv1EJspY=;
	h=To:Subject:From:Date:From;
	b=NO2TgAM9QmQliNq7okdNo7QKxGRf4fD7Onqq/aAJlMKY3MZLXt280HNqkaX7UlI8N
	 roV9jZ/1DaJWdYxobOTwT13dq/lreFwGZH46lUUMkXLyteoLsQWwj9jG4Cb3PBAed7
	 q3twK1hqomX0707R9L7CnnwzJlskuWYekbiD6YNX9UeYKDDLv5bllNT4/N0B+5YPdK
	 vXywSMH4m3L6CeG0umAK2rj/+bfC0O8t+osW2kdovPpN7vbOczihU+Q5Diesp7reaD
	 wxIh1rO8kUyLzZ9I2V6vhIIqmi1Xlu5dPfb1f0DXlSzdYBXJ5gqYfWzPF2cPjY1oBa
	 jSn8LX73brz+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8E9C3ABA9
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174606839357.31237.537953919331812260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce323419f6f1b555aea6b73d4be6cafb0d3dda1d4588236c57533dce130f084b
Date: Thu, 01 May 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746068393
