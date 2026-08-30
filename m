Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71B761429D
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788109234; cv=none; b=gA/+T2uNrQRiPZQ5ldjEO7gI/NbsUsSgjUTwfDWLsHkmio28G/3yhXPu0oVhdB0u+6BEt40HSF4KxJoju7qLsgNoIS5FEpZ8YpR13PEcmP3xo+5WWvN6qv6+ccJxlcENrYOtq48W9HZ5ynHU21v0RQfSp603DRvVhDpe4jKhMxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788109234; c=relaxed/simple;
	bh=YL5+/bEYBjOq6SYfE48x16+LGmWtOOQ+QgoV73EN22c=;
	h=To:Subject:From:Message-Id:Date; b=SuTZQfB6OZuimjTgAvmIxM0zpnj23H8OpHGxXNDzwVNxezcK3dcXo+qbDsqrVL5v14rv7m2PvjXtjWFXkYd9AVeCqoVzAl81BiFUNi6KHSWKalyFjN7zsKKCZGpfHA9AlIhHj0QDkbl+eA5W8L89RBHYaXsgj41jx7Xeul2qyws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UD8hZ/6p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UD8hZ/6p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D52F6C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788109233;
	bh=YL5+/bEYBjOq6SYfE48x16+LGmWtOOQ+QgoV73EN22c=;
	h=To:Subject:From:Date:From;
	b=UD8hZ/6pJe0Cs1WM3Ew1K8SDdLURfEonQB8GqiQeCTXcgHaX0SDtoUyC82k7cqlBL
	 WNN1IZSed4Z8leihCQbUr9PzR6qUQuARLWBcayTfnrvFB54ukWNwmd8RRDT+AODtxM
	 lTfSmXVDEiKbCQ4ZJ6L8uv1afepayr3aNdLsvgVQ43wlqmNrNZz7m9labtCDAaaRzT
	 CIo5/y3LCww/77JpqHJO9TNQrsFL6mCdorB6M4mvL4pFW40N6I+83vAEcYLzv22ku5
	 1X+w177VW+1wTJbrGo7Md2oEroMdb5mM5+dgzJVbJATJXKZqyaOpEvmOFixlhxxFq0
	 VRrFD3om5aM5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCB1C61DD9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178810923369.11455.11870101284117694317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 176e9438b9dde9798c2ef95723fc730c7b6c5cbfea4792d8f4a99579b2f9fad3
Date: Sun, 30 Aug 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788109233
