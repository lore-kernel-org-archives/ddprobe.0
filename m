Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7E4432D0C2
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769591033; cv=none; b=A6A4y/xtF45ENKXvOBkvw4+n2y+HZIg7jPu8mryONwAHQhXNncc0yQvKS1mIB2jtbZHILKbKtYjlD6BIRF+eO/sjAW+Yxfencr3Xct7wzs4NAAndfGNcoPaoJ6vTmL9n1rXSyo5Scu95aL0GJB2BRxCpv5vX4WAFuNEBUGqUXf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769591033; c=relaxed/simple;
	bh=1Vi0ggWhzDAVqPsF1Qz7iTKmZSmzD0MtFBG9bHiSV4E=;
	h=To:Subject:From:Message-Id:Date; b=VLxHtYqyJ5BSmp0eM08FSHVb0Szq5MDaFybEeudmzR42Kf6Q23LYbFgjzK7IRVTQzoPmgbqnUK4+Y4WAsYZbi2D6wmkahlhb7knSdQwPsg+PtRgKELL6iCf2sxaYPrCG3Gibr25VaCdrcScnII53XKDWCaNdQz68mYLIGYmuuDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nHz0HPQe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nHz0HPQe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBE0FC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769591033;
	bh=1Vi0ggWhzDAVqPsF1Qz7iTKmZSmzD0MtFBG9bHiSV4E=;
	h=To:Subject:From:Date:From;
	b=nHz0HPQeQw6axISP33bJWOXqSOsjia7CgFuk61/f8KDC4WZvIfM/G1HcF6ylawGU9
	 JWtSI1Td6zojbMDd8jKvLrd+vM07F3g3OJZuWdb42NJxJ3pLCyVe68NtcMcF7fzMV4
	 wbAQ+UfNVViXpTwa80hWKjuYMfrGCXDGl78MedGxvyct1QmXWF3o1MHjwD091NAFYv
	 P0wMQTnPWF1I4t9u7PrNjUZzPgsPCKZteCoWiBNsuqqpqaU9swJnuzk4gE2EvRsiNp
	 CBo5ZXCuuZevNE+7Rg31RUsOV7mE8yjCjyZn1iI+5lEEudoxS5+mF5tJddDiTEK/Eb
	 Ooi8xS4FbZIRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EDF9D35690
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176959103363.16031.9463153015629468530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c27d787d30c84b502f20c75937a39f1e34b4deaadfceec6095623c880cc7d199
Date: Wed, 28 Jan 2026 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769591033
