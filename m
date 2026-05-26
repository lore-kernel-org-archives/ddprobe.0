Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45501409132
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 18:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779819154; cv=none; b=g+1K9a8P9ofl1jiKDnD8sqV9B87hxF17xiJC6Ui9fM98Z8JccpP95n2FJsYqiYbJfLy12pPB/6E9GMT0g2wcVrm1NNn1skwqs87+pREJ/R+94fdQFUrVgzIZsUEL+sOKP6v2NdjcSTa7PGHrou0ZoQaHpXsfSn0Y06hUFgQIQ+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779819154; c=relaxed/simple;
	bh=dR7NE5mliJmW8DtB1tn61TuzCqOgG1YFhmRUB4ysrM0=;
	h=To:Subject:From:Message-Id:Date; b=ja37VBFeQE2MHbwz96U5u7xmd26l+l7D7fnqNezV/T0KpV8FeSGiRpcTnUigOBZyLmonxXRzS1K/u/4r976PvFST3HRwx/tMyJyl5TyDOfl/1RniwUdbibGHzqkTlNL0wg0H8p2LhGwR4lrn5ZgDzKd9FTDd3SfBttrf8DLqhTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G5bhk8DJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G5bhk8DJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D539BC2BCC4
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 18:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779819153;
	bh=dR7NE5mliJmW8DtB1tn61TuzCqOgG1YFhmRUB4ysrM0=;
	h=To:Subject:From:Date:From;
	b=G5bhk8DJnMN+m+VZX8uHsfxZZ0DJyEygJmkWK6AQ0od1OBAicxvn771YJU03FWftC
	 qHkr5/k9fO/dv+D318npWQ3P7oX5CSZ/b5jNb2/LNrmjDavlzTgHAqHnQe1HblIYEe
	 qUMnAviYBzJd9Hny+c1eVjYDsHwTDhsnCtQeVKqEhkWXzEt3+Rp/oPbhPEwuw7uDyG
	 IwdXdzFoQFAxKNu+MsqiYr4sH8ZJggP7lQLdXWUvLGLKckvgc3AS4faQmyfPs0YocU
	 +2kKyc4K/u1dx7dheWaXmoMgYGgBH1o06ZRnCJcCZF2iD9tJKYYFxrM6koUXQJMyNy
	 4j8CyOEPMbnUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8C08CD5BB1
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 18:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177981915374.10184.3099237450343497814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74ab9afd0fffda9a80a4600e6246ffb0333edd8d051698ee3c661e8a72585b61
Date: Tue, 26 May 2026 18:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779819153
