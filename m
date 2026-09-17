Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 633A33148DD
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789616434; cv=none; b=Gu6rrSLJ3Y1FBJk9O0eXbsczWhAQnfYjyArbcki50Up1Cg0Ink2PQy3Qyzq+WbYzzctN23MtjaJcZrv+CyfDz9Wt0Fg4LyedC1OgYLfyoX5sBm2cdsLebjqgsVNgAPOQxfoUWQB48a25bw3PbUME643FhcK0cLeUXjLe2U3LIM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789616434; c=relaxed/simple;
	bh=mecZ5CU7uI+kh1eI+WSGbIVdwa6TX4VSOuoZxF7Wioc=;
	h=To:Subject:From:Message-Id:Date; b=p36CIgHe8WxNKbnbXNj1JruG3Hk84fAfSK5+85uz6IR9MSIftr3pEpSO6vGKKTYeuL60suhBl9FwPiuURo9uIvrqbzJd3Z4OUvvuaqDDs1nBiju0uyExWLT14sQQkaL0qgLvH1t0+7vHiJTuWbWItGJuizKUQpe2/t3RANfsrW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sjx+ctrF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sjx+ctrF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC7ACC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789616433;
	bh=mecZ5CU7uI+kh1eI+WSGbIVdwa6TX4VSOuoZxF7Wioc=;
	h=To:Subject:From:Date:From;
	b=sjx+ctrFG6kQkUFyzcnmV3Xq6ItUUsF9TAkjk4NTmrPuJTcUY2J1D/jFzjWpieIcs
	 aC/TwS/wgLnnU6VFeH+J64C/sMtS7RqMBDRYmYWE5ZrvDuCq6cKQy7opH8jeWw4J9e
	 UjVVEsS+lDeNiRJnnVDIm9CrSEp0qf1MDvqpDD8NhSvNb/MBcO14ATZMMPx7mdb3SJ
	 +G0+m/7CAGtnb5tq3CbSBc4vseP4WaCZSmseuwzPl9ndZn/KpnWO28kGUY7M0GZmHW
	 9iQtlpHISdVQAKK3KsP/Jav8EI9BllZkgVVnR90a6gucx4mxy+RxoUghrSX2ab6rEd
	 EDrLmv8TGFT+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B749FC982C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178961643371.17864.18254368159616592432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9751a1c6399f716e28149237243a7ebc1c2bc956131ed3d1bb703cbe3c1929f
Date: Thu, 17 Sep 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789616433
