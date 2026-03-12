Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F22D2512DE
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 00:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773275694; cv=none; b=d1JrHC2dAB8IrX0VjOH/CjmPU8HP7IZQVb02wKxcwlcNd1ScSFv2q4Gu2aYA6XkMI7O46qe4f1qKyh6laydQ4Ivr0ZtbsvJQu63G5De9XmjgQW6H8OEm/rihSkPGxAvHbc/32J2plvRJFemkyXKmCecUqlV/yrgqWspVVfqyplw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773275694; c=relaxed/simple;
	bh=v7mfgvE75vfbLIimkX27TCmacne+qC2KUZWIAE9xR38=;
	h=To:Subject:From:Message-Id:Date; b=d8PB7OFeSlMyfE+FIutdf95W3TIZhzGxiIUEXmA12449b+buqGCruR0+NTPuIq9caM2hidx+bHkZRIcPl9s+oVNmEe2QY0lGS7DHhLfcmRJsLglP477UpoJjrkW+ZW8cmGa7CwbRYorTlT88Ea1vM9boJmP9RRYBRK+vOJC7yXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EIWS0tf7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EIWS0tf7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA232C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 00:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773275693;
	bh=v7mfgvE75vfbLIimkX27TCmacne+qC2KUZWIAE9xR38=;
	h=To:Subject:From:Date:From;
	b=EIWS0tf7BL8nze9ur1Y387ctncSfIwi1j8NNp2FR22cLXL+6KoYut7kvXTu5YGxbI
	 KkYqEJbYMPiLRaUzvrf3lYkULEwVY8XFmbYZoPAn3yH1e3+WfCqzoUu7F/bgd4aV9s
	 B7UZA7ATHsUnEyGa3cenpPI0n2jvZjbaMQUZtXulcvxLgg2G1hlWUTcUvs8oQNZJmI
	 Km28Jwk8auBav8HqNAktfzVgmisrmUL/ONpFfDw+UlRFndbX/+/DsrG+kZepVE1hb3
	 Owhj1go1RCNgi1pgLUcxiRiQePl49gbWjZZIKdvJdtGhsyBwt7So+oor6uvKlD8qxA
	 wRLhV8YuGf94w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9110E103E2F0
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 00:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177327569358.29065.5055395406481325059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb0c1ba786c53cecc27b95739334a8575b6f8dd36dc469e7f6697eebdef9f6b6
Date: Thu, 12 Mar 2026 00:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773275693
