Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495C93932D1
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791573634; cv=none; b=Hq/We56f98oBiNZCYs+VdSUT2UeGHV0P0v8nXdHh1wnOl90tnUPVtBUEN8Fu6D1JZeoa1xLWyb+cphTc2N2jaWu2iNvquQKWoAuvpsSamBwkctEN7WU4bHr0zhPn1Eyx3H3rcl2Q5fDukZwvOd6RL635rL1/uPd6TQllXt3Q3Mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791573634; c=relaxed/simple;
	bh=UJyh1cJTVHpZRrIfUGEn6kGZHm/Dbit6ApnSDBbZogU=;
	h=To:Subject:From:Message-Id:Date; b=mb3Gkxs5zysBRFrA2AVeszG52cGsgl07nqXRWN3PqBKUGqaVQHDiJih5znLItzNz2TUwvEx6kfMardddYDXxJ+oucJ2PI5IPAPkyYCY9QIQ23cglFmQtJlNwZivwCS0RaTDF7SyDoDR4Mkxw4tiuTNrALgW3Lr0L9LKVHzVhLW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kn6QpoiE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kn6QpoiE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEECEC2BCF5
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791573633;
	bh=UJyh1cJTVHpZRrIfUGEn6kGZHm/Dbit6ApnSDBbZogU=;
	h=To:Subject:From:Date:From;
	b=Kn6QpoiEdbbMmd+xpc/tWLoxMqLEOhdd2Mqp0+AsIwyDr5I4WI7iBhKUTKpxPd+oj
	 aTab2y5bH1qgEJBBi0vKRvWxL5BOjrWpFxo7Z+AyMDZkgstBzzd+w6Ox74yc0e6tGu
	 0ggqyI1/vOmON8VvkRmT3dFV2AS+LlTebfY5bSmtI3mwu4atZwkXiI9Stu2P3jvBF5
	 YCCBwjb85UYl560B9KoN46R8gd/Ech/3zl3UKv1lnqUvTqZGvej/Ds0OS8h9xMzbae
	 w426i9MyqSrm8om9vna5iFLeifr5VFG7IfF71n/fdHztd+6Mu8Tx84xTiV+eiNJ+pf
	 CyjMhyUTfVWpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9389CA601F
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179157363368.26221.7935849266511923199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05caf6bbdb8b2330d9dbb8337bbe65b0f8b580d31cdd3bc734a8cac3ed7b84ce
Date: Fri, 09 Oct 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791573633
