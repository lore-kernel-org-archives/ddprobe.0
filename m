Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE7A276023
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746718794; cv=none; b=FURMUkSZcGylW81OzSjIiGaAP2CANdRpXvD+JB21Ztl/cagapNzxabhUCjeTS8+wFEmqbQ+CDfWVDJiP0wIZBKwGtkALKoz4O8RFMYGce4ZuFWVHL6f5o3rT8Uk+KAtF/xvtoW+wFX/3w7Raj424hxQ3Yhls28z2hCKutHKKA48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746718794; c=relaxed/simple;
	bh=rEmYZCVU2BFJg89jePCg2MNYKi1nVnN/b9JD5BckOvo=;
	h=To:Subject:From:Message-Id:Date; b=igCT5ZC6sNc8KGBvGNI2I+YQBgMC3AjinFV/HXsolWA6oQPF/Rn5Uw0G74KY7zsoPmioRhE4oNnDVvOK7uwaI646Y/WN0kDcjuYSNRMqUVad0NXB6tGngeh7xZIN7B9rPDu1U8YVAyj8LNq2IXwpLiJxpKzZnRJ2JjmaN0Sq5ZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cr81FXTj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cr81FXTj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41C5C4CEED
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746718793;
	bh=rEmYZCVU2BFJg89jePCg2MNYKi1nVnN/b9JD5BckOvo=;
	h=To:Subject:From:Date:From;
	b=cr81FXTjn4fS9vncAvnfb8fIY0lDhfAFWQSetSsdIRpL3a0CtbJYMUaxtvOoF2vA9
	 5gszqQT7O4fjySJdVUyjP0KggCFIIqAdm/oJGZ7GTmjxjwPZ31gj/8o7fCh2iwAfah
	 2azbRP7GEgD9MnaqrcEp/8Aq8B2sjHWrbTmpiQTcjy+EuvCiGarXpRyRNcAusKI5tN
	 CpSTLQqkFbChrt0aGoT0S/93U0gXbVOmaF4ni3TCwLdL091jD82WuHRwS9zrIx939u
	 NSlqdyJIuKDvLIKkNK9nHEy+2Bc6p01TYjPgf0a1+kc7wyf4ucbItB/3dIjXuj6bR+
	 4vi2q3WyOi6qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F639C3ABC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174671879358.12222.10776533108463476797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6768ba6bde78b8edfc0510d3f50804f3fd2405cb0ba43ed6055901628c2ab054
Date: Thu, 08 May 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746718793
