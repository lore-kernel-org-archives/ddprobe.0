Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DEC947255C
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 08:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788252634; cv=none; b=CH7MRI/pwFxzixZglFcrlc+HPE4kVgTHC4wQ7E0v2JZm5VbyCvpgNIos2az71MZayJ5dJnnsFxVY3krYZ/yUX/DNRTBRdevN++NYzYU3BsD6IIz2ysjvKOK4/vPUExrRk07R9pe1dpFPWx8H7hNoEK37YdXJ7jkLfwJoIgY0L6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788252634; c=relaxed/simple;
	bh=efLM8tPgA8XVsegzPaJGZVbtUwq9v0NtK/L7ODQuvZw=;
	h=To:Subject:From:Message-Id:Date; b=Osy1OeojLGyPejROIaoSO4+SvtiMJ+TsGrmlJnTCifm5CX/WnTcRL/mXcPeOl0saKcOxjos0TEDBAaLmV+eZQlh5c7udbk3thd3sXKbbQelhF1hyomXHrR/FKLkqV39tb/Qvue8o6gec9ln9O3ytfLCDGSIY0ChsKtBbwp8h3Do=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uiJQKaS1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uiJQKaS1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0623C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788252633;
	bh=efLM8tPgA8XVsegzPaJGZVbtUwq9v0NtK/L7ODQuvZw=;
	h=To:Subject:From:Date:From;
	b=uiJQKaS1uls5XMQNbHdOb2WzJbVE7CiVWSs6RDUNPoaAaUVKZBhl/dsxe+cBWiiyT
	 Dh+ZmAKyJxSDkHbnBaapsAP2+5HO8dy1buWdCsmXB76vEMNXp6kh3wCryMLVNRUbtV
	 AJmTuqabD+rb3osi8rqWRQIrRgoOy19K2KUOyEGoaTkkJ2RkgKRik6OAfiXuJhhLCy
	 59Wr1VWvO6ZvINHICcNfR7nys2nv77u4ZIQBx0m2HuIfn3GmkSeH01MpK2t+qjejs9
	 VLxlJLkqP60yY8DUlI4Nm6LqZtJuWei3gyL+FPgvTmgKftZ7ej2O670Qgul2bpYDQa
	 vjDNfXTzOKkxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9506C61DD3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178825263368.4827.394175548064196520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b391ab7dbba9e503593c174ade9a42ebbbdd6b1f74a4fcfad76f6b942d9d9371
Date: Tue, 01 Sep 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788252633
