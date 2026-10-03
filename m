Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C821529A9C3
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790987434; cv=none; b=tFLw1SImS/Jbf+eZYrXAVCH+7CXrwUFhIrgODgVV4wMhA9eY1brMhnBLfAQU53kJXOZnrVp4m4y+eAb4vwir8AwhxhJb2F2pI1GKzQxc7uETmg+ogAS+gyWEAsO4pqkx4Lklm6HmNCbShX9/2UAlexpUCXQT84xdjp9aLG3g6Zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790987434; c=relaxed/simple;
	bh=9NvMty4yNtyRuLldYru5WZKNiyD9k03DyEBANmLL1e0=;
	h=To:Subject:From:Message-Id:Date; b=gnm4yucFYuWxi/WMVKEs9P5U5X79Cd8drzEAvxwNWkQ/GoRgzq01jwHdyRQTVHHHAaTxkAY8QtqPlsOXjVtWwxU+FZZiTq7tmLdOd4SQiuHpD62N20S1LZHEkapG1JcpWJQ4mrhPA6u2flHp6N1HT6ZSf4NaWpetPoMRuoSTxCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ShsrdJ5N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ShsrdJ5N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB3F0C4AF0B
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790987433;
	bh=9NvMty4yNtyRuLldYru5WZKNiyD9k03DyEBANmLL1e0=;
	h=To:Subject:From:Date:From;
	b=ShsrdJ5NuWqk5RPlGoye12ApFrcAaqFZ9025GHEZWQH4Y51oN/1LF0htjni+hnnB4
	 QS7yUctNKNrrmnkenVlmZc6/sQRjm9Ced7Bv2KdtZzjaTBb7+H6zW/QGrMXZx/Gr7H
	 gCzGjNAgref0yqw4Ii8GG9Ty7AG7qgxywBA3x/SPkb2TOYIOoxsztfP0ZeGmOMkBqX
	 6M3hQmkVl8QFdZa9Izk9q0KMOjy11thaF+HqThsungoWgOR1nMfNmdsxURvRgsceG7
	 Z8mfEXx13T+rvPOiP6h883hRpRaCviRvVdTFs8vhTpaSNdV2bhcmoUdUjg/mJXg0XP
	 Y725epF97slYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDF8CA5FE3
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179098743369.19476.5417906663052375528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2639c900e0207a3a9e598a3eef8214cf4e761cf8420bc196af65ce2a7b90e1eb
Date: Sat, 03 Oct 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790987433
