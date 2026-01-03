Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36120214A64
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767469434; cv=none; b=CjCQDQJkT11u9qKe5oG+bJiIm3275Nbj7g2ht1XbQKB5/6yzlU7z5kW/hZaOG8XuJ8tLeoobZzDJGUfsUQTPzt0qwzUalOOVp5UOpA7Ira1y4kkVdiIo9sglFhsxoyfT9MxbWu5fDJB7kYbPhLF1oGFArA8MPHJwIn2Up3d8IFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767469434; c=relaxed/simple;
	bh=hsRFh21/UXOWYpt8pzd4z8FceF0sFnavXVpzPEtHoOM=;
	h=To:Subject:From:Message-Id:Date; b=TZIUmIeZUAaZ7PMIoVQDJJyp9ESikNSILN8h6GHZHLYwLlgpKCIkEnWxBrL+WaAl3IvpmpJektnL5ow9kXz/6m4ZJvmOz2vtfFKi/mmZcdDkfUYrpv3P3Ih7UuTAHgwZ9AGQ8NwzZ4wmudM+Io/Sw2NNX0Kt5nxG2vRLrL/C9qc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PD6axt7t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PD6axt7t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0253C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767469433;
	bh=hsRFh21/UXOWYpt8pzd4z8FceF0sFnavXVpzPEtHoOM=;
	h=To:Subject:From:Date:From;
	b=PD6axt7tCULlGarXq/ClsLY4GxqtPYOElrR9U+r0imoR1JYfUuzScNbkuhAl8ttyt
	 gGgTsnqW6Xw++yXHLLSC1NFiq72RTlLuD7hCF9JTBqfDpqWLcsYyTWdtwN5DYGaACP
	 MGYifu6ST6vcIN/RofV/wccolzNlC8n0KqNFXtN2N+emSdkp1nAfY67/8FrQSGTg5e
	 bb3gAwoMTE2RkhYt6vgycyP95IEs5awwnJHJiUCJz9gRrODjA+mb9qtRRWVo/hZpP5
	 oHFLXV3DokfvvAM1GG7nd/l+3NaMBWvLfyPCEsZMg2XmRDBSSvPI75wyV2SDCicFDX
	 G2uef3ySJM9KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3B7FC6160
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176746943357.947.606078188315234086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9c15069cd908e8e048a8a3d06409d85cbb3ae7af03d87d84b4eafafac91a7c7
Date: Sat, 03 Jan 2026 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767469433
