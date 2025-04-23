Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0ABB28CF4B
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745437193; cv=none; b=A0fJmUKwuzr1HFJUPqP+GPp/+UVs9CvuIxHruXKH2N7vJWRLNIdW3fbqkkV1+Mk8h/QsbzRxOumRwAhStEXIMA5bzze4FLM/VeGF3mjjL8OR2zS2UTUoz0VHrBL52IB0koMHLFmqv1JA3pwR4oWCzDTClZuraKU5/MDyp+b/pQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745437193; c=relaxed/simple;
	bh=zG0jMrxynqdOHwXjfgnZJegmDD3ktXxwL2OMz37VQxA=;
	h=To:Subject:From:Message-Id:Date; b=O9NMozGy7W0yrgSJ06Sq8G7yT0J0shfaE2pMlKzs0wPMsszXth8Ae3+hk06ac6hB8sVJTg7nlg/XJLyVokP8XxvNgaxOYYOSvwO3jMDK9T6fHTwrJ38tsKs1ke0SS/omKw+uLs3lSz2YBzTsS6m/Yw/EbXduM6LP0j6n6m9FQwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RZj8Co8n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RZj8Co8n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA7DC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745437193;
	bh=zG0jMrxynqdOHwXjfgnZJegmDD3ktXxwL2OMz37VQxA=;
	h=To:Subject:From:Date:From;
	b=RZj8Co8n1TosquMEfRyxDyd2wPrpvNheXrwx1rH7sKKN1gZoMW2pKJzGykQarGkII
	 AxmukuUUug5o6svEyAUqDfbVNj4muuJxg/WUKeBvCc3San78VOnFwNHuhUX/m14YEN
	 uwtRfWKT52KQXs27EwJPbMJu/bFy0vUr1GkDuzB3vzdD54RHDFyAJNuGPjarzG1UO2
	 gWeusvZRVnJ9jsa0ijk6aSfI/pXCy05aUOqlghfhMUcJOaZQi9ch+xBn5LGFpcUMba
	 jCov0uEZ+NXoyZ1l1Ung+BTQEw/wvQAwp4Lhr1K14LVF0CNa677hyMlBXlDTHmjcsb
	 6sCmq5+eUeNPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED12C369D5
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174543719357.30176.13044943414344695203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a40941033890fa9207d580f367d891de8bce75532bc29b45ba48909254d1386
Date: Wed, 23 Apr 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745437193
