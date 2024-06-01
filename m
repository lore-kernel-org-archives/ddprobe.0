Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7642B386
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 20:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717273523; cv=none; b=aISK0avV+l3RZ9JRKsW9zfDN75mSe+OWH/HAmPg7WgtucNIYj4oFUrzFkAMs5mRMFNzl3prLzi47AZ5uuaOED7YbS4bZIF05vGrnxjYOVH+e1J33WyZWBpN8seTPQXKkxDnNmoRjpm9+Er1KALBR+VXx7ZE4RYjajU38Iz+/hZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717273523; c=relaxed/simple;
	bh=PrOOdC9Hiacu7bIiNoMhakXPevcSxBANf/3zjl+sKS4=;
	h=To:Subject:From:Message-Id:Date; b=YH7lZHdAe5Nb/7WdwVvKxWMKZ7n6YnGU4P63svmW+K6JzYmIIx7wLpPriZItDrSLwJK3112nPhwFpOyRNVUi95InqCvzE87/nigLAhf6um3m3SfImR7exZ+dY21kR1l2u2Cfwbf4x6bCSzsfOV0sejPKyytwGtBCTFuvIqHM6rM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ajZWTmJk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ajZWTmJk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07AC4C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 20:25:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717273523;
	bh=PrOOdC9Hiacu7bIiNoMhakXPevcSxBANf/3zjl+sKS4=;
	h=To:Subject:From:Date:From;
	b=ajZWTmJk8FQHb76nHuVb1Ow/QZMpwu4pogM+RAv37syr2g8G/WRY2MusZYgxJZutP
	 hb0qa+zGK2uV5Uee5ukpb9bh5wvAH6UZM/u0XRBnrHvlDfJWjd4hPI8rrcKmJcaj9g
	 JwXb1C92bxtwr0pTTjgTpJQIOG905DMTP/SsEuGmA2gINn7craKer/S8CKwUFNtccm
	 gIPYYZ3rsOCGyovQU//1qvt3BwGWOjn3YavKWVjMbhiSl7KSIJtPplz0dJUiENtZfh
	 5Bih0mEWiJa1HcPA/4AaFIIq/tbIQ+/hDS62nglqWbY/7Z6E1gAa8spFSQdIIGLMzJ
	 IlJGL1YLMeHbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D705AC25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 20:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171727352285.10861.3848606381415475381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87f9e4ccf2811bf3e4e04309b90c4b2407e6496f488ee0ef11c0d91cd9906917
Date: Sat, 01 Jun 2024 20:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717273522
