Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41EAB2D052
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745467794; cv=none; b=InRP+6rnJsWfmr5bKtbACHS2UDZ5pKx1Uk/utWc9UWOqFI+klFxlN8dnC/BJdz0qxYclb2kOSUt/omOzF7Pex7VdXVprFZhy+CLd7Bv5pOSk+q71O51bZzOZ9/MOxUvjCkT9S4565CPE0FV3sJjsvhZAYtMaF2soR02psVPrw+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745467794; c=relaxed/simple;
	bh=uvVdDWitctV5ayuSiht+K9+X4us/XDRmr5109ejFfYo=;
	h=To:Subject:From:Message-Id:Date; b=VAVh4eqhPWTucbWn/ITNSKhYkXJnDYV89es3Aq56fTe0gd4kC1bFgxHW81tPO9sDK+pttP3/fm/aVODokNmxE5C692pGCU05iEeGNhdxulLXL/qdIuCVtTU1NcyzP0c+OOxe/sk0Jwn35hE7NkpmZYsUkVRMHTJ6pVIWaNaGbBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pLeIWIN3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pLeIWIN3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A453FC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745467793;
	bh=uvVdDWitctV5ayuSiht+K9+X4us/XDRmr5109ejFfYo=;
	h=To:Subject:From:Date:From;
	b=pLeIWIN3UXUXdPnWxrOJbdOAc9B0lICVh6ttupMxWgvuI8EeREGJeYtSiY0bUZoHn
	 2medcB3azDzAaasMUYh0AKz9+46J0NBgjCO2Fw/IvIfou78/1FqSB9JqG9l0aCXQ2N
	 qw4nkcmCFZ/jDYhNvNptJ2iR3nt8HGfuUm3en/4Jz8aVzsDBfunytNuiNHi8KVJcQ3
	 AtdMyKEAZkuGJ5H+tpEbt2OOg/SEU/bAoKUT8tiyjWqm7fHW1HgHw6Mfs4Hx+avv7E
	 wfvPxtaUvTcMpxXIkWJH3ffP7eDnUmyF8boQajF1OCL7Jgv3VDfFQUkWLQkPnfdFqP
	 p0HimwwKrkGwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9115DC369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174546779357.13703.11910711167185385676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecdb0b14ee66d80b8fd4c5d11f50f1dc1aee537e8fe66a2b19ccaeb63107e4d6
Date: Thu, 24 Apr 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745467793
