Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D121E7C34
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762574394; cv=none; b=JsXBCzvga2ajtZBlt8SW+wXLL6LkBpAGFe0S4vdEnz7WKo1Bv6a5AnBxUmSUaGeBaZ0LiafHICYnBzsYTj8Zy1D+SNEapsIPGi4soq0aETWs1zpLQtAZIVe1HnJ4v7PH5j/gEntdJn+c6sExROUEZiJ74wsedeMRzYhHAvGDpAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762574394; c=relaxed/simple;
	bh=QHaS6g7yV+84/7Yq0S08Zh4YP6Hf6aQXj8mejoORP7c=;
	h=To:Subject:From:Message-Id:Date; b=szu87TP/SB/85Qx6qc3TBCby8wbPwCE16i8/duIHA6Nd3VF/YsxBxTOFnWoif4rJn1HaChY4tmb/7+ur55A5jWj/pHLYcVeHXqUwbl0Gg8W57Dl5gzHrhDD4bsEGZ6FU46rPSLDIsKhTN6zvlR9ITzeojKgrkpZ15xoQIUqM1dM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NC7L7bJ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NC7L7bJ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62BEC4CEFB
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762574393;
	bh=QHaS6g7yV+84/7Yq0S08Zh4YP6Hf6aQXj8mejoORP7c=;
	h=To:Subject:From:Date:From;
	b=NC7L7bJ+KDxZXu5PZTFEEGD+ykk79HN8ibVPWp5/T/kgkXTOgeG0s3YS3aVz9n/g6
	 eRhHlYlPeGfEgQDlqAZ5/dl+6DAM+gujOeMl2XyknOQImGKqCiOYVKr31C3lGfdFYx
	 qg/kzVa5kihdhb8yarfTzKGHHWfjmRiTia52OvewZIgkuUtgIBz9Mu7PRdP5Kfu8dE
	 2UN0neN7N1hyDECSTn90oea/K27UFsran2q09ooi2qvP4OTNbGi/A0Ch0n+WRDi2wi
	 Lwy3/55qEHU9mAjtrglPtS7ajPSI31Bs0bcBdGq7A6YM+AZ7Q7A30IEGbn1KrmbJOr
	 pfhnKkGABtXIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C7DCCFA05
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176257439358.17059.14166192201216064288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e75b4a981e1478ea53b65b8e63c6a35e59afcc3192b8082b91e8c9c885aee82e
Date: Sat, 08 Nov 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762574393
