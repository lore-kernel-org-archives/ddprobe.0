Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 523FC2DB79F
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791966034; cv=none; b=R4jqnW83d8B4echfkhGsf/43cow7ds/bY5ZX98vYXfEx6/vqINLzX/FBSz+JAseCWbC8qVyCeJsboS7NpRKHjveIzFJKee4BPYu+3tNsZi6iioatmJ6lameOW7ZfHA1i/ChFgxEt2FAylxhYYiiz+U2LN+hvjyYN5utmqyqOBNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791966034; c=relaxed/simple;
	bh=eUjfFIWEaRF/jbqZPuepgdhz1/QUcBYlpx5U1wGMVT4=;
	h=To:Subject:From:Message-Id:Date; b=fgT4Tj+nyy2js52WYM/lhX6g+i8uvxh6KUnfz4hI30xqX2CgaTHTO0BA/MhtY/y2rg2U5yMs6Yst/c8WPmEWhxNdoMYmTwCDJ9vin+J4BP2AzKe0YIaDxVg7i1DOkfvd0EMXjQccACIdxnvERR2FtAgpLLxxLO+Jc10YvLv/eos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mp0wZ7V0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mp0wZ7V0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5AD4C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791966033;
	bh=eUjfFIWEaRF/jbqZPuepgdhz1/QUcBYlpx5U1wGMVT4=;
	h=To:Subject:From:Date:From;
	b=Mp0wZ7V0usrvQrAZNl29GwbJhFL3Jb6d5yQacW7Gg87ZE1ydph1FBJgRCbjRc7k0B
	 5wVRFxDIS0a7lcHj9kuF5dizs9Z8I5QwI8FKZGtzwFgIXFP6I1UyzggV80o6Vard9z
	 2pxLx0H+5s/6rlJACUsOR/Frst5zjgulMNkOQsv5eNlSD+GEPg90uOGfmUOZIE/I+Q
	 96OdhZkFIistceOeZBv17usI4dfS4SDqCfazlQt9x0nxDL5fXwW9BH71EsohBZcp+X
	 UcgitPK2JQjswMNZafUMsesZ5kvLGL1ZD1qcg827Tg3x2po4rsGtxADdfj3eAvNU3N
	 h3tqB4+2lwJeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC86CC6B1A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179196603370.29952.17070259050862758513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63e70784ef4150642a2a48535dd18a1d0a814fcaaadb4fcb4e33f9a696c5367e
Date: Wed, 14 Oct 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791966033
