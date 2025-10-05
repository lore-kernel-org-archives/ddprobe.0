Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F883747F
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759643994; cv=none; b=IOYUxyAMiwzXQ7hVblqq5IFcbCpgD1Ah7PCyJE/P3Z1ms/8fckIP1oi3c7GgxSLYrTWsOI4htuS0q8vAAac/7DpTunwWsBk4pbHcNJI/U/0el823JB4gADDtqJzlb4ci4/C+etw+3SUB9z0OZxAGUbS9zlXvKWzzmUEpBhT/8sw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759643994; c=relaxed/simple;
	bh=la9cmkryzctPBvuYriGxGPaU0K0v982SymDhmxfnOuk=;
	h=To:Subject:From:Message-Id:Date; b=F3JXCLEAGj9h+K9sJury76KLHTGz52BDxyMjj/YHKaJBvOWvB34B+W17Jm0fSs9WAHpwwS40jzLYD5EbOC+7ga2GEUrn3nRJx+dyrZjLJ//KHMZ1guCckDN5qnYw78n9fYSlXmzRLhWVt19zFHJRBmoYJTj1TL3xHgCJHLv4Ai0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dq8FH7iy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dq8FH7iy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7434C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759643993;
	bh=la9cmkryzctPBvuYriGxGPaU0K0v982SymDhmxfnOuk=;
	h=To:Subject:From:Date:From;
	b=dq8FH7iy1f1NKtqnxGZtu5w1JXWUttJnaXHBNQ0JhCQ6e1S5VEF9v4lX4HmPHp0uU
	 QT/M8IFzY5F3S7q4hQhcvB8kwnnDG5MX0TvbQXFQru79lHKx9xiH9LyKAFPCe8i/Ev
	 ht3sWokb222FXAME3hQQvtM5nGniCeMKhtQ9wb2X31CopCgaJf+amofNNirQIch+3t
	 cw7OXs1hfP1B2hpWIk1aTZXRNXN7YANQsJieM9uefbHBZrShNnc+u2MiREhmJkPh91
	 TM2Y6Y41RSVvoWd8bEFBNA3ImdU/sKjr2dc9yxYcBvJ1LLgFeBKudxSQpxGGmEBtKy
	 TjWfoV+TgsXnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958F9CAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175964399358.3005.18279318409733968778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3b7b02be5d86361ad867821341a5923a6044cef7d0f5e69da742c29ec9fc693
Date: Sun, 05 Oct 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759643993
