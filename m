Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 176331D69E
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723773354; cv=none; b=CTJT9BCp7+FCazgFKmcoSAulh2Vmg6GG+0NgCRRznoTmc288wj2IJdfiibcCEdAv7gXsQOew+gkBHnSuXiMqtwNxT6ku+r0ZaKX1W1ZWPJyiHu29uSvK/DLV6PPCoY7H/hiL68d2w9OjypvUJBRAoL4BqhjxJuyfJHCIfaSmIm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723773354; c=relaxed/simple;
	bh=afThs8td0ftO1WzcVChVbixFa8Ythf1JH4xjjWdL7KQ=;
	h=To:Subject:From:Message-Id:Date; b=Tpr2/6OHPHBCVv+mw0lX7JMjyTcgftzIKMltIhajN57XmS91PeiT3VnQ4YWaAQ7dCCM79gG3sZ4lyhImFZa9e84FeVSdOgoTMgfjcK6FJPd+InWrm8PFfp7bK1xQ2+ga5hvxm2FKa5HhS2gbL5K3GZ5+tU4qcxZrmBBq/ib1C4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CR4Fh5Cz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CR4Fh5Cz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F83C32786
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723773353;
	bh=afThs8td0ftO1WzcVChVbixFa8Ythf1JH4xjjWdL7KQ=;
	h=To:Subject:From:Date:From;
	b=CR4Fh5CzxFv4/IhdfPrVgKQ8iUJ3qWQEogHS97Z5MO7iSc9YGE9t1TQPWBZ+FA4bS
	 U83Di3kXObX/4ZyrbhIyjjw5+psFefwrqfZ4go80Y0/fczVhYSsEUU4A07Jx1hBQ5T
	 R34MAaOiK1IVZMSUfbKCT/WK6zGJIngqKyAf8WT8sCLF7Ipc9HyL/wlLFWNPBYqfN9
	 XCMlX5OZ1ULWoSjlJpR8AZVu6cjf0glW3Hhnim/KCcxVYdTcm1elxNMUZgxYadNx6B
	 ODB2TL7SzY+xupdws+EfRhqINFRlH4UIUBaIFqF+CbBZ8jT16Sd7mJ34KUZfiC9/J/
	 laKFDM10mfDaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98172C52D7C
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172377335361.23969.6643242944195101500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 709fba20973182fea9b3e2fa9c160fb910d5131e8d99685e80a76ca7a00f09fa
Date: Fri, 16 Aug 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723773353
