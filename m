Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 115CD1A680F
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 01:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774920894; cv=none; b=afeCmuotNN5zaOdMb2JcAWrkQOvzyiK+TfBxTGDIN37KxP6uqaNRrbUCRYwBdjUzqr6tGDBMBC8M0IBalnT6beS8VB53ahWdL+qvMH3ex2C5W63y0+PY5paQHrkQCt7nmR/75j5RFrUsfoyIxVq8ueUbpBiROLorlqbFUbu8LBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774920894; c=relaxed/simple;
	bh=7N+mbC6LanNYFZFzpQKwcYReS8tlARD3qeTAewjWOjQ=;
	h=To:Subject:From:Message-Id:Date; b=esQEuoqv2Lb+dtxk19SYXGSbuf6gw5h8IxM+J2lo870UQqy0Si5tYCKod3XIXI5EmEXnjo7pw/uyEuA/zpaHK3raOTrjSbnrrK2tSDnTKKKvFiITRd28GPOjxN5RzVq5X/yT0N0zdCbAxfGPXB2lM+EtZjk2H+wWe9GgJPaUG6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IEYnEhyP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IEYnEhyP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C72C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 01:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774920893;
	bh=7N+mbC6LanNYFZFzpQKwcYReS8tlARD3qeTAewjWOjQ=;
	h=To:Subject:From:Date:From;
	b=IEYnEhyPQ8A5F3s01U0TX4dwiC0CasF/YVdBCS36ZJl8hWL0lDxRpcqFJ2j5EsGbD
	 HW7p+s9hfpZxNTh4Pcpk9Xm0TqhblF2pjezEsxHNa4M7kwbjESokXxcco3yNhzFOyF
	 dMcrMYbQbO7SZAozphVSx5XNxre+dhTwdOD2rpcjks+FK6Ud4X6cFyS5BKjkICqlNl
	 f87nlUEDzzP3Nh5xAhZwOxMrslmDNMYoUuDoWgXsQqOXK1byyyqkbmdqANYcZhwrE/
	 I8DbNu4h0V/KzTeZZCl4WXwvOqzplvkUrAANnNP0W2Pl+zRSqNAyxcDR0ve2nJkI6T
	 EnzlJvNfHSBFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920F41061B2C
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 01:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177492089358.8361.17805056589504637834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb79b2d677295dac450746fd69dc4b5f7392fa5f2e3fa8c2d773a899248fd11f
Date: Tue, 31 Mar 2026 01:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774920893
