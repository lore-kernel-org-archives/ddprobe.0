Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5F82DF13F
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786171834; cv=none; b=cuddH38AtGFOTJHpeGWYPb4Cy3WiKwfoAidv/3ed66wwFlTfCuYsFGJDAcFgYKGS3rrvOfAhSV7PeEX+eX+NzwyPNCHAVv4DOukgILWdYn31AkVP2zdhK7npsj4Z+FNH6QFa1tsRScUqDDmjbb8PXk/3l9XaV04eqryIAkfWqds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786171834; c=relaxed/simple;
	bh=KOcYnpTmAY6Y/03gVtT+e7ClFn8xiuh0qbBAkflPQPU=;
	h=To:Subject:From:Message-Id:Date; b=PV0bTd7HaUoIU8KsQvN+DOM91GNvqyXIMMaQrJ2MpzD5RboFmFuu5+6By5EEYd5kOo0zTbKQMYlzxsoxGR/yPYSyn+Cmap0G409oy0MQtjeWHjhd2vXLG0Rq4/Ul+8OtvCus0RIIEmxfMDpEes+IKStBKHNb5ergBme0IiVZQDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eqzVyFl4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eqzVyFl4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E25A1C2BCC7
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786171833;
	bh=KOcYnpTmAY6Y/03gVtT+e7ClFn8xiuh0qbBAkflPQPU=;
	h=To:Subject:From:Date:From;
	b=eqzVyFl4iJchYyQ/Q8eA6zJZ+5oPl8IFS/h9lzTNhNDlziGcypO3x/gd9k/8K2+HQ
	 xVXt5l4Blceo64MeXAKlKl4xKVnmwveCPAWO9UigbT9M86DDc3KxHVBACeDrV8FCx5
	 /AAPMDFDWvu0d+0HOAfYzZpVHLq8XtzdAJiZD0u65AWfFXRBERRVAaKh3xBAP4Ucd1
	 v7qbIpBiZcLSI9M+TbZK7qzZwkc8xp9G0oG2tjbOJd1ugLRqrUXnLbYz2mpjdgNzMw
	 GYKWCT9TQryzUTZymicv+6Fr72vbv0ry3TOh77wjGf9NZ+7qKyKzmxKwzJ7Ga6+sUG
	 Y51x/6M28gcvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E2AC55174
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178617183369.30204.8843455618376999592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 561b2a92990823d0d0f45f002f0f1082cf3069b0b9e4b623e789ba2cb04c4ebd
Date: Sat, 08 Aug 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786171833
