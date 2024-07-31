Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35908450E2
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722417954; cv=none; b=HMoFeWEiyO0D7wLR54S7TDNHbLypWxWleCV//KUr/T+ZFbehOSMc0njJfFNz053ZoztgbwtIvTZJoXVonvegJ97ijbgH2POVVe6qK42W0wQGE132rb3uQnZF46pkTdkfjJtkAeZ1gqvmW4QGm1t72ogp+RDyveCJqyP3CWPEnk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722417954; c=relaxed/simple;
	bh=PhJiaVjhsahSUbmRnybwowzqZ3/+uU3LbDwkLS64K4Q=;
	h=To:Subject:From:Message-Id:Date; b=XrQrjH7ND8RSrLdkDlBLoU4NiFfwDkEPVBdk5NISjhaMNWpR3pYhXuyDq9QRyHbLnOAr3u62uxIZZqOABsEUZCaI8lqjIW5ViccQGX5+LykD7gkb0EyDIzZB3NAQQkY2wSakYNXinfTQPNQ4y2Rsq09CpY2r56nn3qJqAYiCAP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q3ii7PWH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q3ii7PWH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F43C4AF09
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722417953;
	bh=PhJiaVjhsahSUbmRnybwowzqZ3/+uU3LbDwkLS64K4Q=;
	h=To:Subject:From:Date:From;
	b=Q3ii7PWHvaRAmBL/FNdnmhIwjBxhyBsGDSPrmfvrULlNae8nzU2QWEHtzJatEDokn
	 HJPjWsPhsqf+FyzRVWhTjIz34HABIdjo5Qba/YJbVmZc+qwgOMzgJq0N3m9y+FxFSC
	 gZaRzdVI5LgtHfubjGmygc41BGADYG7S1dDrf3UMb3F3FCSWTlcjtZ/T+rXaa+c9GM
	 6q61AhrQGiPfqfZ41hMwnQQICq8FXGdbo/vzqB16KZ8duLbj7t13cAjGX9ExEROcm3
	 lBYLN37k5AVpG1NpbKfUqRUbzvAbbeizjCCQpWvuLijKFyTMAYtOy//fNw3hDQ4fcH
	 iuzZ6M9p2R/0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95418C3DA64
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172241795360.13757.898789611204337864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1496aef3e1277ab3b1ccb7312ffed1b67d4121bec323436c672451cb7be52942
Date: Wed, 31 Jul 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722417953
