Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF0427AC41
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748362796; cv=none; b=Mx0ca6HomaMeSQE8r7atLujjPQ7Dj82rKhItX9Nyr7etqmonXMXQniBBXWwMh0JhY79vFrsnbckVZsg1++f9qnwDcQWye1autM3Sqx07drRIyUtpJKdhN1WaRaZ9pFCyqASTy6faDFHM8tMWjNc5Yl8c8UoUaK4YLkeYNa9JLaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748362796; c=relaxed/simple;
	bh=NHJCqsEusErBJbd9tk2hBEZaUbJP4W4+Rmp+0QZnAQk=;
	h=To:Subject:From:Message-Id:Date; b=scoVv1PQmkXicgK/sEdDVkm7euxdV4AIXOfXE2tL14r6Tbb3aPlczRiaou2Fs/eJG+cH01N5/OoAk55lKT1SY447eUsib/YQrKVJqGQPb+pDXjHhkCtyiOgLm1SPILg5hBhcjomQvcbIt6sisxtBjbknkEpeYHI11uAvcKbBldk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TDFz3gLl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TDFz3gLl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2305C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748362793;
	bh=NHJCqsEusErBJbd9tk2hBEZaUbJP4W4+Rmp+0QZnAQk=;
	h=To:Subject:From:Date:From;
	b=TDFz3gLlvuVKqS98WBMU5jzduOuxZEU1c/OKF/Lyr+91SHwWt1VFYgAUrNdSeudnn
	 lAMy/mR200cWhydKGr81kbYO3uQ7/GL5MwrmuX4Yver9JVkFmqxR8mMo0p9Z3aDPyi
	 M5eUXLGRXJ7xRxuYGOoNdGltnQDfcUCCwYJbXVfKNwLCKHph/An7ouH/l1QQxdMrrs
	 nv3V/bhjOG62nXPam7uvk2exDVC0oq7S1XwvX+N4thmHCstrtqHB77WfkkrsOxH/rh
	 3IolJ52w/5OAc5khexLV3JEhzanDdBPY5p8armpRbMYcXSICprWaxZLXY/+Y2VKkhZ
	 udQRzVH1v12Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F358C54F30
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174836279357.7736.11977760107949641585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2b8d9d7d72a88a0bbb42c301c6c7106737961781257faf1a414065440277f70
Date: Tue, 27 May 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748362793
