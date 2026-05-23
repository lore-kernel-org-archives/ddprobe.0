Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05A62348445
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 11:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779534754; cv=none; b=t+LndzTmqAeb5eE0M7SDONArlmx45fAbZ1Q47iYlydYhnR2NZjSwVM4gKenVtvmjhueXqh/Kr0PlTRmNI+0/ck/9oJ95d6zJnL8Tqy+Ko/QSPbUzWkJHFNT+W03WJW4NrCe8RxpKsmcDfZ6cvMtKsfO/5rJExKw1Hc607czsfL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779534754; c=relaxed/simple;
	bh=HVRREsCMupSBGIliDalrj0XN45RSkWcrEsaE1VaOJms=;
	h=To:Subject:From:Message-Id:Date; b=Q3ikCHh/BP8EXzS+b9U7XK8qL8GDpVimVow9HbjUu5WNjt7QmZdtHL7iPLqD+wMZw5vItTeyq4IdA1Y4Zr5oFhr22E6go/4rqE07IufmAPVN+F2ZG2zNgD+T5deSWWvMiC8PKQpUTC7HuGs/pgy53f3OQzdAfkmDa9CCNJ1JroM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bvAox0xI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bvAox0xI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6316C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 11:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779534753;
	bh=HVRREsCMupSBGIliDalrj0XN45RSkWcrEsaE1VaOJms=;
	h=To:Subject:From:Date:From;
	b=bvAox0xI9axAe5lQmvM6MksTkpI7+WCzf3vFsgQZawRKs7bLTRYO0a32/+dxLOahv
	 OdoWhBmrjJ7/hY6MEFc+InczF8OkmyVl5f+9tZpGXEbJmJnqD6owmsbzU1ezVljlFs
	 7APxfd8R8p3l1XH5q1wluKQ8yT+JsYpogdu8N90Dm1fHkrQC/FwOtWrGmyu5rjDg7s
	 V3KOSJQ/8Spflx6Ame+Zwbasw+gHAO8+uMVhZHyELqE67loC6KyiRYUWporhYX9w75
	 GN716V7sBahbc5ZTupaqvD6DAC1Mkj0X5rzUK/KHsbXjAlh4MDf8fyvNNEjvocPjJ7
	 rJbyDIC8uOnxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA39CD5BB1
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 11:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177953475368.12214.12607145047246474091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d765a8e7552edda61cdd8fe79da90f24a020d642d7b0925f1696458d1df983a9
Date: Sat, 23 May 2026 11:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779534753
