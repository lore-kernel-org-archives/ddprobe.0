Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D26535286
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 01:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705801696; cv=none; b=u5u2M1ttW+XUPP+LU/F/5tTiB+fS3Q8Ckmics32K7LdEsYGIKRpGlHo/3aXPzUtcSap2RmLpQkW7XY5j7QHf1ZBrepFwzK3zZbd0LiO60cAtXekgwB+wl53XjZ+Snpdki1jppO1MW65syJkClJ0nEZr5QuXbPWa2vJHLB6hCHho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705801696; c=relaxed/simple;
	bh=bDpjI6iYQesFHJSlSbmcuQS7baBD7N7GTaqUIRUtosI=;
	h=To:Subject:From:Message-Id:Date; b=t8g/c2mq2zfjbCzmEdBZOceYL8dKC3KNeFS7v8mTPN6mNDdeb/oSFnWTMnmJVeu/0BiiYuJK+XlhvpevVVpQCHEnWLcbcGCyECQovQet4z0qGeK0nQQ4DwcXonsuU+7dpqoTm3cQ8ZW/ZysAbD2GZA1uabLJ4Ukx/phZAhK/SyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZlbpgDmt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZlbpgDmt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7468CC433F1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 01:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705801696;
	bh=bDpjI6iYQesFHJSlSbmcuQS7baBD7N7GTaqUIRUtosI=;
	h=To:Subject:From:Date:From;
	b=ZlbpgDmtpe3xA04oxDZB2yPs4vgSJ8fYqjTuZCm2YqKUBsuuzMhVpS5LgfKYAbgrw
	 mC1YQPVMbIIqn2FLSvh70dYx+tD19Wr9nvfQiNhU8fIloWpnkm8ErgAi+/wIRZXF/R
	 WLGGCY+XYtJI6UO1FqZBm9Qg0ytRUZNUp3juf9CDwz/s9TLLrWGB1KiS8nN9ibvwpp
	 IKK31oN4H03i4H2dag4+6nnGzXjY0IuGenWgqJ1tw1ke5nDNNEdrHoin2cZMrWMg6y
	 juE48QYgIaqSMmZ/k7+99BG6Pel5I+zbpQzUI9GGBlrwOVZSbIcNPq+BaMtb1MOw/K
	 6/XbJBkicjqbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C764C47258
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 01:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170580169636.27021.12777905989113037655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ee4c8513d36279c8b41f6d10df15240234f1d8c61222bbd1e8b9824bb28edab
Date: Sun, 21 Jan 2024 01:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705801696
