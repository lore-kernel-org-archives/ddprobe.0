Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6568A303CAF
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 19:39:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763062795; cv=none; b=eO3cvxIDXFANtBVRTZrZ1KfUunahb7FjfDZXl+ddrd7kue6SusSE7a4JGvBHVpl5iWhL6JJRphPN6l8PEWgAqFnPGLLbK2KBlXzbahvv7/aq2W4b0ZCJDhMHaIu+aSo0V0OsHgaueTzBqXKe/YcgvPwuJ3xq3k7wAFGSCmwEhng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763062795; c=relaxed/simple;
	bh=BhI84MPV8RAw4kv0H9eQHjmz6X1NSNrMP4EVTpiSjaE=;
	h=To:Subject:From:Message-Id:Date; b=iGBUYev6ZGpTmx0Tk//UZ9sqo14VG6bxBKvJ2jDIdie9BN7dZbWv2KXycIVmrVhGL2EP9w6ff+fhPcRc08MiPj03WNA9XfgE5IWZAgZI5fcnSFhnvHDV+CBt0bORnQGJ9RhtVshnnPknbY0wOcyksoQHVezqVRDH8WUPwQjeGbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rUbZSnlk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rUbZSnlk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D524C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763062793;
	bh=BhI84MPV8RAw4kv0H9eQHjmz6X1NSNrMP4EVTpiSjaE=;
	h=To:Subject:From:Date:From;
	b=rUbZSnlkneQHz5CY01sdELojUkQfEMyUAusj2aBMeJ550VZIbEX3XLVYQ6mUlBYYO
	 3ALNY1z5eBkahkfnhg1vFC+HFPFNL6YybUnZ2tPlZ2EGbqLgFLV03DXCb0IXFB9TMJ
	 1NIXYcXs43CXI77b0ngSAlYWlhHrs46vMmIOGtI9HJqZ3T5elJh/3kyUldBLcBkrz9
	 78UuQMlaasbQvRfrS4MYEMnT8N4gYlGRTODgD2e7GEVBfBgVfDsQQWi3c5ZOwQdu0h
	 W6u1OLsQH+lVj0ruc2bzCGyx3v2EgVJnvQPdT6aWjGoTG//N95YlE0F8k2EYaSlX+f
	 WTNCzuHrFGUag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90551CD98D5
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176306279358.28154.5080795828150982212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5eb0055f4e752cb55a057b179450476f8610c80086f68fb7ffedf58bc9e6bc9
Date: Thu, 13 Nov 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763062793
