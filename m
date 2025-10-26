Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5482FDC2C
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761504594; cv=none; b=e9owJQs+oQzDvLq+aINHEAmABymXBgIx6tH2K7zZ0lZgQ7K3FoPuhbzWL/fVGFlQ5/XdmpRn1J61pDDL+fYskel3JiZjU7ZYd1Ek59Ktf9ySqhRfXR/W76l09y4/0OnrGm725q/rccZ/IuI9HfZOlQdpRdmphK41ML6O9HKK6EY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761504594; c=relaxed/simple;
	bh=twrPXANfq4iAvN06pQfL8yBWdHHCwPuhHAw91rqqPjA=;
	h=To:Subject:From:Message-Id:Date; b=aKV89OD3ghyje8vIklEHCk29OLXyJcfNojOAxyfXMfVuQgIU4WscNpFEa14DCZdwpEO9+s7s2PaIuqxqoqJKj5PNRl7eoStclONyf0y9EnaI+rvX0Uxu9ykE5K2MnaatrU8IXnlmtlHtfKwBNxW1CSLwI2lFWz5J/3L75TelYEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kGts6iVz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kGts6iVz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31ACC116B1
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761504593;
	bh=twrPXANfq4iAvN06pQfL8yBWdHHCwPuhHAw91rqqPjA=;
	h=To:Subject:From:Date:From;
	b=kGts6iVzU72chUxRzgz4UPeHt4v8XS0NHICcvJ9BBFX5OrmG0rgTckkh4Z5K5viBW
	 gNofVpIhKJXrVq5UPrcCU6fguEpuYDUM7BB9iNdYX2xn8JHXxr6pgxpkHCeyNanZ30
	 fjBn1nLzI2+vkcs+ehsTYEq8Hs7lCJvH99masgsniPdsR1r+EotJ46l/0r2coOwQTV
	 08nxyIry+zi4vPbWjf04yth1XslPksFPhwBEerMX17rAkbh1iPmGI9y/CqZAO1VEab
	 3CIXnUbqnkpXESE6TdTbmFEIwyPFAwQW9pGuqGg5ay47EOnAKTJMTj8S9DOSCCpGn+
	 5LlKFIApqEidg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C64CCF9E9
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176150459357.4809.6307310637385058187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35d8e5aa6a6ebb4ddae6bc2ff36fecad3168b2a271ecd50bf628814562e5e7ad
Date: Sun, 26 Oct 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761504593
