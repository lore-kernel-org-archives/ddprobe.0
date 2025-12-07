Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33847284B29
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 04:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765080774; cv=none; b=qdqhodMtsCPbR8jKGiIxGpVAC/KHZQ/FQht71aOb7dlXquYK+zlWqLvS/6Kx8k+bDX54izMG8T9PS9+R4za5XShqnlVlwmBNT3vlgzZphGipFO91b1EyoHZtx/5TiQ8MFTEjjWeD+4vmVmPrw+SapaeoW42JhzHfBkEcjPwkssY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765080774; c=relaxed/simple;
	bh=bwObo5wLzRmOxCGYFSXvrS+p04Uuqio0zRfxvpvuFgM=;
	h=To:Subject:From:Message-Id:Date; b=tbweQz23kBff3yxqmCe6soY2MPWaHWwrPVwIQKcdkHJCp7/NypemL30+oKRcG/tOzfVHw+Bv8l7GHlhHMzms5yAWNhtMJB9mwvbpY3Bo76k1G252jtZ/UQ+F6Hzh01oKhzHf1fns1eDGckTOlawp+XZrqpIaoSvAL9y3MrEhRTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=um0BaY6q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="um0BaY6q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC92C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 04:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765080773;
	bh=bwObo5wLzRmOxCGYFSXvrS+p04Uuqio0zRfxvpvuFgM=;
	h=To:Subject:From:Date:From;
	b=um0BaY6qwRKTbpmyxKRH7LYRK8jrqUQPBuCPBpLDjR4FAGE8ZEqdh8YuOXUOVvNdP
	 VlBlLpD/pWoMo5hPAkLr55kREmLta2M2WBU1+i/lDYDFH2cM4vYNSWbl2HriPnZFYj
	 RlhBJQa5ufexhisvYeavl0dd8UdhRlHW0YsVn5RGxk7s8G7agNJ+rkjdajcHvhHdoS
	 QLu0wfpyO49jrxyF3gsfAjhdx71Bb/2TYcIrXHRUc5vKUcIawcrW83n8RN7Pd3Jv5L
	 ZdZEfgrzTDyuytNr+FvYaOv9LOq6opdDcdBjTTVlBcNP/Ghr4rJ0JXpgspcuubwimY
	 WmDs67Rg5sDmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9829DD2CE17
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 04:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176508077359.2803.5457217751884888013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28656970b790a4cb4af29ff54c1e1bc5e711bf8d1c17caeb0e08bde58f021d87
Date: Sun, 07 Dec 2025 04:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765080773
