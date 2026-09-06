Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2F223FA5F1
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788692434; cv=none; b=Bb3KltvDgM8lP6nS23n/d9ZReAbVKun8bJ8I1vv4x5/8AxWmKcgleOvcjr226k/LV5ku/6dTP8g3GFxJYnpEozpvNDSLWlPab1z2IoO0P2PnXOqCkFJVlFPt6O8pD5EuvxNlKghRGeEFfy55qcyFYYECD0fI1glPs99oiuIote0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788692434; c=relaxed/simple;
	bh=ZilCd3NYh70HtO4IyBeVmKoqNwU8oq/6YokfC1uOwio=;
	h=To:Subject:From:Message-Id:Date; b=V15Ha+dH/dMPcdrHra904QMpxeFEqNL16EoYC+ZlNBHXK53MnI2nBIlqUsgO6m2GAudhXPVjVFoZhov8AqJxF7oZHfbkb76ubHrb87G6zt5rwYkKymnJxClJE0Q+6Nn+PUF4GNHS3vGwZcvdThHvHySvld9eIkI49JUvjqCvgHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FwvVKRKZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FwvVKRKZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D806EC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788692433;
	bh=ZilCd3NYh70HtO4IyBeVmKoqNwU8oq/6YokfC1uOwio=;
	h=To:Subject:From:Date:From;
	b=FwvVKRKZZEB4uCDhGbT6vnoIuCBGroPajgusVtDt6WhQqTGgaZilU4iSH1acg4DGI
	 f8+gADq3YbEG0nohsLgr/t0+0/GZoM1QY5OZaJIIrosIF3R/EKopxEAtDxr2nDLD6+
	 nJm10D38PafEAfR4FcmUVMeGF40lYBQe86dgDiYuS0+6WclsnrO7rQQQ3iU8D8DhkC
	 oFufbqMn67pxvEk6g94MefaM2WgJdjF9MLRXJWQaT3NxGGOCX278ThjD5Ja+v3xlBi
	 IXOPqh2Yk6r8eZayAn+lrKT0efHR3llpUydHeFoTmrW6ZX2YMC1qzmOIPdHX587aPm
	 8VjAlsL2jmuqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B393AC79F85
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178869243369.20668.10748305831967234257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0752988689130443d2e46763f5252d2b3f9f5bd796bf8d6b96c5122cfc2a7d34
Date: Sun, 06 Sep 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788692433
