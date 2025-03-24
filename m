Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 305E113AD1C
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742783994; cv=none; b=fivSiXgAFv5mNqrUsGyvXIlLdC2/VBfxckwDwMdtWckQ+06f3vq5YaMsMJoqGgin/rTBu+fRb/5m9A5piPQki/lXjq/DZ9UKogR+L1CQg/YdDXtX9dqeKXpwi70P740joRJqU+/2JtmceMNceO4PBcoh0XMupSOKVEL8jaNYYoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742783994; c=relaxed/simple;
	bh=BJZX9WmK/H1ZCf+kl0xh0YywXJAKzhZC82OAauUhxPU=;
	h=To:Subject:From:Message-Id:Date; b=AarRhvrQ+KJJQUuzyo0LN5we2B+i61ZM+7LOQs1rBQlnYbF5FEHM+u+sYvAPPa+xQjk52f9x6LR92QIfHuZpo8q3C2fUX7egoZGSM0Lt9AVceY5Hx2mMXb19dTqcKeD8A2eQA65zrkIvovJofI3SpscaRwBMexVOfFnex935Rvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rvEdlbgD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rvEdlbgD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB21C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742783993;
	bh=BJZX9WmK/H1ZCf+kl0xh0YywXJAKzhZC82OAauUhxPU=;
	h=To:Subject:From:Date:From;
	b=rvEdlbgDY51yD5JC1GfqhdrzSX4mNWap5yk5sfuEG8vArtbDTJun0xAv6qREiCcOb
	 YKnUcX61tUspLBu8DDLDPsSkpDOXFAcjRisKnjIHvhtdT9l4VHdTi+4evMekazh6Xb
	 AfWdSMGIqmX6fPCb1SpQ+8e8HywvS0pqIm1rXc1KtOxMjD+0ItCIXpow7U9FWPEs7v
	 O7TH1ii20fOrK+Z9YiiAcrqCHpY7QH8gxx2FS4uZtt5g9VsBi9ZLfdwnOSTR0jV059
	 ACOpmpvsuPda3ESaDOvz1/AokZGUE1v7KdWUJ5dqEG7OOU7xM3/vjRSvors7CbZ4JF
	 JpWvKbhcDnq2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913DCC28B30
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174278399358.14346.10050726950442387494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76c3f1c48e64a45c4ee08bbd2c37f8f5e6bb5ad450945e52d47dd615bea63ef3
Date: Mon, 24 Mar 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742783993
