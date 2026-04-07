Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD4329A32D
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 17:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775582734; cv=none; b=kqij3jSswohqvlGhnN8e/oxD1iyWPrzKtfkcruDKJkScPzi5PmLg6vK0YhDc25o9i8MIlJ6Za7tFKF0umayQwlcQ9SlbIBHMCPrMmkbnz7X2GlR6nWeVuoc8MsG1hBqOIvrM2maePYw3aHErhr126KdIQy9XQZrbXBcWUCtlv+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775582734; c=relaxed/simple;
	bh=kJitgDq8nk5u2qlRKSpWEaeRujIJCQe9J71+F40H5ZY=;
	h=To:Subject:From:Message-Id:Date; b=EfZ55YzZwZ7SbGTeo9cDX7N+u7Vn8XtKuEeZTuGgo9Tl8lD2A3XTrNspv5GHvWIHb5yG7obV7oUziHvD7iF0KrRpO5t20OvPFPoDoF5XvtNbHERS6xMckRrjfUab/hI7tyI2bY2ojVrSug+DNrzVLx1B0Ijn8OgepKBn9ar5jPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=evTelbB9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="evTelbB9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFF47C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 17:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775582733;
	bh=kJitgDq8nk5u2qlRKSpWEaeRujIJCQe9J71+F40H5ZY=;
	h=To:Subject:From:Date:From;
	b=evTelbB9mS+JFRaQE46/GMxAfM6n33Wj/Py5VJbagCwXJcuaWvastGi1qG2spAm87
	 iEa7Ofiny2sXNdL5fuljlRpwuaSyIWJtZ8M8nBhzlBuOZ4cgR/Jk9pLbRFKWn9gOIn
	 k4ZDf13IbjKLe0clOVUbJxgvnCQlVUqupvgc22jnj4+ftuKRuecPvSAitCNHBf/qkY
	 39QHl1D6mHAqI+m5wVaBsNhHIPsQmzE66Het5Ney0hRIkEgTN9sPbJA+7RY0OO5VHy
	 wDcrvI2Q7sicfmbRR3WGVSENmrCjef23rdgKagDMc3u65vWcBCC6XBgv6248t2/p4m
	 V1W9FNfyaOlvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA654FF5126
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 17:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177558273368.1166.13216700496447979215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d17b5a783a2af05c8fb7758987a42e52d28317806528dab2c8b2d7b49d09606f
Date: Tue, 07 Apr 2026 17:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775582733
