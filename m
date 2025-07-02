Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6382DE709
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751498994; cv=none; b=fNiiYAF90XQiflrqW52R5yCyvWmUzxi39FWSdj93CvinmKpdlsNOCehy51jJsLrzFG0yAAzQsaO3ycc0+zRV9sF87ZqUAIKCqgPV1e23/QFKjr9RAsiYguDzNFoWtNpVLkbbLtOt0J1qOOd4ZBWFDlvX/RkXi+qnmfI8MJUbtBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751498994; c=relaxed/simple;
	bh=nEtYFObNAvZxbMAMEO4bCiq0Ej5yhxGOD0qS4i5dcEw=;
	h=To:Subject:From:Message-Id:Date; b=SRwVHyHBKfJ2JdqZZV+j+0E7CEx6jZOryM+ljvvs2EEPsxe23cmdLmIWXy4TfH3qF5xAw8yKmiilmlea/oimNfVEr/d63bEjE2AFc5/m7RZDj135ZhvmVJyCNQYKqh8fvbi1G6G1vpse6FutDMTah1qJX7P/kOScn4ZHWW5OsqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dS9Yu0eo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dS9Yu0eo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A582AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751498993;
	bh=nEtYFObNAvZxbMAMEO4bCiq0Ej5yhxGOD0qS4i5dcEw=;
	h=To:Subject:From:Date:From;
	b=dS9Yu0eoBbWYaEB3nBGbVKxcYUD0ufCSsWXkhPebeRVRreByEyI0fp0NmZb+LdwGh
	 sqMjU8GIAS2Vo0cXRmq3dmQ0YSB/BXwDFOsn82sBzSw5glt/cHB93FT/fvJKf+lxQs
	 3vIAqf4URzxoH6pvdTzUp40A0fRqyfztv/oc/N9tFp/DTPOIG91uvxms43uDz/aNdB
	 uA7JgeKSsIRU9uDVnt6m9pytpPlANvYWK0TtDQdRbniWhzD950ICDQOITIGZDQRZIt
	 drVN0sow/hJjOBptNZMFrQX2Pfz/hoKgVZZyKjlRSW7QJM/2PPyAMLyztVT5uHH24S
	 65t1P+7duNSaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C32C83F03
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175149899357.17814.3869403058542561068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c74feabf0d94dd740fbdc667cd8ff4abda22f9a984a031ac749c6b9baf6389bc
Date: Wed, 02 Jul 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751498993
