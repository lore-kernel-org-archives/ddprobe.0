Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 317B71114
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722681954; cv=none; b=QFWZsidJdh8fp2N29oncsFc32ta2SxpUmm7VypvVnpQHyp0rkLrS4HBBL8cvGrcmKHrUNQfbf8ZJIJKW9IjGs9SbRJfxyDAwUziQ7kLRJsVOJXnswCACid4He4SL/wD9ZhkFOlkcs1E1jbe+vullBo/ZnUIMiJ6w33GR+xaviqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722681954; c=relaxed/simple;
	bh=HCJ30rJAPVV/Q5F+2AN/iMv/eLbatLV81ZUg9CLz2F8=;
	h=To:Subject:From:Message-Id:Date; b=EBqsiwTcHChuPJ/380O6K/DQGDkuuw5YDKxrI8GX2ZDTIfr7wEfFKmUvBxx0veggt1TCJpIWyJXy63QTugQicvNkzK4KGyd7Vmx4EHbN6JfLmk0HsYhB6snmWVnWBWAZ6VD/A9Dx0RbXlTzfEsWGT3jrrbTABnhI9/X31FVjAe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CMsERcS/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CMsERcS/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67CEC116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722681953;
	bh=HCJ30rJAPVV/Q5F+2AN/iMv/eLbatLV81ZUg9CLz2F8=;
	h=To:Subject:From:Date:From;
	b=CMsERcS/28MKvjpYKSY88kJWVCp510FV0oJbO9AaZLy5QSKOlR+rqTk3BDEdhHNq2
	 NREAPoz44QkT7U/Wqmg5UrwJR4U54MkpRW4z7GHJaUzLJlFGfTZKU5HaCY+pgirES/
	 gYyl+5HlSTo7RQO0M2tFKTw6/E1MibamjZV5kNKKQdeRoxv2F4q8ofyoLNmCwKR2t+
	 Ax+BQsns1eEQVDyCaMqUI170+xS46eNOB/UmMclsTBafaFZ5dfdUX5BluOffnPLMJs
	 DcpCYaT+y7fkWGI0598xwFtSG929nXhRk5adsjv3M6dkog+41h3D2kKsd8+SB2daif
	 vJKRG5i5Tghfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958DCC52D6D
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172268195360.6427.723546728541516623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5132f40958e6f1a7935f9453ab5ff845fcb8c073acaaa4f5d7137a9f41736c7c
Date: Sat, 03 Aug 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722681953
