Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C034CCDC6
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788413434; cv=none; b=J1OlEj1TVCjrDwpS/v/OK3lM6maemnyk5FRzaYGZ+wYArUMGSNxpXSYm6RNKy5XbyUgDsXzKG+Q5M4wDncmcIxGsWvgcIFrizzM9Xjs3l835fi3wRZzst9nojZCV2qrfYCaUk7S35uIJmMVR3GdW+uWmEKHCggRh7HwrlIJvZdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788413434; c=relaxed/simple;
	bh=iVPtEOmE4Fef6CcadwWm/+/Ml+5BDIr3X9IOolq+/GY=;
	h=To:Subject:From:Message-Id:Date; b=CqXPga0+ufA9b9x0/evErDCCCDXeJtVIlNqoQlFr9UHJG/bm8YqiXKIlWMsnnRzCw1OT2DRlBwWj0cwM36Bad8eTmfeJbjo8tCzV0SSKnFWDahqrX3N/157Imjdj0/WuEw4ipivVo3FDj81m+aiWuu3OU/VFNoY8AXT+AlGNxF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KiWDNUJl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KiWDNUJl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8A0BC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788413433;
	bh=iVPtEOmE4Fef6CcadwWm/+/Ml+5BDIr3X9IOolq+/GY=;
	h=To:Subject:From:Date:From;
	b=KiWDNUJluyy75Zopd+IRY8J10nxHkaI7AHtYLwpfktUqOjkpIuXqZ01VlyTs9uSy8
	 rH+V5On+h68T41OC7EwL84tcA7YbDnM6dylgxMKMVCnZCf6Oa3B0RhhwcfoyFtE0GI
	 SuqxoHpp2fzREHrrxYtQf/vfkd072Qjcq51+mmxgKcJZ/e9cZo+GuOBF+LwkBBYSFY
	 gUAM6pHLegl6PkJcyWAva3TfBrJhqE11pOF/mNyz8EOt+4wqBLE5uSn9Q8AzFZbbcH
	 o05fqM/bPdsFpanrdcoBaP6B6fRlUycJyZCfXDMg53/uq+UcANxFFPmMbr+1SHTWIi
	 1kPJa+CfXHPdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4281C61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178841343369.25058.146506156955528866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44ceff58ef6bc69c0d57d6bd9e97b3f345cdf340db9d936ef4c4828fe5212275
Date: Thu, 03 Sep 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788413433
