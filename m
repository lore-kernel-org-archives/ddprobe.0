Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5FEC6997D
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 08:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709282297; cv=none; b=X/3M5S96OieW9Xlfy2onLlaJFqMd3tgH7kBEVIkvpUbFwACV84OhJQvRN4RS9HvWbjnxpChG+SmxYocsG4G7I3MBm/yNdRkUyhMXQkNFg+J2vKbccX/Mjl1MWXT/EBENm503qt1KaOwZtmzOJjkR+OX23Jg8nDdIiXVyqCL30wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709282297; c=relaxed/simple;
	bh=FIbxRIWuwQJUGHS4tV6XH+oOF81NBtVwELpb8FdvTL4=;
	h=To:Subject:From:Message-Id:Date; b=RsCEvf3XCKZamVrvgOfNrRvB7z+IHBxw7LW8Jk5pqCGqKJQRepm82VaknzXffMczUShRxYRXamUuyHgcZvLoJo5g50syTtf2HDb1YE4J/KxbuT4LU1BaGDO/UHMtRY675jiCqW6wSBjhGnuC+DeoFgJ7t7KBehORVz30omWtw74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aX4+HxGH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aX4+HxGH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74E8EC43390
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 08:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709282296;
	bh=FIbxRIWuwQJUGHS4tV6XH+oOF81NBtVwELpb8FdvTL4=;
	h=To:Subject:From:Date:From;
	b=aX4+HxGH8c053S6HRbzNw1sNPfddVpnHsORzv16OzK5yB/tP8X28uJneEfjyHDlXk
	 LOsTU54/4fu0aZy3LLEFZrDpArsQcE1RsKzu+YjKbkXU0IQmtXmXmfvzWw6wzIlU0+
	 J98fvsRbQUjn5mQXsIMOnluuBua/RS1wSJ4dT+ABF9+JDVGv0aY0NctXgWnsECsaQS
	 XXxmqVi29D4ROp6757Zav6HAsOJUUTeKOBiOqTa4DviFUoQsTMJ9F5LICXc4TjtEWr
	 jhOrEViiZ/PJjZqPUS9jBJocm7n5r2USNHFyYqoBXrpvwTCEHQoUrFRdUL5S3TOCuA
	 evAIsBWFugBVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BBD5C5478C
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 08:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170928229636.7391.1158471364834996231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ffa75eaef1f3dc4d50e67cea8128b6d8c830e7d86c81a8cd257d7eb3def80af
Date: Fri, 01 Mar 2024 08:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709282296
