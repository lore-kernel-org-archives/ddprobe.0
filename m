Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C0F832ED24
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769598834; cv=none; b=FrqG776S1eutTmx0sZTzFLGS7iULE8RCreWJaKcLifzG4Ex0Si+0E/lwvUH3Va3qWsXFz+ctejPoJSF6/gEgPF77mJsXbG0E5/9F//y1A181eFUJPMl8u3sPsaVLh5sE247i4o11sMmlmP56gzd2W1BhGJnWuqE6Jfj6JoKyOOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769598834; c=relaxed/simple;
	bh=w3oBDz/2ita5OULweRP9pV4SyDmNpgEGiQrI6qrjLn0=;
	h=To:Subject:From:Message-Id:Date; b=JdFUVQB5Tij9Yrki6KeHqRdxPTrN48F12pK0ser/BVdTF30WlTQmwtXyDq+Kz0383zuAAKlGMWatZaKSPD+lHEshRuTs+jQuYAICHejXzG6XHFOk+AoZ1ZuAkPSnC9SofHbV26tGTwehcPj+Cao4h7QdSQRXycJPS8lxNpaPN40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CxDjBkGt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CxDjBkGt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E001C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769598833;
	bh=w3oBDz/2ita5OULweRP9pV4SyDmNpgEGiQrI6qrjLn0=;
	h=To:Subject:From:Date:From;
	b=CxDjBkGtrV/0AB6iDbd5tJsea6DhNS0QunCtCbx7bTI96hAcO+bFayORe5qCn91tU
	 je0ZsGTMq+rsaVfkU9720DTe4zUwAwWrBqSKNQ+ctFi2vLxCO1OmSQ7+kKHi6iVBPt
	 IIlSBF1i8875RBqW+67Rn9+DRITobQYgd8pieTWZWczT1G82K2TYFcQQCXv+1rCU6E
	 IzJYjpaQJ4gz/mCzTfEQQzCBIpEr6l22tFN+7cOTIp0UNn6KgxPjbAnCNw+gM9Z//D
	 TZX+LzFSDM3b8Av9ivoCbi1z6RektFU7rppVePfm80v938e0vC5TlT192FrWpE85z5
	 S1ugZPGiYj6MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD2CD25B42
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176959883358.8752.4859803167467607158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c08aeca1b0fd3af9021fcb5ee47347595e2c8531ce26eed177e8e7f6af1ad99
Date: Wed, 28 Jan 2026 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769598833
