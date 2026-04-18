Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D00FEED8
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 15:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776525454; cv=none; b=DR4LpozngCaaE2TgsiqK3AFo5R+uv2e8wR96OcuGviTfWJZDHhHGs0EsG3wOPxiHBSfEe+/r1bTRi6ijB46l/p/0uWD8b+vbvPSeyefYPSApMM35gluCAner8QkNwKckrnHiNA2RrSYROOOQ/XqV6R5my+buH/ecztQuxRMWBL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776525454; c=relaxed/simple;
	bh=QHDzF5+43lQdujohCe5t5z0DDYoG45tZYfiyaNf+VH0=;
	h=To:Subject:From:Message-Id:Date; b=AWTWb5P648QqzLZajLQIJ10hw/amcv4lOy7n/zhl7CzDfBvq9op0oKY93CcSSvznzWv0v3mP59Xasy0ST8031C2bm6IfqeZVXVeaziJHrzWPwImxBmMVTplEIRWI5nRMYtZZknwugR2tohT7lQX06VsPr7K+MmzTAFu5B80WrC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jas1xcJz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jas1xcJz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0DE2C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 15:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776525453;
	bh=QHDzF5+43lQdujohCe5t5z0DDYoG45tZYfiyaNf+VH0=;
	h=To:Subject:From:Date:From;
	b=jas1xcJzuThslnLe2t1S6qZ/I1y0zy1ghY6vGGs109963u61M2Bks6DWHHiXn/Y65
	 jQb/F3AXb4GpbZDPhhLHgIXGfXc5JYvYQtp/el2bwXk43q73yz2HkyBqJUgbZcuLp+
	 UepzAcjB2ZiYc3otj54tisQNKaRgT0qOendKCIVgRU/ybYJeT9t91hSkYqF+XkC+BW
	 mJpe2q5YI5IjqXa8gG+5kVH/5qq5l5XiEDuqCNiDKCmsh8utGDI6/GTddIDRcvra5y
	 fId0SJd8dKdZZ4K51GexgLEZ3AFv4NegWLZ550RU8CYRIkRsOHGYl0g2kMt6ph5kQT
	 QGm16hOMXrMFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF349F99C88
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 15:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177652545368.11096.7803324921175150400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8ea9855ff2ade0b5693bb669e66c5f52ce57892f37c02cb8330101966ad3ed9
Date: Sat, 18 Apr 2026 15:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776525453
