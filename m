Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E312749E4
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 15:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765465974; cv=none; b=NuMVu/A0wodrGleEh/Zw9ZDZSFpHj0J288CZgYa0dR+Igua2VUllde0EjttWvOWrkZp77EaLMBgn7UIPIJVc+jhu0qYNA2FRP8ifiV3DruWRidhX8G47jaCI+gTzVBIn6/ev+ekOG3S871VMxZBwz1eNcUwzAaapJiL42JuM0wU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765465974; c=relaxed/simple;
	bh=cGvu+Lq/eDMaf2RNoj3B1vetyCCelKmNZckWdnSjNws=;
	h=To:Subject:From:Message-Id:Date; b=FwqV9YW9CV5fK71FS8uX2Crw8hNk0EarFbycISumVf0k++cEbaeVw20d2tyh9t0GC20Fo9iKkUJNRBYOo37UyGY2s3wjpK8ZRF1Qv3LY/dXHogPeJIUJ3ZaZwe/rPOnB9eJmN9xVz+3n0R+hssyYXZQA8b1/wcGA2YbkWrgQ9oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c8+FHJiO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c8+FHJiO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4827C16AAE
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 15:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765465973;
	bh=cGvu+Lq/eDMaf2RNoj3B1vetyCCelKmNZckWdnSjNws=;
	h=To:Subject:From:Date:From;
	b=c8+FHJiOE1RMCtbeuTSyOSzj5RFd63Ddroqog7uBFwDIeidk3w0yK3nY12I3NO/HR
	 Dfgb88lkBAWlDrvCmd3TT7Dfc6wKOb8U2BVd9sc+RMeBWJVKAeKOjB1wPhnEJ0CVO/
	 D2RndPFv0M2XVFDZqTDHIfwKbQ69vyGTaTk4JIUGo9fiGRZvQL5B8yYB2r+ZPiTPgD
	 d9DwAhzLlYx9OT6qx3iLrn9EBACyBb5D/mvQooI7Xv2c3BaZmg76ri/eQ7LUtb85Iq
	 6QQYU9pysEN6sg1l97xCNJEhGpMdbSbcKo3GQtHwBsouMIgj3oo1JyOadHyE/977cQ
	 UNV4kEb+i7VGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C9FBD41D56
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 15:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176546597362.6171.14332431871839032993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e81245755c6d18ba29e3a1685a1e19bd2cf4e83bbf63ef7feebb862074eec44e
Date: Thu, 11 Dec 2025 15:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765465973
