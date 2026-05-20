Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1CF32D0CC
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 03:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779246634; cv=none; b=r1Op5ufmjQMyK7yjhcnQ8FhAbNEcnblZ1TUKSCizXiz7Rs7QrXfLvl99nZKbwQ7Rn1CUnve1LJJxvyc/5VcQ/lc/nSIgF9TY8zgwypxHljKmbSWDq2m9d/T6X9RyjmpkGys/bWqH9ED2EV7kEP1rZH2rN+dIC277vRzhRF4HmJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779246634; c=relaxed/simple;
	bh=BIApa87AbM3rNQBQXgiE3pIF+sZxX05iBdu+CXWzBe8=;
	h=To:Subject:From:Message-Id:Date; b=ppJrid1Iqxu9ixiIkOSxGymCW2On0AoO22Ty7jlU3ZdREix4gT016jDYTFHUwi4qLXiAyV/dm3Zch41ZdUCmVgFwpYPg9R54GxKujTDb6KgEIDHhCz4TpkDq+VclkNg5Ag9fGc+wnS5M7co4Asr4aywIHLFrFgwciZGEDFTJkUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=akOR94MB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="akOR94MB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3CF9C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779246633;
	bh=BIApa87AbM3rNQBQXgiE3pIF+sZxX05iBdu+CXWzBe8=;
	h=To:Subject:From:Date:From;
	b=akOR94MBkbzmDSnzxx38WUeHKD5iLdqTiYtkgeZpZHmNKOcL0TYBQXv67tVw5UpAy
	 r8d26tw9UxTTGQCx5dhTN3zBfyw25qbH2VcdOAleQ7r2TmP93kUv22fzYp67OCn+xh
	 oZysdOZi9nYv+HICU9+ziReKF/b8jKsr/gLzHR+nERYEtAM5xDblhsm9bFdU9zbdwB
	 L0i42OJJgd+mHIb01uozaOjChO61LuFrWjTCKx5dUov3Kl0hJ4sCVIz9a9P3czV6Js
	 znORb21sPM5zZYetdYc0eTs5glMnMptohH+2rY6HuFvvEXzeBSNE3hLc0zwv2YHf0D
	 AMHFyJRruG/Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB229CD4F5B
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177924663369.31392.16379548699673728234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3915d3f73a09a3276d49fd9b3dd0c2fb8174febdb723519c970eae646941c13
Date: Wed, 20 May 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779246633
