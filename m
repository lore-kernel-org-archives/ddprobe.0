Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53CD33128A2
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 12:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775477134; cv=none; b=Fb9WeIUoDFL+hmBfJaOnxlEHUZsCsInvLi+so1AgNgoS2wicD5FeqR6k7TXFtgtZuqhlGuLY9pYR0FUy1fe/NXDkfRkMlErWu23agFJdG66iBSc37vC8dzAoFJbFIzuNAnL2VNcAjh1cWhx0O2Gk5+dX1ASz55EnXD0hLLvZaFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775477134; c=relaxed/simple;
	bh=Yllg0OPW48xWcATGEUn5rDNnrk2itFZznnrOO4V86RQ=;
	h=To:Subject:From:Message-Id:Date; b=R1Ha3gG1KyokOoygRoZXX6RBsqLqm+oUlhX8QREuSrfR2urLVQu6Z1vsB0t/+ci5SFBcpeXfWZtfqJdRXa/GMThjK2+RGjh0v+ySQ4gzj4QkDGPRMRpFGsS7jyIQGuTPCZd/nuFkpY/NVAxQNVohzWPwEF4+NgS9K7M45aFP9xw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WkdepZQv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WkdepZQv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6434C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 12:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775477133;
	bh=Yllg0OPW48xWcATGEUn5rDNnrk2itFZznnrOO4V86RQ=;
	h=To:Subject:From:Date:From;
	b=WkdepZQv4PCOohOo23AkS8r8+j5O3W1606O3A1n77jkLmWuVKtsHFiS3zxQpAfYnA
	 S9yDrqJfKABlvAjFS8JT1jF1zLovR4cRlLbnLHjLiTtWBS+2yuhdy4VcM97wUI82mS
	 K/uWxCvQnkWIOXDMnFq67R/H7Z1ZrsGTW8CrL2Mnv5e0VGqn2mZZWPo+jsTHjNkxSm
	 Z8WHzCYs22Es0ZPDRO0EI2Ffzbtsl/CB/yFjSD62Gzh85ULYi9b8M6qGjnXJLJxmp2
	 MIQCP9KhL25qis2DU1IiNZ14iftA4149lUZ48P+ivSCOSDNlema8mebsDY6Uib4PSF
	 nWwXOPwZ1hVsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B087CEF4ED8
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 12:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177547713369.6044.2013494493954050938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2f2db6c5bf3be62b65394106b1713722be1d0171bf988207a824cc345b35761
Date: Mon, 06 Apr 2026 12:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775477133
