Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A679254AFF
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 09:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764062574; cv=none; b=GhFTdTRs7HH6yIrPonUAfg6ih+Ku2pHBCNxVvgKtwpPCsgPdUs22lNNlc0O4YyAZsPxpgH8OSMEbKwzVraEVR0YBCNzG+pGDynOzSGnz0Fc9bgyV30EACYvSIyWwix03FbbMw6W//Y/NZizTWBspk/jtESByV3f3SZGMRavd9K8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764062574; c=relaxed/simple;
	bh=KFF6U0/7qIc86Hb8RQbOyqoY6GG1KzssMQ4uKNv5nc8=;
	h=To:Subject:From:Message-Id:Date; b=W+sneAugtA+2FKGxkCpiZUgX1wpHGQ/7hdtL4339Gz7RcYIExKVm6mIQeK9w0Gt/r98Lq1Xwh77dEUBhSZ1TiqwLCYiZxJpP2OGjS3OuuhN3ecNidAqudmniZ1o3G4su5eFgIhCviaCbZysHbAmDdKWBLNQwKnWoGZG6fctZzAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=spNBi3QQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="spNBi3QQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BFEC116D0
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 09:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764062573;
	bh=KFF6U0/7qIc86Hb8RQbOyqoY6GG1KzssMQ4uKNv5nc8=;
	h=To:Subject:From:Date:From;
	b=spNBi3QQruJ4vW63XWbycpyZ5gs5QcD3MZdrl4r+/9hTLQJqPMw2B+UAH8ee2CIXH
	 Rzte1T0k0wmPa4FZ4tKQHsWSpzpyZszs3ybxAV29oYUfU837oEQ3zOWSr97jOAFrN8
	 BjoKx6bS09XklJq14lcE5ZXIhGPLM+IrFyh6xTWRHr6yyXOY6V/nyw9rKUcQrvqzRW
	 pABTGhiHwL/k30dQPB80sbUF43I30NncHgUW6wDH4GG80KJHLIK8npuikqN3Gsu53H
	 1GNgRp3mJoZ0n5CMvCkf3sdPLnoHqtopzjNmey2jLyJadlXkIscJPo//ukiy4CIVpa
	 bsO74/oTUlPVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93695CFD315
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 09:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176406257359.17011.16673604251106651592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b40a11482176a97021a3cbe92198edf9d6063c325d12bf1d97d672d8c70f086
Date: Tue, 25 Nov 2025 09:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764062573
