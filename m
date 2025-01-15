Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE17A156644
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736937953; cv=none; b=Sl3hV8xqHh2VFELj80GM8ZOQm8/xA0yoS+hHup13cUXXvrQQIGtafn5/F27WWZmx/NmmQdFowMXt9ElJXxcUMy43Xs7itvCFsrG+7xNL3KsNNDR8iIuL11L2rMW9Kp9G7jCq9yRM+4QxkaqeIfrxyXF8Fk35I0TVU9J0QdS3SA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736937953; c=relaxed/simple;
	bh=akQKTYKqYAICUdPlDtnTCICE5vCpoU+sg7OU+IY6X+U=;
	h=To:Subject:From:Message-Id:Date; b=HhOkO0dmmkaxMaSP/T1uz91fpl4gWYd1CC0VWmt6YP5NBFZ1Txj7XMkdkv5E4K/aYPKiYJESHHw0/l+NHQU6GwBHkveCasuUGdFo4xkOPq5QDoWiMNJ/GleBBCbi3W28S8qEUrJ8xxdsX8UEofNicWV/VngcyrE9+Ngd4wgkFng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jd9GbEaM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jd9GbEaM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86EFC4CEE1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736937953;
	bh=akQKTYKqYAICUdPlDtnTCICE5vCpoU+sg7OU+IY6X+U=;
	h=To:Subject:From:Date:From;
	b=Jd9GbEaMXTBvuazwmUshY0Dh28oNInZ8jvrUF44vC2sM1r2X1IGGv66GRDGoQEH9a
	 xlH7pmbmm6EsdwxFUC273Bcl7ydE/GFekM64oda/glPM0Px5bnHJVW/7wQ18+l071u
	 Hwfo/PGudCa1E3j8UNEkT/qw7fq/SPUkCNJvR8lKCu38QxuxLmrkX/fAyjgrahEjDj
	 ITCrC1bAsHxCBbq87bMZGJ9vbhX+DI1KdM8OHD4y4CswCCNiYE8usLkcsnh1OA8j1z
	 G2CWI1iaAdQpBMEZMJSpaEFSV6r4eZw+r2Hz6i+WdL3skInWxnRLNh436H5oi8yzEM
	 T1uEF12SRwhng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9485DC02183
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173693795359.17670.7992591505312909306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fbaca007b5f096ec2c0015bf9ca80f4d05c436cac09e5e3fbdca32078ff2ff7
Date: Wed, 15 Jan 2025 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736937953
