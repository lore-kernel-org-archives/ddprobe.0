Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1604C3A1E60
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 11:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766315034; cv=none; b=P5dg2kxQmTXdAyXKd5JQ7GAqS2aahl9AG+WHEUfL4nlTINJCdICspD4dQfoRH9N26edDl8szTZq4lGoUPf30wLzgjKNMZQbPxeN42wX7UDV96LDPTws+axKt/Dct99/ZjhWIyFNNHDmp3KaQrTdBMLRVt4RGLIib9mvDIgWP5Jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766315034; c=relaxed/simple;
	bh=AW35SVH1MSbUXWUqEqiqI21E6+jbiU8oYBGF6JfrfnM=;
	h=To:Subject:From:Message-Id:Date; b=ta4/SAOy0JjDatwWlX/VkMFQHuhJbSLQkVNYF9FYfs8cD6hyKEQuWKUo2pjd7ITAO2uwWoVLaTgRvK4EoSIa2aFreRRUpr+dmgHfMZWyiXd6Ehi+f+rMjf7jrX10ichHixk9G0bnBkpJxlytuamfOee3bCSF5xcWiHVYkAU1y3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lw+aP8z4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lw+aP8z4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DEBCC116C6
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766315033;
	bh=AW35SVH1MSbUXWUqEqiqI21E6+jbiU8oYBGF6JfrfnM=;
	h=To:Subject:From:Date:From;
	b=lw+aP8z48DFg55fkBtF5gQjUy/BaLlViK8b/cuWMerkC/lUibPIKDk4zI+38LStW9
	 +UYBcbA4vOKULU99qtHNUC/Agx1epm3ss8zg3TOM0XLczhHmJAlp8c8BIMw8lNDe92
	 92BZ8NNgsmVeh0Ikfd1kAKBEHTnR56O3CXtvmqEY9iwD8OZLpo7/BDAsjKzL8sx5SQ
	 bGQhyZ/g0xcXAAKHdl4XQzItgNnZBzIujQbbAt9THje9yC5Tg/tJbmqLlRSyJqMQ3p
	 sXrhzBq6tZXJvNaO7e+ETk+jhW8H1CPOvf6Fc3BLw4WWMr9hr9HX5qd/DQIMyQU3Tl
	 MekpZwYakB/+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC0DE66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176631503358.1238.951260035050299319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc01efb193c2db420710eac4e4b3de6e03e5893276be783bfcaef5324dab6703
Date: Sun, 21 Dec 2025 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766315033
