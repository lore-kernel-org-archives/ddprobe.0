Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46EB6134BD
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 08:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715500943; cv=none; b=aSB4t4EJop6iHAI1mrKY74UtJ2r1QuzPKfFQrNq+3ciWBVdK6K1Y00OEvf/5haEgqOEhMi7si25rSqEtIkugfGk6ozTClmZcF9WoogfMqwn6ZeyC4w424TuMbizTrjoAucN0o+Z/uNUUkbosLiifmyvRbbw/dgvJUNHw155Pby4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715500943; c=relaxed/simple;
	bh=KS5TwmlaZ4n/G49wFI72ZMjip+9BgweKFuPKHtgZAvs=;
	h=To:Subject:From:Message-Id:Date; b=PLjNUQDugHghj00zeh2HXzfnJfBW/hEKNlozEQNVrWVXdQwPmkULDtzo30sClg221ug3ZCRwGTyml54YjjCqQJCvQlOS0NpbxIn8r956/n6E5Vq4yciG9QBrW4oe9i8n/A//0PBxEvrW4uK8MhH99lDKrR21gwON44SfJVy9U98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tm0FzCAr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tm0FzCAr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF28CC116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 08:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715500942;
	bh=KS5TwmlaZ4n/G49wFI72ZMjip+9BgweKFuPKHtgZAvs=;
	h=To:Subject:From:Date:From;
	b=tm0FzCArtKN/MwtqLuPPdDleggSWK8xa8F3CN5qeuD3/K9vxda3mJf+BkrTDN+IQM
	 qLX2qdRVtbY6x5UJEFDCL9ycClUIWfjM8Ru+nOxY5xySxWrVUj8I+3S3PlurRgODcb
	 y8aeLIPjVp8dzDrwuEBok0V5gTGKBgH7BqCv4L324a7hFgDoj4ZRdbDq/YdPez87DA
	 IJfCG1yxjsxiCTmVz09/cBD9S7+GpT6xr93P23iost+nfEby5d0NLnV1ZMU/aFnrgh
	 JXd1jVUqp3ZXvArl8CN0WEEOfn7AhS86GiAJF58Fo5ZDC8lzp5NiCJmVFRYF2u7pDz
	 wxMXWUXndIbEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA260C10F1A
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 08:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171550094281.10698.15970007216556614649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b597b410eab66e8086b4afc5f917baae480b389de4817664407efb24b6538b4c
Date: Sun, 12 May 2024 08:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715500942
