Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B9B942F715
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790187034; cv=none; b=HaA3aRnGLi0P3ta5R6JYHUZZuvwpu6c6Rj0J6YXBcXPN8xipArGMi84R3BTnRnSKh/SS+pNtgLJtS6h6tMjvo6xSX9uyeqp7o+FtMCeZ4se+PbGY5Zz3Jm6OgtI9m/s531BzT7b4EYrx2tY+2RUaexHoTgJAqSgpJvLcUyYc3Vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790187034; c=relaxed/simple;
	bh=Db2xhfgGOCIVDixF0tqW0lMdRC4MlDB94t4vsyK0CT4=;
	h=To:Subject:From:Message-Id:Date; b=Gqs3JFValrPAndHS3p7JeHXekpyveaZmA/VN0l18tGENjtwxSJ7yEzSu2jdI19V76+JTPH9KK/Chv3yesClRz6kq+tMW9bX6CWLKfp5q6Pp6EUOyLfWeFUqa02jI+WALn2PjRSz4EV4poBcTIpi8D6ei4C5dKSBiZDE+H6DMsog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KuhHrhy+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KuhHrhy+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E9CC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790187033;
	bh=Db2xhfgGOCIVDixF0tqW0lMdRC4MlDB94t4vsyK0CT4=;
	h=To:Subject:From:Date:From;
	b=KuhHrhy+v/idow4FjlLXOC26aJ+TGTtZOKqzBjrop4Ljmt+dohfl7KG7+blmONWwq
	 4fS+etEQC12nBGgKDuUtTZ8ZyypuSlLNauxfhOnYt2EzRt78YfPu+ReRGGxu4LXMD2
	 OaWze1wma6ZVtxR+LeHPpRySumy2lpqDJE7Rt8m8zX4PEqEnCUZDugetOiiAjApxok
	 309TUcZ2hCjzoZUQrZ2HCtmkFjLbGqNiouPzKHsmKrNYWU+lNbphzRhqgJDI9Yp8zj
	 FlaTzvw3T8b0/2PODt4Rm0tTq0g0jHgTBBRyv8EKRv++0gYWFChNk66ezG8uRN4Y6Z
	 VXF60UCz1tvwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD234C9830B
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179018703369.26054.978832764655251756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d082e3c88fa7399d6918c4cac7bc41e2262b2db7915e1ca748f3a7275ff7a93e
Date: Wed, 23 Sep 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790187033
