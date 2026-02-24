Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05CBF330D38
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 07:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771918494; cv=none; b=smtXHmn8q+6CTZ+YfYEQZEuyXqe4gFBEOuX6ue5agLaE+AmptK5EGHX723Be76MLmi+Nk1ZIX09mJ/1+uC2LmWosqhjcPhehcdtKedcQUlabs27wYiiEI9xUg7WdNuasCDI2Ehqwu4OSPCax9Ll/onaGsrKLECHAew3C4StI8sQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771918494; c=relaxed/simple;
	bh=WPb13hs3A1aPynmA0SEkIzIJto4JLADhGwewrOdq0X0=;
	h=To:Subject:From:Message-Id:Date; b=GL5HnEqRcgYcTngUlyrs5AxreWwWN8halt2W4Xh+5+0RoVKkwk8r78OJYgu0K0WdjBecmWoUdVgZNz/MpJt9sCEqwZr3M6BgFXDk68dOq9cNpl09lsbjRceKUaf6aXCxzORUKXDnVj4PI15RuPACuRmhAPgsornUmmKY9O4PiKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fAqz5z8d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fAqz5z8d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3640C19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 07:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771918493;
	bh=WPb13hs3A1aPynmA0SEkIzIJto4JLADhGwewrOdq0X0=;
	h=To:Subject:From:Date:From;
	b=fAqz5z8dGmsB9jg7+V7EugH3OAIq8c06JPIKJY6UECsg2Vo7A/Y2iDQM+Kjyc44+6
	 wSFTwyhqsnpudQ2AJLoO/Ylwki4WR+QTsVnXpJO6CTXrqM6MiYOlG9BZhWCA4hR+nG
	 EstOhMIuhoWVv/gFGxz8hNDsJACEglSVAi6SxJGw3gb4krFaW2tPCNT6fs1KR4kqL2
	 GRiDC5VQ/oANfLiFvLbVyeWPirCPuGsFrAPo0nOrhqRSsDcZluHeG2kIxlGfR9Kg4Y
	 6a5DxwB6js2F4B/pEIi7PTRVrTPNdLqreDJB25PosRr0+5sOaLXnyKgOIsmmj3EdHk
	 ywaQheLxgKrdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A54EFB810
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 07:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177191849358.31587.6556071627451531711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2264cc67b002419944a8c6d237002c4253a8ab20b3a01df21d8695340970be77
Date: Tue, 24 Feb 2026 07:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771918493
