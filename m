Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F8F2080C7
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736498154; cv=none; b=efkC2N/b74zg+Amglc6GdHOscjeDJ5gpUz9w4wVa+/1U/P7ES/KDNOiY+j3fSEkXwL6lo3QZ+FR6dio6Qo/92IqwmiPEWxtjD//3cfgc+k9H+1dW+7HdR7q5FXYJxVYHmLLs+dtLNxltt/QWvyYfnX4d/F0zJzl3TwbmAeqIRoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736498154; c=relaxed/simple;
	bh=09I4MChSNEcOgHpwLwD0RpppRjwJzM6Rg9cCyDkpga4=;
	h=To:Subject:From:Message-Id:Date; b=EHaHSGKBJyWTtqAoeKKptkXc8gMJu8NHBLR0Sy8/voMhU3Ri2LtPO21oFbNnWODHlJZ0pDyBO5WuJBLeI9diwRKiI33HQSeE6O+S7gaPQfoFAXpxbMTQhd5fNnjrHkAF9HbsucsFQnVWCu7+C4JMEV3V4GdqEO0GgtT8F7NfJrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t2dT5xVH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t2dT5xVH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB5CDC4CEE0
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736498153;
	bh=09I4MChSNEcOgHpwLwD0RpppRjwJzM6Rg9cCyDkpga4=;
	h=To:Subject:From:Date:From;
	b=t2dT5xVHDdVDruenvEPLwTdO0pX4rtgejbVk/QKrxV+r9o29ekb3UahDXEzdyiDNQ
	 0vZcT3Sa/Q8Xlii8OjaSyySRHt582JB+qdQ3y9iZhw83eV6vWMJtbojAn1dT9z2XZZ
	 GCP39yUVwz2LjLPpl70NkDRkBqtmnOkv+Puow6NMKu7cd7BW8Us2AjjcBLRySfTZbo
	 xyei1F758tHfveXuoG+d8JBXuAP4xAqj3sFGqebWyl+50NirBrRTuQagbMVqTVxCyy
	 WZzA5MhfzDeOzNoa+K1yXvM4iWl/QP8FLLKBoydMS+58hvT9iwEEvh5PLDluOm7Oed
	 u+qRNYvF7bx6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B87BE77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173649815362.25348.5888655569430131367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f463cabccf51d43ace8916953cfa6796aee1fc448e8b2c9919eb0268e40719dd
Date: Fri, 10 Jan 2025 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736498153
