Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E8841A84
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 22:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707689297; cv=none; b=rDBJfUWqlxBRcW1Mc4W3QUSNMzmfz5eoM5hLj24uDmimODzu8IsAk2kjLqNCXq0/GcxJcBCCeeEOIQqSTx7D0Qy53Z5zjIN71Y9m3Q3c5p92AHvrTko5ZNn1smDcqjaKglof7oPSVN/yl3adhtZ9JTesqkMaTYOKoXkMjji26t8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707689297; c=relaxed/simple;
	bh=HWpjkOPen6+HLacf5Ar8PfoQcOyT7bjbqMqhUh9eMGs=;
	h=To:Subject:From:Message-Id:Date; b=B+R06C9qr2t4ksu7JOlMXrvu3Xv6/mhxJ/nkcyvO09/rFyrDx1V925ricIgewKLxj1EAgHCIMCZtfN0B6Z1HfbJ9+Q/Gmad16KsddUTLfNbrPJ4HMZYiQchVwzh1ZPXaH36B6Lm/wcZe7IauWidoRYHgdQA+bYx2Zs057hTZ3hA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FQu+7f4X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FQu+7f4X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 790E8C43390
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 22:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707689296;
	bh=HWpjkOPen6+HLacf5Ar8PfoQcOyT7bjbqMqhUh9eMGs=;
	h=To:Subject:From:Date:From;
	b=FQu+7f4XgXZK3ZKIRrVr37zVBATDnOn0esf7doOtPe821a/r0WClWqlRvm9VhDODT
	 EhC+ZDZgImCZmbH2u/AtGEwxMdnrL9DxzpSCyLv0wwvD24os5f1ff37B75543GsR2P
	 W6hHW+LK7umR2gB9hYbNy5t3PTI17plLr+qVELwnhxyr2RB5UrjnONIT/7lRJhkUWq
	 VbIjRc/K0b9Y89tEFFRrzdeJNdz98oUWgaYFXFrJGfA3XKEIoOMBYXp6Zjr9PcfZU3
	 lrGPfrYfOjRbHi1ukYdhvkYWuXmP8VE/pmC0WezfZ1Oj2BxY4Uvaql73k2Q5XMpqx9
	 HXwJxyPMX+rcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C43BC4829C
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 22:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170768929637.21244.4631282971518686899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a3758227e1711600509ed780a5b61c2bf08b7b543e403a92efec19504820437
Date: Sun, 11 Feb 2024 22:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707689296
