Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10A1F2798E5
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 17:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770053634; cv=none; b=Ub3XI+61vt48zFadrb3eC1LAvWQGT926Tnr2TZYBGdWtuUJbtW2umWFdlpGYWvaPd+1aT31wXD8GQC8GCPb7cql3bKEJHYyX3TqWbjDAmxmazgZO9DwoFNCK8IhtvN3aBUaIbVMU8QAYxZ575Yr5Q30gX1S8v3yGgPRb6GXiER8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770053634; c=relaxed/simple;
	bh=rFKvUKZwie1Sjy0dBeiU8A6iQ2wJU3tyZKaUmOKfKU8=;
	h=To:Subject:From:Message-Id:Date; b=N0YbjzYAKhbJMh9MzFuiudCsUspbDZTAtq+M0Ppe+UFFVixRy1oVyV0Fi/yRQqd7T+rlCpoVmq57eTGr6tY0F+jp3BjSdGspINUOzB3LFa7JjVpR67/sxqmfbZMYKHCKg0gOldWyPM2H7lP3W2t2SGxYLku21hG8D8CnqjZD73E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ir+DsiUs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ir+DsiUs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFB3EC19422
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770053633;
	bh=rFKvUKZwie1Sjy0dBeiU8A6iQ2wJU3tyZKaUmOKfKU8=;
	h=To:Subject:From:Date:From;
	b=Ir+DsiUsBXt8a8q07xps3/+aC4ZnAQ/3Flc7JwCtxqvQETrZsyqBZW6WEZEYotzIQ
	 c7Oo9f4FOwI4OjWBFMyrDuTKqNmzjPrLrX29RzjEhbMsE00JOnOJjXylex0OWQAbjJ
	 nsUz9TtQoXX9gPSJyYfpht+S36baG9QRRtFkl0MhWefj7Ta9Y7Rp0aC6sn//SpIU2Y
	 iu9iFTPAAt2y1BmXDVbwSntCHHx6DGG1M03Pg+WVvYzjqpryl8gKWDZexYbHBw0Y6X
	 vLhr4/ZgxUGfrQvplMzkNZOOYytmZ2WhCS2/09NkF6hLW7Ka1+cWRfOfqDKKIeqkxp
	 e7wzU5G2n6Fcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC01E7DF11
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177005363362.25651.16338078477152078681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2701d34c748e6e809e015745f43250b600470da0ad0b62a6a071fe565befe315
Date: Mon, 02 Feb 2026 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770053633
