Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 515281BD9C9
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790283034; cv=none; b=bWmb+e4qIUnD33Pd2A+Wg9IsjhNE8m8KVUsraIkSelKvYzKjjG35/U0Hpm0k+kGu8BSwo63ogsVUGVps+djN/NOFkXtmS/jJDi4Fe+r2Co4iA0G5FgXVXQo7UBnzhZcGnXM/i/Xntd8Ka+G/SypTN5COdY5hKq6yFaWBsH3ly3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790283034; c=relaxed/simple;
	bh=AB7CKoZRottoY3A4UZJuLQ6BieXqdeFn+bGV4ewg3Ok=;
	h=To:Subject:From:Message-Id:Date; b=UQ9Xe6e5wNuoAS4yv2sJHgnG7jvIdF7Wg4yGELRNl+RfOn18EbnijGM866QJsYfQRmaT/c6BlN33/kzrrFiXsVll7QXZvFMSHwG9cNc3fuvnGQ7NytRSVUWk147CRddkIMcW/7otARHJixVRHfqE/GV0ZHbd8i66R+S9GVTcIPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lk7s3lYh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lk7s3lYh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8223C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790283033;
	bh=AB7CKoZRottoY3A4UZJuLQ6BieXqdeFn+bGV4ewg3Ok=;
	h=To:Subject:From:Date:From;
	b=Lk7s3lYhS/DMv2PR78T2ym/XPsmWKLd9i1qgNYQOwGvV8yaoclU/9cuzRvbxLoOtl
	 X4RqdxW7GOpejM/kieQ+j5ij8s3ROFX2aWk9sfcFvQRE47B/DiG17Pr4EOtDLT1Jk0
	 YmeWBbBNNbIUux+qTzimOtq26hJ3KeWbRD8k3Nkj961nagpF9tpZAhRtWloWlcH0Ba
	 Xa2r+GUooX/UisqYJEX8nMpDFOEmufnzYpepdhLw9WRdD9r2RewFjfNzwcVf0zZEjm
	 PJmS87jKqt5YJLr1RzjEEpi6+VaOJLPbeDgzNwmoV/ygafuMu7ss9MY3QYCsw00x1Q
	 ToslgTKqVZ+eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2B7DC9830E
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179028303371.20683.6606609843625744401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93cde0f225caf24961165f195d536168701ff48b1761af8274a7a4c045bbe920
Date: Thu, 24 Sep 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790283033
