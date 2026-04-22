Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 128854414
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 06:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776838654; cv=none; b=mh9WEJVigRjC0aYwS4MtLeJr8yqute/Hr7V5Sb0uSRlw58CXfIktYUiRPsfT6gJHaLMkjW741z+D8NBdVPEGasiBieeD77x0FCQO+Wd3+NJfiQ7wvO4gbqHlc0LDEB+05ob0/rsjZ83AOtJQk4bDT6xg0M8TpY30EmEBC7of6as=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776838654; c=relaxed/simple;
	bh=aepaGx3m+3AAYKKOCj8+BSLwggWWPdqxM7JEE2B2gQ4=;
	h=To:Subject:From:Message-Id:Date; b=TUHS7+X44PHPnKu17PfxABqi3ASWbJ7nDhRlsBvDi9ouvWGWQMwW9MPACC2ZRsVuzcTM1JfXh7tyV+Mhq+SW0Km57qLB6tJ3b8zaMb0im25IYw+k5ZvMplpVMiK4XG55COzyKD6nf1la7Zwyi57+MvqL65wrf2Fl/1cxYC9T9gU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cxsmZ6Bn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cxsmZ6Bn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBE43C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 06:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776838653;
	bh=aepaGx3m+3AAYKKOCj8+BSLwggWWPdqxM7JEE2B2gQ4=;
	h=To:Subject:From:Date:From;
	b=cxsmZ6BnT24lfh+VfoPdMzBZzQunfIzUiU8XB+tAAnk5spcdDGubwaIfSlZte37MZ
	 IuxQ8aGUVCNdvDVKm1QLk7/tb39h2at9GP2Nr58wKENyvPHM58vM4K/Q0t107/qFki
	 +5wweU1GMMafhvyrr4OcJLEmVDzXAgliSvZ9gmM6UG/ysZr1Q2yCdbMPD41jpGM8FU
	 3JEau6l/g1iI5fW3R7qcNuS8mjEp0E9GDMlz+Of9IY5Mc2H0XH28lZUO0qIH0xHRFy
	 t9TE/0sRFMkg770a4Htvr5wY15SumTKdQrrkqFJ8OquDvJILyC79xIosNXoix/fSK9
	 rBenc6GqIzjFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEF3F94CC3
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 06:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177683865369.21945.13911670059143797864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e25ab777bcfd148ff6506252e693a6f6d8d1267e80919923db30ad62ca665196
Date: Wed, 22 Apr 2026 06:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776838653
