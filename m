Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CB63195FE8
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 09:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721121923; cv=none; b=n6NEFTS8TsM/GrH+ov/tR+2oZl2SNjy31X4SCsiEo0nZ8wWWFwAz1gNno0j50EIjX1WPbmjwFMfODZuQxlg4VTcR3anDHwhmG4UlfBG4v7dIP9Rm/kzNaNUyscaG+Qqm7RQ7ZMMtyymVasDEnZF35oS+4kq5jKGBRsbpLNWckP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721121923; c=relaxed/simple;
	bh=w2j5uVvt/elplwu19VBmwQfhB7hzDv+CXymdV00ModA=;
	h=To:Subject:From:Message-Id:Date; b=nQ0b0wayJfJLpFW3IIldxJE5HzjGzcxJzlLa3ns1+GMGms1Gquq9CcEmCSQSt/biX51QonQ9oAj4LvM8xRKV5P+qs0c1sw0uAB0/m9MJFINB1qlf1Z6ir0Hv3Bjvn2gH0uR2CpUuVrHRwpVcejoPkN4O5QsVxDr9dyGA/boaO+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Elij/AnC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Elij/AnC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE5BAC4AF0D
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 09:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721121922;
	bh=w2j5uVvt/elplwu19VBmwQfhB7hzDv+CXymdV00ModA=;
	h=To:Subject:From:Date:From;
	b=Elij/AnCfMQOjpFin7SNkgkFfLCihvCLKlIKiSckjNosWvh3ymUs8n8/vlVEnqjj3
	 3oI1ZB5AUmU9Yum6LglcgKTCCTQBUcWiJL7icUjK3g1++2Pp8k8P+4B+RoQ01dtUgG
	 vqos8tF5PKNZ29sIY4aTSPrCdIYqsmXJY6Yxw6vo8R/1bpozcDN7QTqJku5y7lLXlY
	 Hq9gQ5UP5xBHEf4sZi6puhWXdMwHIb4ZUz51iHfg0T80RBYIyXdvgsTWcvtQxqV/AI
	 p6jhLPbJyVmHbW+NtvWtEY7csJfSCGCiFfmp4uaUhJlsf6Ez/W9k7+TnmA7xitK+Jh
	 zONG4MJw7Gcog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE37EC3DA49
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 09:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172112192282.26423.14377650128936726405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 598642d0da48b825a1d91f52a8d06aa706afc924890eae2e9785aab96ed4dd38
Date: Tue, 16 Jul 2024 09:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721121922
