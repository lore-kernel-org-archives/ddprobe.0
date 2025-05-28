Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38318322B
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748399994; cv=none; b=Hjq5rhy2ktS4FCpbUN5K9gf+iDrWEkFk1KywNKLqQ0dNjZatyGQ7+xjzM9SfVYX5vHKjMHXnR5LZ9ndqm46gUV2RXZRa52Ar76a2np1STzyDvkpFDxM2nT01CtPL+BduzBUKs6W/qtAAYu/xq4X8NVw7Th+5FcIOigiM1yTQyKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748399994; c=relaxed/simple;
	bh=HAAXJIVaaq54b4E5YjcwBFH9IuQq+rOLlZ4OzKxu++I=;
	h=To:Subject:From:Message-Id:Date; b=Jy10YR45J8yOpPV/2uuFlvW6ELAuKy0G5oeRwlVBMry2m5aNSq1ZX9g5CQMbAT3/aFH8cuFb/vYGOadlMisjld4ccT0qWg/yAlZSHFymGEQffjwp2fHJR9bxkwEurtnaw7toixVUq0vTOkf4SMnICE60/1Dy2ty4Whc1k45cRuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p3l/3LE9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p3l/3LE9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B58C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748399993;
	bh=HAAXJIVaaq54b4E5YjcwBFH9IuQq+rOLlZ4OzKxu++I=;
	h=To:Subject:From:Date:From;
	b=p3l/3LE9796zr5DnVseS32ijVxWiYmmbQhfb2oxeydnYmlOROlT7aXfNsiqm+Y7mh
	 O+z6hgDSuYqoXNmp62e3W9hc2MNTy2BGeYz9/obueJzadW3uuCZ6R1zAJoOlimJW4D
	 rV/YG8QUtSub5wb5CfVWZG/c4dDugfsstr5GsaQnOWgkpDinYtIno4xBVwHsIgahod
	 m62cC/eKtnoih9STxeKg5wI9BPJMvD/rZGjWpxljn+MheplbL7tUQIn+v3VznMRg+w
	 2IvXqghke+c2+9H/y4r9VEUpTgpbADm5goy4ChbrgFDDbUObLtItBAeJe2GTaHGihC
	 r/YPDVCINs0bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98534C54ED1
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174839999359.8231.15151025903496825918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c926e554223e588872f845a8a0127592557ce108cb4ae46c7f43cea836732f6
Date: Wed, 28 May 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748399993
