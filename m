Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6894155A59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748707793; cv=none; b=kh5BZ1NAdPi/Z2tMzZbGEsBBLAejT/bQjABrMXeTy/cCiFD32fXBUvmpcmXEnTkKeDAcwKKQ9SoQeDEEG86/T6eGe3T0bmINuX5kKAGh4bLLMiTm9SxlLV29EwhR+N4ycROrwmyRibbjZ6hUEJ4KNvhdXGEwgKZp+kXmY6c2Vx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748707793; c=relaxed/simple;
	bh=rVPaRB53vC/KC2xBHaIHZn9nhiIWYBlq6C7tBEJz3kg=;
	h=To:Subject:From:Message-Id:Date; b=ST6QPVAjKm36byJxCJ5CKmOdtbdzIYFEPyKKE58DxlIGzeGWPph2atrURszQYdxxtT23kpQr+bKE7o0f5bVolJ/JPgKTwGUkrAKbkBKwyHJI67F+3DWzp3cAZ7J/Ef36NfOzXgfodeu9mgQWFD37HuyBZbgeANSdgDEjZUQqaaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kOPvfORM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kOPvfORM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A745AC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748707793;
	bh=rVPaRB53vC/KC2xBHaIHZn9nhiIWYBlq6C7tBEJz3kg=;
	h=To:Subject:From:Date:From;
	b=kOPvfORMLeeYbLczs3/HhGmcP7EI9s+rKcondnLLu3OnuHShWmsNp3fhduHUTSp7y
	 G0dgw5dKqMh9pHFBPR22MIaAGKvdMdVHFsApWSiF4KLRm7gqZ66s+hV6AInoZ0Tv7q
	 JpA7cbW2tSJbKFDfZ2reS9z8dzWsW9wBABxGyN7rIklkAC8+FG0QW3SppqogWMKPrb
	 gEJbi/KHBEokGHB39+HB2JO2F0euKOIANMtGjlY6IzhUi5TyEMRk1RN9TwkBv9Lzof
	 52w7hfdiG7gU2PDe2j1oi6BJ4f86nW5HOgbxm5k0uAemxzWM60IhvuIv1Lg7qFYRu5
	 65YEBpBmmEmUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93171C5B549
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174870779358.22412.15172065631773025013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95d1b9c908a1f27886c41886e3eabee97c4916335da30da74575c9b76b8ae1f8
Date: Sat, 31 May 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748707793
