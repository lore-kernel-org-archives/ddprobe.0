Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89E242F8EB0
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 17:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778347654; cv=none; b=hH6RvxL/4AU1WDJb8DcZrz6UtrD28ETl2ZpeSPJyUSEk+VabW0lbzfyiJUUXRA9vAldBXj0zN/3gmhEC3YRCqxrqWMQFaCb2UGlpUYIzKrsCFb2E+CgGjdyPdMkC+12d/+uEHHzztAkHRjKlys8Q1hQIibtpWHHZKf1yf9wveY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778347654; c=relaxed/simple;
	bh=pMTm9wcqBV4dKtSLyHxDDao9mo7sU/ex38iBsXxZC/U=;
	h=To:Subject:From:Message-Id:Date; b=qGzeN0MWaLipybiBrBQNAVS5mY4dG56cqn84kmoxeODvboXj/fsCDPQmupzygpqCd9MdxLQmB5YHpIUs5p6ISl8unAPuoVi1vgWktSm/iMH4gYJmiCM2WvYpaOzwrJZmbIwMuA89EOQZkGq2x8y/vtFD4j2U2Rk1ZlbpeUQsGVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gyiThASo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gyiThASo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2B8D1C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 17:27:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778347654;
	bh=pMTm9wcqBV4dKtSLyHxDDao9mo7sU/ex38iBsXxZC/U=;
	h=To:Subject:From:Date:From;
	b=gyiThASoh0mkukkwHkWyyGXRRq/yNc6DVxSAJGFeS3DCtRtebxyEVNZ2TGBsI7Q37
	 tlKnqeDXJNCVZyh7O5+QL2MrBqQ6BGDxnYMUO6uA427HPUOYvSiyfeHjhzoay3tU4D
	 0fbsAhNGyP4fUrClf5SLjKdPQSlcsUjNq33T78KufLy7HiovnOCrC/r/VhQw0pCQDA
	 KAZ2jG8Pj0GCxu2UM7DNMZOjyBRbx6U9kZvEgBV53v3a7IL1pUA6YRc/8gA/nJ/Twp
	 wbJJ/wFyrCKOBEdk719FjIZgUXsB+OgFM5O9tY6Gw4n4y4jDuo+P1X4IrNYa+N0nrA
	 4tOc+tqtyZp0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ED91DCD3445
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 17:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177834765392.6882.12363261774953691396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36601cd9cd3243c753da05e0097077c7f9bcf63003d386603ca8abada783eda4
Date: Sat, 09 May 2026 17:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778347653
