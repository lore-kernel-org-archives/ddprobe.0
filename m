Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1394B4A18
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721852154; cv=none; b=pg8L8c+xP5vannSZeINajw+LVXveIFkFIEFFhMMaPtJOpm4keH5LRrnx8mx69GPp6BGZTLICgDKBErUPJVHSHZ/m8j7V3435KRwIGkdFtnp6ZorBPSTw7qRYwAQJ9owSPDKvWgeHb0AN8+udV1gV0h6vdcpRdn/IcS6SkOQ0xZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721852154; c=relaxed/simple;
	bh=NdRwZtXNhPsk6G2PrOGjM1lyUuepVJOUrVWmqXfc5LY=;
	h=To:Subject:From:Message-Id:Date; b=blKW5yqfH88C/ptFrdlrKpb/280tvJ1alHFCh8MlMtRL5nwFEncyDzoO9IG9GvRE5EaQfAdsdYa0otMom2uYXFleoF4zzYOqNc4wSTl0CzRz5oegC+3XR2Q6XamjLXZ4ens0GZJ+JMgQGSVeGk5lOxuieI+Xwn3zI7RrcYsBcIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sp+GTRcW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sp+GTRcW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A293EC32781
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721852153;
	bh=NdRwZtXNhPsk6G2PrOGjM1lyUuepVJOUrVWmqXfc5LY=;
	h=To:Subject:From:Date:From;
	b=Sp+GTRcWeC3umEs4IMn7nq8bNeRJqxqMJgi3TeCjXZizfPqzretky5/X4zeUqro2E
	 TAOkcGwCpDI271vAymENu3rGeSR4DfW6JRMoxZ69yERklYNTQj4KlnQzoxgvvRIMXM
	 RXIbB8UYVv1smpf4O8amTiBDEG6pWw7lZ8ME7JOAMlTc++zyanix8V78Hvc4aueZ/j
	 8CzobLlDLkzjjK0S4BeJQdATBkYcb4d1T7yfHLCySA3yoObrg8pIYAqxkVkcx4WcPm
	 Vvh+e5UvqJV0NLOi6cdh+g7GjcuPpjbA9xLAQ2DivIg7GFv8oTK6Y5+jnw39FKrTz6
	 oP7YoJOSxgN7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9615BC3DA63
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172185215360.17226.15653239718725556479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bfc252c2484cb7cf546345dee13ac10aaef985994f5de669dd8b8d785e5c3be
Date: Wed, 24 Jul 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721852153
