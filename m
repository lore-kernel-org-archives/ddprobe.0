Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AD795E091
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 22:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719785663; cv=none; b=SzV86pwzxbK2gVahfZqFC/eKr9ZLzBVoUzS7hSzOf1NnYBKD44xWnq88OW1QMKmmaFuvufMJu+y85Pylx6J11Tsrl8xC7cMZR8n4ZTDP62kH7t/rJMRpeNuTxoOQGezUMa6aupBhvj7tBAdzzxq0AOhAHDR0YG9p60hghQVsbxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719785663; c=relaxed/simple;
	bh=Yf5HboqqyminppQHcbS19HidE4Eld9DHeVuSrSY8O0g=;
	h=To:Subject:From:Message-Id:Date; b=aP9iml02v19KnvhivILYbqzYBEkR6O9r0kpGZuLhUksa6JLESqb4UQoOQm8J40XSjMUKoOjWLXM2xsyuy9XOI8n4U8lz5QRM0c1yg5QTbM6Ktwsn427UiHOefbIoKGRed/dDjf+Je4WOPT6hrDDAU9Atmd547ezKhT9O7H5v0KY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D0MfY4Q+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D0MfY4Q+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E030DC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 22:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719785662;
	bh=Yf5HboqqyminppQHcbS19HidE4Eld9DHeVuSrSY8O0g=;
	h=To:Subject:From:Date:From;
	b=D0MfY4Q+406Xf5NTxn21zYaCLJtiDJoIdysv1wcuGbpZqvVCaqTx8F1XhGi0HoeNe
	 /PTadCIX1QUR4EtjSRHJj3RJDLwydJdk0OriGRIrcgMSLoSeCnX4Yq+sZ2xLBUstLh
	 S1PylOqTks27yPba/EuZ7lbxdvGB3e0Yx41OVbLE6uO+XsmYsjMaW2ynecLwWZwA1D
	 9cIEbDcTkUaWgXxe2t8pVWusOF2NXM527DQ1ovicZN6crtWWjNQ3aiHu5mb6ThLZn0
	 XRz44F+3ICthZMS25GWGQI9ONjzXvms7ag3DxsxzLZAGerASgF22ghJ9whyEgeBsw/
	 tjRNP3+354iCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7D5DC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 22:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171978566279.17776.14236375013177492296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4cf2a430cbad5b1f2104b36a7bd360b454d959dacbf47974e9fda3827013c79
Date: Sun, 30 Jun 2024 22:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719785662
