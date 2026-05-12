Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229D01624C0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 21:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778619634; cv=none; b=ZC9dqU6oieoB2un79Aka/umJ4rTnJGkbyM9JR6HE1nRvS6PzwYwmzspbxsncgIie0MGuRVjP5a996UiDAneUla56gbC//lKHGfCv6AsNElsTCmF0Hx8CsIBCouxE5D/w3Y7LeHg6psk6fVzmNcG+kYlQyIloPci+s/FdGf/PPmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778619634; c=relaxed/simple;
	bh=qFHx2SzbX9EQYqkKgDyLyaJW6OfiwKq6goqwpPnp6pk=;
	h=To:Subject:From:Message-Id:Date; b=sdldeGB+mUwOvDoZzOPeZBtXc0f9wjbosYooAWlfIW1n3ZUwa1g3EGUzcLRmEZGQ87CpvpRiNyCaUVGZcQBI6QRW5+XQxSyWmCjKeAKtnQSdGC/Fh7tGDeI1bUj+S0t4UiS/g04PujYpE4dwZ5cP6UBUCBYUQ6osa6336f89yEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dKQKE3rd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dKQKE3rd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA2DFC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778619633;
	bh=qFHx2SzbX9EQYqkKgDyLyaJW6OfiwKq6goqwpPnp6pk=;
	h=To:Subject:From:Date:From;
	b=dKQKE3rdLK+w8Zp+3Z1klrXXsP0AtwVOxGmN+mmngQnoNrBh2xYM955VpcWbzO9sr
	 vgyhoWe/dWaeiz3oQ9ghm80MC48et9fsnPuJxnqxwAZW245fpsiopUNMRK4hEHRNof
	 jSC3T1B14+EWOnj6eXji5Xs9D2Xwmm5k1n3cnwbES/cb4pVb9fvuo+xDU+istiZXnU
	 lrsbIOHMP+0CpOe3LobYAFQnkmXvmbORC/giNrZHrWCg0sZO5/u6BBwEdy1sgzqBOm
	 QolSTHVj5rveDY98ywtiu1Y0cFh0ZaGtNIxgvwXCBq05MoNfC592sWKqfl1qpylquz
	 HVOWLF/dIuztQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA456CD343F
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177861963368.13426.9687153925610494583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 435180d42368e6369706d478cc0d4adb679f036eb22c1b7d057d15a828e45a01
Date: Tue, 12 May 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778619633
