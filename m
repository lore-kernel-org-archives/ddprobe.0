Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16C4B4369A
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 01:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776216454; cv=none; b=DGKeQ0rJq6gmX/1ctwwUaxTeJydmtsz2vKxE5CzaN1LaFLbEKe+t4UksLEPFvVVwT867WCitWVKw67YATD4qaWdf+8L5kiaCLiNkEUx2CdHTVe9vHbUXJ5LfqpbnRoYGUCeJ2Dv6NPHf7mDde4YrrOzSHd0HqbjSa4nXYRzqDtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776216454; c=relaxed/simple;
	bh=lm32gqHpCYnd6MlTCGCbp5W4Jzn9raebGultNHhOVhw=;
	h=To:Subject:From:Message-Id:Date; b=HjLxQwHd+3IkFL9ypYZ/6ef2utz+uAPtE5VkDKkRKgafWTBDo0VQLKi2stH9kJQ/Pt68qFJNsWO4rG5Wl7Xi1AFQluhLX/ylmdEEOTC7FadqZLhLuQE19Rt3LQtAaq6WHKzzt3ipRT5h7AXlT2NGlavCMyADq+WCERQsoz5Cst0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VXoCYv5C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VXoCYv5C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8BA3C19425
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 01:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776216453;
	bh=lm32gqHpCYnd6MlTCGCbp5W4Jzn9raebGultNHhOVhw=;
	h=To:Subject:From:Date:From;
	b=VXoCYv5Cv/XgCbo9QIziBpIdEeM9PIJTbaaieaJ7+t6vMll+GdLq9egkwG/Nyby+K
	 PbfllVWN8qkvNueJGL8FCRh8p/vvPPb0HiEaxqF2b8rdqe48KeOKvhqCM0yWQXQn26
	 M62+xqEnkRjX7Hb6GbAahSOFjrB+iKB7Hnlkkmsr9Ggs0PNk0XqmPuOsoazoshAPoL
	 NgBFh7y4BH0shFN7jZXwB0WlBXBDHEL+dfb9mJRI9iAiv5+e7wFF3LUi8TcMcyuS/8
	 SswbNF64okzTITnId1hxQeTzdHaWqcdNGiaOYRIArRXIOKShOGhvcbvBtdW05wsl8d
	 7eo/0LiLYFfsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9A4F9D0FD
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 01:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177621645368.11926.8092513997565827744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69d53de2f6cc5d378a64677d57045a6429ebf301d1a8494768994278a2b807d5
Date: Wed, 15 Apr 2026 01:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776216453
