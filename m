Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CAC1221FC6
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 04:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766550234; cv=none; b=PMKLO+CzdP7j+vVupm/Yy1HyfIVIsoyciYU8nmDoFeg4wPgr93pgiqJoLgaCCUJISz6aiu0mH+dfmEmQpJ5Wk9ogdVGUlnMnnMOkSf1YRKAKvkWgng7CiaAxVWmCSK3NhHdbGBUBcDrLXiCAIbDauGRqVc1Gd6bUUWsog2lZ/+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766550234; c=relaxed/simple;
	bh=VYrEM4e9tHo1EGn2g1VM2MPwoVfn61aqfONtUaut8q4=;
	h=To:Subject:From:Message-Id:Date; b=niteRL3fnr+d00Ts/vxATfizvFhWwvS2d2UHI3acDxqjevVOMqVU0Fr5vOBxzPmq2LPzA+3sKnfXpyWZ60UIqfZPHleFnErwfrWk0s8oKLsVY1VS7S9OSEvP58PI0x8VfWCJDC6B3nPEf+oTUbZqcyUsiv1pVPKA2gK3zv+NtF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gIY6iB19; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gIY6iB19"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A647EC4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766550233;
	bh=VYrEM4e9tHo1EGn2g1VM2MPwoVfn61aqfONtUaut8q4=;
	h=To:Subject:From:Date:From;
	b=gIY6iB19rAJ1owxj41V+3cQUPwDrcEOnp3pey/QKk7bD0+D0rsP1fhiepj1JXW3uy
	 ycYpbSj56Sgvaw6hzcDr8w+CXEhuIAWGqFg7Z3nsqFMqWjM33eF+5pDN1reKsPVqnu
	 nie7WsQdVGCIua8e+kn8ALWOvqC294I19f1ZaLXlIxmUJqeY/OP5CvO8xY5D7xdLkk
	 QA7JseuFUa4odJMnXjK6ZxErnzhvpoAjaYvxBn0mJP1p7cGrrE9GtV1CyuLtyHRt30
	 Ugy7xi7RGDWIuGpu5Cd4i9B04MWDI3WQjWdx8Z5jKxM30fpC0XFGnWrXxvReQLKhYN
	 x6iIWhGEO0ogw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9320EE7490D
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176655023359.18438.12984335529052778733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 088020dc02bb9f02ae93667a3d4838fc6b82c0efcfa466807a7734791d6e5ceb
Date: Wed, 24 Dec 2025 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766550233
