Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3194628C855
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749652195; cv=none; b=bPAG996ubfT5dZIjTqma8ShOfsYmSGZrRoZIL5mNvPc3COge+XZRA6GCETc8Z+W8piJJ5fY19UDzjXI8KYZBgwwFDoy57Ogn3ExdUqyjVaYmr+X7NtZ9b7OKWVntxbKb9DCHXrVRLafPRXW+g5ibd4vQwRPz434TOhPf5eEC2u4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749652195; c=relaxed/simple;
	bh=q/FXoEMx63dmINa2glFtflk9BAEw5MG4aXZv6/FH3NI=;
	h=To:Subject:From:Message-Id:Date; b=PP9mULXmtUxR1+ujibYyceKiqrUSRt5Q+01pB6FZaxrOx6Rrld/ohEeRCViItOGpiAw6k/EMdji4mbP38mw7ICZy/NaqA0IX2tR/3R6yW5Dbl/ev4GUzzsJfQky0b7/iG5TWFnQISQResrFKXLhIFhpXPD/D6WAd/tL3IeYrq/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rsq+Y9jF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rsq+Y9jF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27E5C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749652193;
	bh=q/FXoEMx63dmINa2glFtflk9BAEw5MG4aXZv6/FH3NI=;
	h=To:Subject:From:Date:From;
	b=rsq+Y9jFePd3UNZksyJ6bJU+8uoGyI0kM40kQES/ph6oi+MpHZd7zB2TnGFONhmiZ
	 6hzQHa7r2Tr1VjE0a8U0F/u/nkaqQ6KiaXNYduiQa/lufDxKVjLS4qdNtXHIASwQnM
	 Q65X+sbEg7eb+hD0Xm00frs/1zLUx/7I6L0qYVxHbGTY6M+Om0RjANSUY7NYsx0BsP
	 yee5kxIsxLhplGhQqMYb4GzzYfD4aQa7QLWTuobtmLVSHM6gxIIS0cH+nbV48OAvm4
	 55n6Hb0QoDifADYJuslZ5CktLMdrBln1zVle/siToOdNJush7RU2oBK6N15Lww4e74
	 NmEKlXjmf6a+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBE3C678DC
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174965219358.10537.16369893605997513152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa55641c2b8df761e6e0e1e2326d12e0f8f40864fcfdf1198fb0b32f21665675
Date: Wed, 11 Jun 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749652193
