Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D00013AF2
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748139594; cv=none; b=L58iO7ludA9M6lEqVRArjJadRKsbTHUMkLn82SdOHxpr/maVa6HtVOJgzreGtoWcZLbsUEhxA22eXMaBV511jNWOdsxhZFak7npeGz7SI0fvieHinRsu3CF9AjPY17bL4z5G2YdJYC6BgWQa16c/JZmBydCMOT+8uCibJ3SJJr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748139594; c=relaxed/simple;
	bh=6O7VDNlT6k8iOqAzFPfZJvkLWJ2Wat56tjNTPVLR0pw=;
	h=To:Subject:From:Message-Id:Date; b=jL+AogRXgikL+teQBaRWfgDDlr8MYNv+vdF4hvTnpBCigaZxnDGsQfC3txmkMSuYOx/EI9g7h1aVZL1V5Vm5yNfzt2rEEt2wNOpnTVlnr0wdo6IH9ipKWxmeYjPc3VRjXE996DelfGINOdajYIKlLYatc7mlvtYHglVJt2YwrMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fny4ae9J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fny4ae9J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB56EC4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748139593;
	bh=6O7VDNlT6k8iOqAzFPfZJvkLWJ2Wat56tjNTPVLR0pw=;
	h=To:Subject:From:Date:From;
	b=Fny4ae9JQWHFyZfP++9Esgh02ytNkhZhyFBjmxt4NzrSM/Adq/bONxNnEHBaRZN05
	 dvH99+XjDT+zIGVP+GK11rRSq+28xlFLa9p3wSpJ20ZvRWS2Vvm3ZF+6gkzIsK/7ze
	 yH8RaVSFw/JLHldwzFBAVXvcj2CqM8aBohQQpi8PYqOE+zyS0d1VQsnfmGcM5AYPlw
	 DPYfL3qWzqKwrc8OPtkyjcvnb/kKOV5ZrjytHK7dVlSK/85CbawQUK8M//xTOQXejp
	 Mmdz3g8fu3JaI3eOf8ioN9cbe4jRaFAVUGxUKAPdN7MyMjz/cA1ndRgwEFW2ZA/aXC
	 l0LnPJlsaS48Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FE1C54ED1
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174813959358.11258.8201000293049729144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b88792124a9bc7d5503ead370e1d7ec7faec4ba18fb1ba5dca14610467d2aad
Date: Sun, 25 May 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748139593
