Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1244C6D
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753798194; cv=none; b=cH712uaqug4cVR1/UVdyqVyLeuX+SxdmDQAFWyCFCiM2hLITLKNvuQoHMCxAeRqVuAv9bwUyOuBJ9WXh4XSmq0RmY63p/mAZgzwCFDvAjmy3tmFYWCizXz11+LK9ZHq8Y3pxTEuHq+vyogbfRUmjBn7BPzCSOqG/sZRzdnG2tUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753798194; c=relaxed/simple;
	bh=D/p5gDdMsCI9cI1JBDWplXVpMtCJ+qeyaM4c1oTaO6U=;
	h=To:Subject:From:Message-Id:Date; b=ikN4y/DOoAm2OInIlEGkv8/mSZDr0HgoNE3/p5oAuP1+hGPLU0vpY5BXAri0NwNTHfvAIHOOluYKzLukymiPAOc7aVt/X27+dReY+8oli3CExfR3jlJI+DQVgMkJHwhbwygDu+T2hE6YOH3R8PJohLzzOfFHv5FT7K85Z87ZlYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nKF7WMgW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nKF7WMgW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FCEC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753798193;
	bh=D/p5gDdMsCI9cI1JBDWplXVpMtCJ+qeyaM4c1oTaO6U=;
	h=To:Subject:From:Date:From;
	b=nKF7WMgWqTKUfaKIXUgbO9XQrKf6XMY0nXNYf04knRvShQnllFjl46xi5e1ObvQ4D
	 52+KafTMekTx/ezndxaQucWXcw+XwOF89KeaZpMjcUSJFMnqgu940gdLdD7879VyAw
	 qCCSpX3TzyuxCGGz04FVaQS9xAMONvv3/MBPMa+S9aRXDGRIIKDDqFDwwJu0WAf9Yb
	 wHu3/mGt4bPhrWyw+Lk5+z0BToIOimuX2iPJUTtm0fP/zcn9jD479PmSeNMO7Yj4Co
	 O9hJ2zKjcGHH4sswm27FFOja8HPhrcTIwT+4OvYk1VwjypsX1nCTA2coS/EkGuCiaK
	 iBcfDY/se+xSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98583C83F26
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175379819361.29331.15408334444759816060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 516ecf11973dd3bae9090c307b9428aeb43de87685cee42c0f5e827f167c5910
Date: Tue, 29 Jul 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753798193
