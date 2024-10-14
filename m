Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32BB21C243C
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728950154; cv=none; b=Y7CKOCX3yUOjjDWmodQxI2lkRvY83I7Knqtq5GgJnTcmtBn/5Ozrp1R/aVqgvKSlPyIYOIb8/+gRIbUqeUBCvgI5ZDAMI0JxPAuzgaSBKecI3y8LXESWt6aREmG4Pd7d+U4sG0NBfkJGnQlQk+B65WGduOFlXIOxRsosGVCksp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728950154; c=relaxed/simple;
	bh=wb+osvPADuoFzLXdMZNOv0MeSX8CY26zzMpph7KcOuA=;
	h=To:Subject:From:Message-Id:Date; b=ZGKtEGtZJzLCPoW5aU5cHfklmpb9/2iM3ntjovuplnOZL/6sYGx1/ftwh+ckH4GsRx+y19QrdAUqQ8K0bLHytwZAoc2pYgaOEroD94j0tfkF304YaMz7X3SaGhzctyBIlGiSqyNheAXTXsboIdhg3dmsNKoHseYe4fW69tFtk+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uLCDjW2y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uLCDjW2y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5ACAC4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728950153;
	bh=wb+osvPADuoFzLXdMZNOv0MeSX8CY26zzMpph7KcOuA=;
	h=To:Subject:From:Date:From;
	b=uLCDjW2yedRjcl3ARxGYTfyLSRY+LBIaSb+RXWhmQrLa0HrXv1ynqyld2Gd/XGG0X
	 +HDsfk1bzyrhsRoIvs6kU2Dgev/zUv+DCHo5VYktJOny2infY2q9sbN88ulj5AD9sz
	 j4DlJuossnESruQ05tqs0vqEhM1ErQUxwaclnYo76BeiAMNswyd66gIJvIDTIS1ZzM
	 YEXlwRHUeoZTvGXOZCi6yhUUzrrrtA4XgBwUAi1MCDTEr9RXmAgZhkp0/CX3cY6h0k
	 VL0/Uty3fbYEq0RfpLePUZLM7ZtneVC9TpWdMHf3h23dPzDMNqayPZLUdJaXp8nqRH
	 /y7lM/thE4bPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973C1D18159
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172895015360.5010.5946568274204209111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10ed68f96728dffa10593216bcaa248021d7059b82e32ebb67a0876b59558e73
Date: Mon, 14 Oct 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728950153
