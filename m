Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67A7626AF4
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786794634; cv=none; b=cpmOtpc7tMZ45QmrR2AIonFRbASGFrltIt7I8cZKAj0zAQVcXn4qbzu54BR/I5flk3mD/1zDBBOrLNS3fxWmG/LScTg6MWAfo1LAJmYrOIF8ItWojkS2MP1vRsGzEZLlyAuc6h1BfHRg2qKx+dX6BS2b4FhFZqtxHc6LeGeH6hs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786794634; c=relaxed/simple;
	bh=btZYrwnzYslMcBqyocxqbW4mP/wdpzoTfMfYXyXtihE=;
	h=To:Subject:From:Message-Id:Date; b=gxarjDk2YvvcAsX9UNWxR4DCJrSEq1G+bzWvRsITKuZAfm7afY38t9LeIhVwO+IntG3SDkGulINs9d4R9qwFDCcwekGXWrlHCw34iM7GV/EwtAoF5isUg7ER9lDW5Y/bEBLtLCi60DnzfvziWGNuK51gfkHjj9M8BacaMchCn4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t4GK0CRz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t4GK0CRz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEA25C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786794633;
	bh=btZYrwnzYslMcBqyocxqbW4mP/wdpzoTfMfYXyXtihE=;
	h=To:Subject:From:Date:From;
	b=t4GK0CRzXlHHujT+LTOSFv8QLKIfI6CPDI/5/fJVwzQb6U1TRkGN7qClHR6nsMbHq
	 pEvqEGNsoLMYi/NgGotTxHzjb/pX43Q+7SqvsFuqC9gXvPQQee4QZV3J3mjkJd2N3c
	 pxhv+kx00s+Jf3uaK+PTbUyrPO/t6hQSyBhq6HBDx06I6vLZSQCre5MiRBlb6WTXb2
	 s3E0oDulYG/0J0pyT133yn5iEIZD3wPZQW+x3dwCo/nlyVyFQxExxtl9mwljj9VD8J
	 AL9qdJSSkFZ4uPgOUwGTYBFwKtJAHJoGk/eGrZ+pKHnZqzQ0yBdb0pDwVtG298AsFN
	 Ct8SiZFFVUp/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE769C5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178679463369.20100.10336263463010947063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b343e8125b8d1f24933096f4829feae7c7cb5455d6bb24a560cbbfe5be0dfa6
Date: Sat, 15 Aug 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786794633
