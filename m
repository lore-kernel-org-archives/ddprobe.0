Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20539309F1B
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 12:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769515434; cv=none; b=LR6rr1ZCKvBTxpReHlaMqETL2w0feLxPef6bW/NgiiF9Y95geNgigaParJFzdLZNBmN4dZl/RUoxWZ6AFEqSg1obiwqWbhBp5snrddOz6XYqM4gzs1IP01qlLQZm198goBhdvzGzEXjtoNQ0eNznmI8y60xzzJIHF9B4/t4occ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769515434; c=relaxed/simple;
	bh=RzFFu3gnHkDFtt/Sw+BwBOZ66/sUjDr29thT2m9bVfI=;
	h=To:Subject:From:Message-Id:Date; b=pd3+xdczXXTkwbaQ7RuTkFU7NwKyEmrUT6S3V92hBZDWyDO82qyeTlCmPy7Ngm4/FvQoS4Kgm6L86//dPzFoQPiqDg2LD4/d5yO0Us6NBUgduWzBnn4fSEqlv4Bc9wZOzh9ukgY/VeUnkYYowWxvUOj43nkDOCvLvRJB7ewub7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xlv8furM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xlv8furM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73CCC16AAE
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769515433;
	bh=RzFFu3gnHkDFtt/Sw+BwBOZ66/sUjDr29thT2m9bVfI=;
	h=To:Subject:From:Date:From;
	b=Xlv8furMdfq0c7vQZdKWQSVSPIG0U2lexibs8kFomacxc45z8FZsVqtUg+/ZSQpmy
	 8f3OLfghKj0RR90hB4Dw0MQbThBW//r2tdYdUELySATjn6uBNY/ysTYi+DFNW6R/2E
	 8l3cNlJAKmrKacXIop4G/Q056kb33d7rNX27JJLtC3L7iaSHD1d/w/HFGIJEidLADQ
	 7PvY6ETEkqA7s4IGrezHiabRApwNEKRVB7uHvjtfdko5gWkZi1YXCF3CtkhqTUY3ND
	 m8qAiOnUSC8LeH6ywggjtjuDVy5Z6/9gmudcdX34Qnx9n5Xgdq+wp1dipSAGrfgnf5
	 ypoC9CRlFAboQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9518AD2F002
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176951543359.6458.7988817672260662269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 079500341f3d091afa82ee6a3f107e3091cb2e7f163105efd6b0043d8b3214e9
Date: Tue, 27 Jan 2026 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769515433
