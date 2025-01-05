Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDAF512BF24
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736108153; cv=none; b=YKDxNEFf+7a1fXkUwmA/Cyyhdsc5aNBEtQAZSb/GqHviO0vKmprpYJFJBDAGnUei1nrn28xkxG7h3pcoWVdUbjkTHqXxW7LTRUgU0ng7bO1GZNo+uk4RfoFc8QZSEEZHTNpYEI1wGx7LyEKzZTHTU8dtZ0AtdXuHUngN9VX8eP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736108153; c=relaxed/simple;
	bh=HXLzI13X/ITAYLoyGnRIwM+gULq6J+rbj7FM9izAt5Q=;
	h=To:Subject:From:Message-Id:Date; b=m1FeFeqF8zFFZaXasVkQ/JqXc04a5Hd2K4+xqQpJHl6crujcLuAVNuTGZXsE1g5vpEL9CBHBacbELKmUlI5TuUyeIVFit6X5mreyerj6bGoQhx/GWXgILMLdwiZzO9Kaq+YQRbUh6Zh1C141BPj+zQtqhWQb8FRgV6PPna1gRk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=exY4DgDA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="exY4DgDA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A413FC4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736108153;
	bh=HXLzI13X/ITAYLoyGnRIwM+gULq6J+rbj7FM9izAt5Q=;
	h=To:Subject:From:Date:From;
	b=exY4DgDAo8jdWsTo4otIOyf5X3QY6ogTWs/EnQ9j8743aSHNXq3tuO/XLTlEnPeMm
	 CqoxG4u+BAIjov7pldxWBUvDiVwT4faQvOkRYgJv5KH+rBTHAKxEIUzhzTGATFnkcz
	 w3F66DJApjEM8t2tWfi0KZw3oWj3VVzWBB2xnd8F+3zIT00wgH5VFMg9E6DCtWeFkj
	 DcG8uBh3rLmzivpLs7X9L9cdBkvTla5iwba21Yk8akhYvY3VTWJHBMNJ/DsqM37auj
	 /74FldaSxfE3k6arB0ZTcv2X7jLA8tUxLJa9WcXVJfh53LbYrGTVw4XFpKtX1Fb+/m
	 QbqRjkPQuDFiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAB1E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173610815358.11234.4372353825383496769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b0bbf101c89ffd78a28347aae7233d19bf1e815059f9d544c07991de843aab1
Date: Sun, 05 Jan 2025 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736108153
