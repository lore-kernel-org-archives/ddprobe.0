Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2398E3A1E66
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 05:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766813034; cv=none; b=mXxIACJ05eX514mlchZESJgKU9Hx84HsJRVqvnWNEsaK2VucLeDjcCxy2hG5hMfbnTELn5YF+In4imf3FHr9BnvmZoHL/WYxfUGHI0c/dsQvEXSVx3SFWxS1Dm4gFPlHIi3xtwR3svqscHg6joNWdkbztMD4Ao/7bhpn5PgtqN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766813034; c=relaxed/simple;
	bh=fCwfqJ2TT1Zx70mPvkdo/xqxaPSauPgBNU+AbQZ4vCg=;
	h=To:Subject:From:Message-Id:Date; b=OoKbyu/JlRPluKBabKdXWxXPiJnt8H1WLbklNOhe09wyTd4c/JzXRyoBTeID/sBlzF+s46GI/KlaeDnp7OH21TViP3oZVZt5P5apxzOav8ScSKPJ1zBjiz3bC38Gli3qPeKXHUSQjqZ2j7H9iJNPIHnZCfJPMBjtB+tR3RR1gNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TlB0OwUF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TlB0OwUF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67DEC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766813033;
	bh=fCwfqJ2TT1Zx70mPvkdo/xqxaPSauPgBNU+AbQZ4vCg=;
	h=To:Subject:From:Date:From;
	b=TlB0OwUF0rXYzLUzSFppXhLNBf2imhTIwY9oHWkAqx0B/IIGx0PkAINTsbBjcWYHd
	 M/t9fvPD1bWmJ5dRisotVLT0idowGRBnE31hmoJrl/wemenr0dAvyjVi9tjGLozhGV
	 WmXEeenH70QiqHK70Q+bG54tefRZKW9NF55qZQfyc3/nW/gkaSFYy+cUykXD/rkrBa
	 SGEvY8fb7PzIqSiW4HkXnnGQ2H8aSBpMEg0s5kfB4rB3wXi0s8w9sn0HiJSPaR+C1v
	 I+DGQHuyB2H1NQZWMxXediTHc3BH4PeLCqSNnMKLj4GiaURmPT+MbWkTXAitwBqOlM
	 AlftljMbwPjaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938BFE6B279
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176681303359.1931.18323416020114189096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 850080e9416b897d0ca04608f33946cf575018d35d030513fb18b9d025d5cae3
Date: Sat, 27 Dec 2025 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766813033
