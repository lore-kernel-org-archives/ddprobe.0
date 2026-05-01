Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E173932CC
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 11:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777634254; cv=none; b=VcjmVPjThXgAtPN6qvJQS0B8wkfN8xvf6Z5eRlAQfmDoaG/t6XfRsz+gPpj5PUHTyG5TMlPzkjfGEw59cqTdZe10FacweravC1rGjiFmaqL8ZBen7W97RFIbDoO4mzIZ3wX1xpY3slrnf0R1TR0o7q3gAWnrkvof9cUYS+BM9q0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777634254; c=relaxed/simple;
	bh=HpFXj4JobVhemW4qLxKb7F5SCO88rwDLwbVdsVuvrKY=;
	h=To:Subject:From:Message-Id:Date; b=Fc58Ddhsthv+kU7cLvkmiWndpNyee5ZSIWAw5nVa3WnBPUrf+Fy4kIaMc/nZsepYKu3q33RgxkDB6YXWxFe0kIJ46lnTp+q323VJtYAAJuqFWuJsxm+v6LS5hweaaYZgEPToU4VSM1pvbGlKdQKs/CMtZPgWwDfCpU/t34SscZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MtKsq5hd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MtKsq5hd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF728C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 11:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777634253;
	bh=HpFXj4JobVhemW4qLxKb7F5SCO88rwDLwbVdsVuvrKY=;
	h=To:Subject:From:Date:From;
	b=MtKsq5hd3QoZYVBwImT1V8u2B4KuDtbWXlAl5PALn3H3wk2FR3G3OWy5g/uybwxhE
	 OJ//VHkw50DrwqX8XojJSK/FzRyFtrpsLnG9IYS4gPqCt8WW9MUYhl2mtEpnz2nbFZ
	 U6OHoJY7jPe+ygI1/cDHGU7Ze0VmFh6DcVg6d9bLnZW/S+/asTpNbVIpWN8mNxRHii
	 3MmJWVecCQ1TYqVBzwB/u8qTYu8Bi3ho7vNj7336AyIcUlWnVLSW2HHXy+suSaFrw/
	 WSplbXRdb/a9ql7q3f+VxlJHV1nvgZ38xpD8vP1nr0Vdld4vF16xcOq1mbO1XF1KlF
	 CdCw6fbZD3hCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1033CD3424
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 11:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177763425369.9556.14825034226018892621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ae9abe76d8f00e203c066a08661921f46c53c665d28f54ae33b2f3f84792281
Date: Fri, 01 May 2026 11:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777634253
