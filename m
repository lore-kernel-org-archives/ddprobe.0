Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE743A8D0
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721651754; cv=none; b=nl+TI7uArPEb913s5vX+k7ABmuXcgYEB4VA+2y4xLeM6/6YPnRjjxsu/EawoVyJiVcpY9h7CBgzwQnnQQrc/gEv7WIQU7XEauobrKhUohGmuuqRSZuucxeNQSQhdWup1c5uiryQG1njNu5xYPQjGI4P5gkuhLPL0L1pcM6oyT70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721651754; c=relaxed/simple;
	bh=Vb1EKfzmeIj/WCDVq6tm5/1mRDHpUegKPkr5pQ0c/9I=;
	h=To:Subject:From:Message-Id:Date; b=eUMjsIP9+RchbLiZKX7jXAqXgBBZMPcAEfq9jqCFGgfOZ+GKSP7XB5tTnJDzjStAXcSbs8cCFhiaZpO1pDCmPu564XJYp21o62xglG7gdRoYFvYXkWg2SERZrx4M/iOPTJxYm9qIWppoVzFlooIIJYVZvFWgidHca5XQEOXLONw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q8Q9ccQE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q8Q9ccQE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A2DC116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721651753;
	bh=Vb1EKfzmeIj/WCDVq6tm5/1mRDHpUegKPkr5pQ0c/9I=;
	h=To:Subject:From:Date:From;
	b=q8Q9ccQEt8O/g6b9/uOR+drrVaDwEhZPv9nZkiJZTGqlBVGRArpr8XTZOCUtONy6L
	 jCcLbfjcpq0bx87KrEFeOC8wYOTgKM/mZEFn1Wtt+rkPVJg/VTNcvNYiCv0/ui68/Q
	 cQSYQZDettS8JLAZjbg783E9EJnuKX/2zIP0CFQ/4xpo7Ym8LhfMwhLKPsKq3dTslf
	 s8Lb8uHge+wBctLEKFjIkOMf2PLQcVsUZ6fQUZiuIhubEtn93rQKS4x2N0KFn0mpZV
	 cna59DAUU1cphdmVuIxdU72cNWqcwQvi38YYSZ8FC2UyiJ1XfIuKUtMUvFRBbRuE44
	 xNpNWwv1yd6Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988D2C3DA5D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172165175361.6277.7879829939107297510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 691117b4307b1200531dc1d66e604ec5f8b48e5c5f62559d402f2f53aef1197f
Date: Mon, 22 Jul 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721651753
