Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F98F11CBA
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 00:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774917294; cv=none; b=htyNvr9lXu5h55qcdN1x3iiRUSKoYjLCgYHAp2h8WVtQan9V6gyWo+ECCZ502b6qOs1rEtcaSpslAOf55Bx9wFhPNicDP7jpCcnJtX0Tj/HdF2tsGYlm8QyY+ly4wGKrD4sebGIiyYS6d40Vt0Ig/6e2OasEZBI78YPp6/uoGf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774917294; c=relaxed/simple;
	bh=Wps5ozoKxtoRRXhJ7tgDQKz7OkNP7jEgprFqaJBb2WY=;
	h=To:Subject:From:Message-Id:Date; b=KjceE3kgUS0D1qh1/99sgwYo2AlRqjxAHfn6LMP5CltM94w6TkfZ65SD0qvfrUFsKR0KCZWXYUDc8F/emQvfeRUA4smpVxIwhFcFAKHPaq/9ac2kd8HGmAyZdwoC7g96O9JP6JVLZtybTLffSCTxgwH5iBYOkCZo1+dYNGB70Co=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BECafXhR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BECafXhR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8724C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 00:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774917293;
	bh=Wps5ozoKxtoRRXhJ7tgDQKz7OkNP7jEgprFqaJBb2WY=;
	h=To:Subject:From:Date:From;
	b=BECafXhRZFxCm0OiYxO3dmhoo36NGLHtJU9ErOJYY3NOfFeQ1C3rfyGXgvmiESXaF
	 KtjEbANh9RBZaLEmt6eT1cQuXwf60Kj4RfwkmktdkejdFvXvPHPdXU74B+DGO0SmNd
	 gkN4E0BXNKdiCoxd99wji/VF08Y8TOmWjhPRlPRwqUciUUQ7zVR9Sm55Ps+yXXXTle
	 rIAKKZy8Mjtm0tlKpoHHFy31NBZM5+w0U7iISWeYFeeGU8VOqj0OB68odjZbpMH7cX
	 2ivp3SXyXccrX0M/qLkTMTpm1jQK9BbbfcIOfYkFViXQiUsSq6OaXeGR6irPbDEN//
	 dyOKXfMd4/7Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EA41061B19
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 00:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177491729358.17239.10100369505296146345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 446145d26f67f9972f22dd9b0460848894d9aedc7a84027451b5a7cb704f0058
Date: Tue, 31 Mar 2026 00:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774917293
