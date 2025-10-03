Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 230503FB31
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759456194; cv=none; b=Z6iMdTG6CKYfWjMkpBG1WWSqYdf4Btu9ZIuzGgEkonJ7ejDmYRQ3XPmL9VeWlFI7IgOCWu6OLNS/+dy+seupUIbyHGxCWSWXJGfswmgVcMQUSGSsS+HiGHbqYC2awcJ4PUpLkQ35PLnZVTVb098tqbxk9MuX1ENlK3YTtVuhKaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759456194; c=relaxed/simple;
	bh=UkYULTP/W7oxh8EQrbb9OctJYbdjYqEUWqv3ThwNRIU=;
	h=To:Subject:From:Message-Id:Date; b=cJogU8byUYfZ3hf3RtRsIzfeyNyf50tSI0losU66mVb9D3ge3AbAWBYL5V9hndQDxZURmTINsT3OH/k4Ky8sOD3pFayfCOcMLL3YTk+2BpX7MzDM/O0Qjh9rSKjZrChQgU2qCxKC6oD0mSAmdee+7ssXXigxE0H8AjR5EO4nyDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XuHb6grF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XuHb6grF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C26C4CEF4
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759456193;
	bh=UkYULTP/W7oxh8EQrbb9OctJYbdjYqEUWqv3ThwNRIU=;
	h=To:Subject:From:Date:From;
	b=XuHb6grFHw6BbsDlH3Ld4Todbi+wh/+HmYsGJHwdyJN3klNS077cqJ1rkG2vkI5Dk
	 0q+YkWcidIaxhHxQTmDEn/citSj5JPp5V+8yFpPGN/JySN5K0UuU2uTXqe26XaTM7M
	 o/srqbuXzhgOBEl8YSs3cqePH/PUQLK1lFUCruEjR5vCxkmUUJ0TaomJkMZtz7uDCG
	 uvtYCsSkps8i14kBiXTiJOWC9GXLdV1oZ5Ic9bW7RbP1YMVih3WqfLYAMCCOmkdul1
	 sdCQs8UkoWFA5gyYYN6i1tXeTlmh19y8NUsKQQCafVjUnJoLEHO74MaGSfQHe8LxnV
	 DoRVoxkCwY3ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91565CAC5B8
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175945619357.28053.8568022337893421752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f96b5a34832dbbfa43e32c10ee83cbdc28e4acb54d2aaa53e9b224b3e922658
Date: Fri, 03 Oct 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759456193
