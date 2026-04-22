Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 232D22E62A9
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 17:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776878854; cv=none; b=M9q4T6oRk3vohhnplMBPluF/74W7APWE1Q7OrZRRoXV/6Jusi8RJtljrkJe4I8keqlp3sOl7252LlxfcMKELNJZ9MvxJLU8CC0I78EmOL1eELRjh7hqaoLoCuXmnd4/249WJ0duawsPsQndW5tRnRfDU2eLwZ6RJLhNvtjxDrq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776878854; c=relaxed/simple;
	bh=lOlGCuCg4ZD7qZ61Ap5OC+4Uq/PDtL0jGH9h3Ex5fWU=;
	h=To:Subject:From:Message-Id:Date; b=EgPg1ICQeu5Oct8IruJSU9n+TSWaH0h5O8CGYmyrYapdLXXAdKcJm78p9LIVHU46kgaX3ndrQ0jjc0/5LZsLzmQtWKxgIE3P3Xcs1ocfB/lzWA/WtFbTzCJHKY4sLK4+oBzQjvSeqD8QINdJ08zKUFFt3JuhNme7hyW5MAZtvzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U6DB/wLt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U6DB/wLt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFE07C2BCB2
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 17:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776878853;
	bh=lOlGCuCg4ZD7qZ61Ap5OC+4Uq/PDtL0jGH9h3Ex5fWU=;
	h=To:Subject:From:Date:From;
	b=U6DB/wLtpFMxQvvQbOpYtVrQJBMOAzGqGuiBiub+Pyg/evBEXmtFr8ZgRwByBm30i
	 V2U9gnG/Xav4wXybHCDhcuW8UMrBal6RDXpgWqlExc6bst9o0foz7mda5htYvz4q+/
	 /cOqtvZbjLKmiStMVqIYraNbd8HX4h7X43Y2a7Kg3qylfC2BoGyY2pLb00MyX1uFHv
	 Mvyj2cbvFu79SJS/0qssDxQY8/vO3W+K2c/SRfMNtxW7FNCKow1u90oP6YDZNIDYPg
	 mCKeHYVimIXXIYkulw2ZkS2qZ7KFTBkGKmM1ytOYwMgeaQTIgEw6fOtxsUptFqtW1L
	 FGbuVMhg2gjig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACAE3FA1FD9
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 17:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177687885368.31963.7271586179772608526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d263def0c635cd05d0fb5e92ee7f299709b12109baa5158edf00430c89e42d87
Date: Wed, 22 Apr 2026 17:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776878853
