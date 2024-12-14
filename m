Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3387418AE2
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734189354; cv=none; b=IitQR4AJuKaWAKAz4urVqs53eT6oN35rJ+gLANEa33Xy3nkDwvW64VthRZWBCKipNCq39woix/fWZb0pj6rJR2fRwCk5D3ULrbs9gj9VoagfgqXxkrSxxxNXR8qgxGBRxuZlj4ztzispgnSR5NYJnaDbLV9F+BnkK14l8Vzx4sI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734189354; c=relaxed/simple;
	bh=hOxiwW3vmbMhp4o8XbSYPVNZ0vKuTtiG4vtGrvHz/6c=;
	h=To:Subject:From:Message-Id:Date; b=sCugIcQ3ZjJEMD3qkG+juV9x7jMdfzNzXOskpUPnIEfB46KJVzq7G6t3TFxjVU0OoOm2IwNtMX04gHKAUHq4A8NeNESK/o4wyLmHe7scCZwZ8zgE9TxQ9p4ldk3Iv4761XrA1HnJr1ZabNK7no7fTZPjF36zUC9p1oCPR+FccFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ph/7W3w9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ph/7W3w9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF234C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734189353;
	bh=hOxiwW3vmbMhp4o8XbSYPVNZ0vKuTtiG4vtGrvHz/6c=;
	h=To:Subject:From:Date:From;
	b=Ph/7W3w9LZzQXppJwZAFOi1tLHf39JwWSpe9t71MvvXU/iMU3hHtvZRm5se8DWxjn
	 Y4OUMTqU03sgC/JixRW+erJjPXCbCH+Tys7k/UQBD+d4+pqMJ1o8kF70gW99pFOazN
	 UkVQyXSswfEUneugLG7qrNTA/zsEZxgBBOygQAKPlib21wa3LESFcsWTU9sigw/tQ+
	 0KK3M6MdKHmtx+IupAXZHPez0CASoFEjEt5t8ZknMMCntUIvTjonRJcLd169vWhAgW
	 iYTuQiPnCdKsshxdczDGSXYD0StlAOJDAgsokwiba3T/S8KZUmWQJg0x9eJX1kfl5r
	 tLmoqKhJ+KfCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98312E7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173418935360.24608.14905744646701403829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 132ef05ff57ee9027d9ab9c0746f1819cd0384941f76391ff84d4a7fb119a97c
Date: Sat, 14 Dec 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734189353
