Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC570221F20
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760608193; cv=none; b=iIzc/ozVJmqE6/26hm/pfYIzmtseJo4QGi7hfO3z1/MTA5oUF5S+fCQ1BMO7Kn7TUTw3lU97jN/Z1dhwMR0BZ0nQ8ovVVA/TDUsDceC7GYMmnwGrPZWlNVLIBEbuB4ODcTuoMJpxZboebBgoRrRU8k6Ficq7KFyosrq/HLgzUzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760608193; c=relaxed/simple;
	bh=NMKv9Nr/kE6NkTymgbLWaUGNDTRM9TMcoqTJbBlcx5Y=;
	h=To:Subject:From:Message-Id:Date; b=omKWJuZyTlz7EOxwp5GUVgqZN9qjTzaG5ZQ+VG7mTMwVWltBX45+KsD7ulQYpdInWDRHN2ahpvg9D2ahVGQOSTavzwR5+PFta/bvsM5AVpJmthOktwEwWwDmioT0ulDHfZboeYn8v72GmeocYRhwJ7cnZFYpXeRMFJMBs0rZeUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CREGp+0a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CREGp+0a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFF1C4CEF9
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760608193;
	bh=NMKv9Nr/kE6NkTymgbLWaUGNDTRM9TMcoqTJbBlcx5Y=;
	h=To:Subject:From:Date:From;
	b=CREGp+0aoKUmaFgcj5gP2go/Xvg+J53VuqR8mnMRhCJnGgV1u4bDaJ7WMBnZcMvpC
	 0XrIj45RZbj0Ap8LqqnkylCNAqMv5uLw5WmVUA4lqYjkeBn78uqgCxKQ+/PwdzRj8y
	 uDDUdP2DNzLaFXlzu5150aZaQzjCiFRg4eOp1Lb3E3ek0Gpcjg1LjpzCM9mHOyUhx5
	 618U+GRi6SKVmkVu0YKU0IxYbSEbK/RwR0A2yRSvUeskDZJN/XefQIgYUXw6bIAlhS
	 AWtVUEYNzhCOXHb6PjLTaKw9+kI5w7wNEljsiwEGFDUE5FKBxNjHK6nK7oFpRIqqOO
	 bSDsMbRGOapEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE17CCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176060819357.30769.14553881144189695749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96e515856dbc2474f43efc6c44c6a9dc503558b9527993835006b1a02797e4c1
Date: Thu, 16 Oct 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760608193
