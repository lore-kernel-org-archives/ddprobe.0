Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199AF3CE0AE
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 13:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782479854; cv=none; b=RFA+7VO+K32l6ZVj0d4MxnjZrswkGtYprxyNNsCX2auYM/ZhmS+Mrz748hI+g0qpzcfsPE6WRBfZ/BiPgZCPN7/vJgbKQ6jIqwpzXcnUGS+AC8SGUbgJmp/FCojBatBEGWUAbdyHBoq4hmH7jdmP+N08wI1DMwz8EczIdB1zJr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782479854; c=relaxed/simple;
	bh=WPzlkTbb25/N1agSzvRap39/I52C+uuIG6S9w5sAL/w=;
	h=To:Subject:From:Message-Id:Date; b=u5xBXOzCOystlmiTjim4ie9qBEFg9z+OguOkJEIKFwtinbaR7T+rMq4g8zoeWmX/TxBcunRweUlggG2mpnbnIT/qzzt/gqkvOsDweJ+uDW+k2DQoQhbIiDZRPdFYCTfeTuMpeg5JoVMTFh0JD8+Qvk+qeJVXbViziB8NA5YfmiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OSYSYtah; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OSYSYtah"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEEC5C2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 13:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782479853;
	bh=WPzlkTbb25/N1agSzvRap39/I52C+uuIG6S9w5sAL/w=;
	h=To:Subject:From:Date:From;
	b=OSYSYtah75RwEJ1UG+R2AbqgtjW0pOR3H/Kk2D4qf+tcokcsYz83lNV23SZ+jSwHj
	 l4jV8LQwOLkpwd7d4yn1Tqgl7x5+jarqo3DSa/3sp+upyFyAP6pTrRuWKUklyAh4Ze
	 k6maJqqPpTxHLpP0L3Lb1qt9JpCCdZGVernhKSNz9NbLXAXdMUEZPmPz3uwUIdK0AI
	 w7sIyNgDESfEt1d37XThX3xLcRZ8wpOdD36RP0i49rOIS9dhas2eCDDpce26kJ1j9k
	 JnRnWFFY4gDWvWqlQnYnS7puG8tZmFHCJN187FM5k0lmig63Pwp50rSB2BcKZMZZSy
	 rpGU1p9c5XOUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA55C43327
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 13:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178247985370.14867.15255242856444360402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7361a05924a0617e2f3d369b181922a98aeee21156619eda97ab914f351032f4
Date: Fri, 26 Jun 2026 13:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782479853
