Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ACD419258E
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 01:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767145434; cv=none; b=BBtWJKSEOJGGuanjvg+Wd8WCrSUVyMNosV1+lkrcdTWu9su44LsTs/Tvr06l7eKNyeFz7DlR7tqurOqTcsCFL1pXhRhDiRSCwu6tgfJR3lASCsSsIFUTpSkMFfkPEOl6eeXAaaxCN10htgH9Wn8WHTvMl2niVocBO7Pc3a3j0Vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767145434; c=relaxed/simple;
	bh=r3h4RGnfuBu/C6WJqUA53IXXDW3O/pfsOkTX1P+3GwE=;
	h=To:Subject:From:Message-Id:Date; b=cNQk4FeaUNlCU+LmiHs26G5TU1QASLDDYrCNwG2x4o02mCqx5zhKBUqKHEvdu42KZEidpyvequgkWf+H5LoBl8H60Uur3HbjhxVC6nSp7f6qKdPQZijk/P9mx4/t+7IngcW9iltpRGEW4o8ayrLDYvAvzYccInr9nZhn+zvbjhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ILEpa+lA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ILEpa+lA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECE5C116C6
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767145433;
	bh=r3h4RGnfuBu/C6WJqUA53IXXDW3O/pfsOkTX1P+3GwE=;
	h=To:Subject:From:Date:From;
	b=ILEpa+lATAyjY/fixlaALhI/Ukqx6rfPv8M0B0hwD2FyQn1mBA0lG+FFcoOUtF/DG
	 FTjbPfE1N6iLxS/jsC75kYpp6ls1Y7vfEwsfOuWeXUIFMP0YRtEo0dsH5w/QEXFVBK
	 DlRCuR45fLWAnBOek8W326yYrAz9IJ96ECcKWEuWIRvJTiSI++CG5pk9CZ6lJ8md3q
	 7SYg65TqEIU9dfE8Z+ETxHNANvOv+UU6T1R8FTjJhmCclNnEowxfc79UyDCQmNy1o8
	 D87nH32uBRffvv9hQk0urKqp368o+fEzejU95nof9oUYkpiqWRvcLfsi+EalPjvXqV
	 qUn4ipK4/Q00g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E45DEE57C8
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176714543357.22459.4981269508159050612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20867e7e5ea25e8af71c4283359793228ad88ba09d05cd1183a73af7692eb532
Date: Wed, 31 Dec 2025 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767145433
