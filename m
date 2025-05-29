Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35ACE2222DF
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748520594; cv=none; b=edVYWG7VJoIOZKhbSNevmoQKwKKFhHLnjwxdMX0spJE/dSQdq+Qw3gb15XP7GBXDEJj2BLAN+VFBkF/eddS9XyYFSOANZ/25Z3ypNqmX8ose8DwH/Ia1yd9a18Td8PyXaP6M8CVhkTCeuvpl/w3VbZbVhbKxltPJqcJsuNLbKlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748520594; c=relaxed/simple;
	bh=VEfXIb0kJVvQ9H9vKmPjHuyXwaqyZvwlq7MGz2RKuAg=;
	h=To:Subject:From:Message-Id:Date; b=Ev/qcbrK+a2Dg0P7hJHCBIbOUk4j3cjkFlUO0k6y73XD2uxznDg0Eue7sw+HafN/0b2oglTscpvLITqsLl0/W0z89XO+7568M/rfuStZ2YdPSqowAekx8jZcxTZUQoe17gj/7tLa19POQiCRZAP9uyTiZ2j6wXHqNt8t3AA8hgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OdqNyQBm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OdqNyQBm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2207C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748520593;
	bh=VEfXIb0kJVvQ9H9vKmPjHuyXwaqyZvwlq7MGz2RKuAg=;
	h=To:Subject:From:Date:From;
	b=OdqNyQBmzMAPn9SiIMC41DcCxZG8OhOX5RhxBPef0ZkNUL5HTshSN2aw+18GMoles
	 lnk2BbDgeBo4pTrvvHx9czas6uwJy+XEph7Ka1NDF9b/vgpfwavoGzho19zz5qu7PO
	 bVjzHBMhi7EzTYoHIU7ge9xDsEN+az+qzdxyKeo/TdVeh/Yz5BROLK2N2lFYEKsgw6
	 t2O+L+7nuDDC3gk5LD/2oH47ghjBYKCpORQIjI1z8irHdlNygxz1Y9fEBpsCFOkxo8
	 Klbl0QQYqfxd1YLVP7FjIum1lKEdE9QGgd91dbunkgUShcfL+qeghjVe1tvoBeHwdH
	 wz0GByfkNizjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9090BC54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174852059358.25298.5350315547366058371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7be094d61cc7d5854382bb5b3bdbfa9bb5b006165a036d4a8e3ead50a1e3f6bf
Date: Thu, 29 May 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748520593
