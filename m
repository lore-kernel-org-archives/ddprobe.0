Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42235296BC5
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 17:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768065834; cv=none; b=TRx/mmeEIhb3adhTX8SUj97mUqYgya3stLZLZ8LNMss0+vV7wNlVatKNrEmMNtfi55gmAMuLJcn6t3uYdoEbD1IU/8y0fDZgKvFwn8WWY1F8NsQeX8PvqlAJxBLha+Q6SnQqVVQKl6YlJa1wB5hvfiqpauX170umCxSSt6y9GBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768065834; c=relaxed/simple;
	bh=WbId0OQqyvYonpPCDaapMph7zQTSKELnkJpzEyCO5JE=;
	h=To:Subject:From:Message-Id:Date; b=Yl7XQK41wJ9i93LzIQdHS/J1Q8njLXnAfjxmoXkiMJicSaoCNdr/Xt8WW5AeK/j0Si72vXcUhfbeLkJTIxuwHALzHSf7sXHRvI6pkN3T0kfmuYpDXLaLLJkw2EtnojqjRgL2LLeCvpE0f28FcCGWk8gyPHv0qBHzeVy09IEym/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nv1eXrIK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nv1eXrIK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E32C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768065833;
	bh=WbId0OQqyvYonpPCDaapMph7zQTSKELnkJpzEyCO5JE=;
	h=To:Subject:From:Date:From;
	b=nv1eXrIKGRzWzJF85RpN7SmsRsMNcBYsBeOxTvZhTMGSJOFDr+3JT81M0PrOUs7CG
	 zUTGaZ+WOUXoBVXI+eoPcjVcWepFCvXRN2R8o2/xRbhIwyElXKzVkwQ+WPiWQpyCl8
	 FjK6ywslZ3f+N+EFe0l8nfdRklI8Z82eV+adoU0x243sjmVUpZu/171fBXNQS/xPj3
	 SmKcspLxUTqlTl1C1d8hfw7qF9QmPzy4SEx3tckKa+SEC6h5r5802xAwVTlO4mg1vZ
	 z8NVE/ieSvsfg0+dlvB02lJickRoYpxA+3UO/WvPpLF93OVi/3Q4lYMR63pPZmadNb
	 W2546OKbyNZUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90457D277F3
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176806583358.25400.1168991122783816741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a37f9a5f024403116eea6e37cef9aa05229acf8fb0e2eadd4ff52e316424e621
Date: Sat, 10 Jan 2026 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768065833
