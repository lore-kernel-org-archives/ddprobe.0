Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E076C3EA73
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 11:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711108097; cv=none; b=tw460dAWzQvir3GkcA2ib8ZPWcP/eiejMwoA5XPX7um0dOU873S1td+2m4RKJlPqb1lpWp5+TttoJEt7KqVGcTUdN6ta84GaWhdfx3dBl8fcHxVuPndXA3DBcx1CQocC7jNpiKUxQeRkwjNn6VqltIo5rwYVJCAIYMmbyLUIeaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711108097; c=relaxed/simple;
	bh=elFSMh5keqE09nCrSWTIvHDGQKPzgKkO6HCrnXZsbzw=;
	h=To:Subject:From:Message-Id:Date; b=YkKLiDTe7zY5vevFndQKpS7ae5iSN/GYjn82X1OAbycqnQf/Hpl+cm2kDGDj1rJMVB9GemrGW0rS18/bJe/0wYm2xD4y+RYqTeTyAyrCxd2jqINyF+gbsd8Zdl7vSSDaN/8UK6OydAmZCmx6nwFoHJgL0rVMUYPg/mxsNJ7t2Zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r+6HX3Rw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r+6HX3Rw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FBD8C43390
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 11:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711108096;
	bh=elFSMh5keqE09nCrSWTIvHDGQKPzgKkO6HCrnXZsbzw=;
	h=To:Subject:From:Date:From;
	b=r+6HX3RwPAKjahkqTq25kJrMsa9a14554c1fHI+fSUBEGZgSBk4dfAEX+65k/VgtA
	 1TLvWMOifKqd0QeC8j/7ZfjT8u5ORRbZMRxVW1z/P6ni/IIG0gqYtWsPRGBxIhObFG
	 wVprTCqZK5EipLqwrkvnTRuwEohtDsGU5WeOLMKK/i2kkpNEuTdAvdP5/zsT8C+UPA
	 EOYTwaf5ula7gZXbhZlrqVibnglAVqBv6QcVnUP9D2hxhB6fyq6Oo6cKZqquqNNjZQ
	 mu4lLgp0xc+HE26KYB7af5CwniwJG7WZpXlV4M23umeOfp/yKOyYxXebghIBDRgTZn
	 W1vclIg4Weubw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62E64C47DD9
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 11:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171110809639.21081.8760048580119052832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7f9638aa30a5beabd710766e9fff3d99ce39c4a8ef5567b1df8ad6abcfc19ee
Date: Fri, 22 Mar 2024 11:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711108096
