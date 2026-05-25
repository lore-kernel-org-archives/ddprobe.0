Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D88C282F3A
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 22:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779747154; cv=none; b=Ftog7Mnx35EJya+EebR9FKGs6TKSRiieXkDiG71QyeQUkdLP6E+YXDbep7kUUiKoocghEk5v+JLeOcSiyozavSx5Nk+Qmv03H8wybVAiU/jtfLQnfUg9lQ1M1FHWBF3aK3zx5bPNoJyutykvqxnv3VrOs7N6hk1udGlFuJEHCsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779747154; c=relaxed/simple;
	bh=cWOMKvS7sPgqpKQPUxl7XCi0jUad0+I/oDG978A3ens=;
	h=To:Subject:From:Message-Id:Date; b=m3nv/KI7riDajqvMY59BdzaTmWmJYBNhBxB7+m8oor7hmZ3g7hY9xrtgNywBbG3/C0lYNlCml4Hq/bgZoMjJMBquOCyYukbA9bfyeeAwNz/CbBHB1HZNPMGv+CjjWlyeGkB6eXYprlZR5r82PSfRgVxkzOyOZUtAH+68mx4jpFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ltojwK+i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ltojwK+i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C78FBC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 22:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779747153;
	bh=cWOMKvS7sPgqpKQPUxl7XCi0jUad0+I/oDG978A3ens=;
	h=To:Subject:From:Date:From;
	b=ltojwK+iBBEVx/50lrVxuY8JclD7Vv+9khuS9+XTdIKyIZ5UKAsH7HBKLtkrZ6/00
	 aRJEoEkIChI87IyamT9/3AyZP7/ZhwyXv+LWOwH5ohaabD6uI7bW8FP7Ownqp9eLbZ
	 dKhS7nEHz/bsfcfddrrG7s2MxZugAPbAxdwko3iRMKj4aKtcaBZz2AuOvxn2tAQY09
	 7ge+3uzq+cbTXcR4Q7CDomTSODLK61nVFEYe2fTgZpmgfoZj+LtEwzPkd3TzIfZZmR
	 YN8PAY3A6qv7RXomnZMNXogkuhWSZ8d09scZO2OxdCgiDubQvsSjmFk+MxExNWHLM6
	 Y4GMzv34QJ5BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB569CD5BC9
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 22:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177974715368.27010.5043506780664822171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7560a580ff8f5c08d77d13a98e3e3b76f650c15eedc1f0e658df50e570b6f7cb
Date: Mon, 25 May 2026 22:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779747153
