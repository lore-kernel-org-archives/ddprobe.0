Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7A22746C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737206154; cv=none; b=GSazDzq3I3qar9B06owog9Y8ClH9tbQINdxUhFrGdE4QGyjkb4PwDUyCLqlKX6ajgdVk9XVAS6oH0Dia0wotKlBjpEtfqk80AaPGMEToG62cGiCOB/Mvp8CDdYBWm8qClPpVZf5mdpxf1DNUUsX71s0EEhXlmMA2R89AEv/X870=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737206154; c=relaxed/simple;
	bh=l0aP1DB4QnONNXppTPlgNjYL09Acl9SP5k3hSFXSUbA=;
	h=To:Subject:From:Message-Id:Date; b=BLbg6b8prEKoLbokmhiVFUkiP52dXKXNFyRiEetA45Hs6CRT+qt+llz6K67BPPT12dogbCimvJ68z4MgJfi5Tk5VY5N4WD7zY0t8LID2SpI7e+AVVqBuS7s1pvnqbJiBNw2uIIToehy9QQIkb2L19o7+8NoVxMslnCd3JCHBtb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GYGOf/+L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GYGOf/+L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A959AC4CEE0
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737206153;
	bh=l0aP1DB4QnONNXppTPlgNjYL09Acl9SP5k3hSFXSUbA=;
	h=To:Subject:From:Date:From;
	b=GYGOf/+LjfApoHbQ72fN1C6RdqeSuHVWqkcEGcu3qZFMLkGQjIFWVG7p8BEMkRc4Q
	 8yNcmTNFiTf3PFBF8MmdS/hLiL3i0cQ3FH7q8lIdVeSTJ2Bvi1aA5TIn3t7Wem+c9k
	 gE0ZpdjpNCjCUmYXQHY2ibgqj8bBc6APW9VoYBv+CTXlCZSDM2NZyGENpkmnxIpjK/
	 h2VmlZkamUQa0qRfSk3UrQH1qJd02Oajs0Ja9JO6bg/kMemfAD1DP98mG6ynOKtEJ7
	 B9oV9sxJ3LQDTtmyFSZ+6ojriUVGfYEemaF09Mix8hwVnReXGRCyG454+rx9wHjA85
	 YAm/V1w/o4mKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960B2C02187
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173720615360.21833.14390267385497042341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f708d032abee3bb548c4e32b64f8b1108b6b26a66fca3841c6faed8fb009f5ac
Date: Sat, 18 Jan 2025 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737206153
