Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C28F17E8E4
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 04:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716869063; cv=none; b=VWil2hw9ZNs2AdwnZv8h0luSvBhwBWsJ62MMT5k8SKd5CiNRWh3zi9wZI63McruuWEHhlyxU0k7b9HiD8WPhG+H9eJI0OTg6MKzsZgzfKrlS/pJtBhhyZ+29xe72lEICvuC4VJ3tQHRcpHqozy0eaB2LXvSex4QCExOM5C6jNbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716869063; c=relaxed/simple;
	bh=sjt6bv93qleekf1Yg7sehABBdm4z6dZ9gs1mVH8H/jk=;
	h=To:Subject:From:Message-Id:Date; b=jD1SjFtNIDmMWfcoS2jd0dETpPMvqrEPb9D2XuDmMow800ogRd+ioHA8k/NCQxLyqP4wf2bvX5MSFsG++1WN/aA/jtnGC+FB6vECtAv9q4GAW0K4aqLqtkGSug5Q3N5FtgrHIUmDjIOhDq5rBpNYvQSxuAKU/7YzhD7DkfZqj6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ciXtYvka; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ciXtYvka"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3404C3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 04:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716869062;
	bh=sjt6bv93qleekf1Yg7sehABBdm4z6dZ9gs1mVH8H/jk=;
	h=To:Subject:From:Date:From;
	b=ciXtYvkajagReB/DQH7d+VnlOi5pUAMSYJAtjvbJiwYf8qLLRq7XfBVbYfcfgE0YE
	 sLthB2Na3XgJIwGEm9TbIREuqZpcuYapJFDABfdsMSfmvReK2WgoZYtklMA5ivM2Ck
	 OekjlE+7AJlOmq+s39IB2lSvpEmjES5jV+qRoAGJV7wh+jRFwEsSDsZFDPU+OOA4Yr
	 WTLylLBpLVFVwvzpR03b0ufAnuE/PydaK9Zg1zDLYrrWDRGGsuJD2gDv+XSwaK6UJx
	 v//+ozrDg0PLNH9KvBIOsPthawj/7OR5IngVOWEEOpesNDnWtddl44fYsbImP1lDSq
	 eX3UQ6K7BmOwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1DDDC25B7A
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 04:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171686906278.23861.7835952204373933307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e96bd01f9a90f3ec13e6da718d4015d4fd83acc2b06e23f3aa4ab83e92a1aa0
Date: Tue, 28 May 2024 04:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716869062
