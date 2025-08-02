Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4801320966B
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754136594; cv=none; b=ZqO2GXQQSvhuC7L7GYufNXSYhHgyLG3jsDWXp15fZQn5Azsj8VaOHXUHFdKxoCg7gABWGRS6heqm09UCq9R1yyEY+bTFLdWFI78P1p114IrNtrbeE3Q+8iY5K7anvaJq2w3KOXmosccMNZTIjktIbxRae+4E6nNJjT/FoSVoVDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754136594; c=relaxed/simple;
	bh=eyqrzFI5gendxlxDUQTCN5/qgdpvGLBIZ3gUiUknoxU=;
	h=To:Subject:From:Message-Id:Date; b=VcA5hgRTuJ4BPDSuyhbTVfISui5XttQV6n1e07bxZIKG+rYpRjlKtn059wL5f5g2i/yLZ8GCo0ICu1SODCf7wF88bBUBT9ZFTp9uHyDTF/2JhhIcJPX/G+LnCYHwwreNs4WAT9XDIKdbgc3TO43VlGS+VoPQbIrNhQXVK0L2QdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bx0tFV7s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bx0tFV7s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C76C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754136593;
	bh=eyqrzFI5gendxlxDUQTCN5/qgdpvGLBIZ3gUiUknoxU=;
	h=To:Subject:From:Date:From;
	b=Bx0tFV7sN6el+khdoASPSBEaZevxGTLVMdK7sa8kAbYwt7zacogFqLnytwZZ3wr+j
	 kleuCNPmZLWOkJYt5D6CQKlcXDBQ46DXTzAXapEFtO4hsylzsfESt82pUorDuPeJgN
	 R9m7dEmvP+BKBS17PoirgTk2C/2P2+Z1VlWXzJeyCKpHgtC07oad87RjnNwCs6kZ/H
	 8y7kMhxMW29WL2KX//FJM33ueR6Ogu0iBlKw30nQOA+rvxyBzxqMS/9T6JibcS+rW+
	 U6gkWEPntdMcYxuwHfVzQMxNK0mTNvMZ9e00FOVwHsEBIG8srXywxaiucVMsKWkhg3
	 1iXB0UIH1IspQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920CDC87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175413659357.16255.12405435330424941388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3b04c745c7c7f74daeeac8286fb5d867912e09f475601f17d4a8e5c5f26c6f6
Date: Sat, 02 Aug 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754136593
