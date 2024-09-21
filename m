Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D09A2207A
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726947954; cv=none; b=WhqIrA3RQzDyrmJC64qbBu7Ga/abuA9pzDjQVON2iZba7w52GvfB++d6CkDBnU2klZKWlXJp+IRy6A3kM3gNrwWAKdiuDqTj4QEj9DiI4cN0uhm7hJD90axj+sU1V2XMNpcVc4aPQKXBGuaaeX7FEn15DIcs6uJWtzvKu92wiaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726947954; c=relaxed/simple;
	bh=E4SyrprF6PMSmEW9+Z8vvjAbdmXngJWKznyssBYTrKM=;
	h=To:Subject:From:Message-Id:Date; b=jgcxMdtfpZNK4vD4bRau1rmHnWoI0//k5U1FUqFpe/iOb5TCn8eCGvyHCgs+jSsc6JMUi7dKTixJnDnJLyrObtSlPLa3wRY/4FQqd/RA1fB01NmrN8A+Hq0FsBvR3wMYot3JUiH+466gih/RX2Jqp41kCF1DlF7S3Za2YwDagHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ofq5mwY0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ofq5mwY0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21F8C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726947953;
	bh=E4SyrprF6PMSmEW9+Z8vvjAbdmXngJWKznyssBYTrKM=;
	h=To:Subject:From:Date:From;
	b=Ofq5mwY065mQobk7xU3zv8D5XvbcWatIz32qmEAf5ZTd2vfGMH2AJc1SQHqLATBeT
	 cLGpeoWFMasQgcv1gcFbp9Ygw33dhxCo6HnkILBdilpIaqr9MD0BurrG9iWXGorhMU
	 FRAYPjrqmORi2fU5VemPDsbg1g1C7bwomzQiU02NaSXPLNqHIsaTyqkaOk4ck0rKnq
	 vpV4liJ/365+TB+BByF+OnoBSZ6Vy8nd4GBRdOj/fIhNQlOxt7LxpbcIZU+Pq+PVc1
	 w102QAJkCIe3FffvY2Xlr1fV9Z2W4VVkkBcsL2ZiCTPxz+21SGil5iYXlmfKn/tpwm
	 6nAmGvv8w21cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AE4CF9C5B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172694795357.30083.4818965891610754613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3f399395bc6e0b0af240c8b3969def2a05d86e7f59fe92d93e28bb170df2b30
Date: Sat, 21 Sep 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726947953
