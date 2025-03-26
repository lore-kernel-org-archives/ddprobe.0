Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A196AD4B
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742967594; cv=none; b=Ee0ZQPM5CpqWvuPQOAwqIDSu/QEbEvBg6qiEbs2PeCv2EOWMs4whz5Re7Dj2VmXfh8VBB1oCsgNgUMEuDJEoM09CdofqziimKqKW9I+5dXZWC2q2C0pFqYGWaPezk6H1lTU2pLuMM4sdflbkzl0BxyQ3261KYpXVLE165Xx4hgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742967594; c=relaxed/simple;
	bh=KgCmnYg31Kp/rPtN4pJso7au3BKkR92wQtcXfEo3j+o=;
	h=To:Subject:From:Message-Id:Date; b=UFx24WfDjqyTkzjvLbYqeHa8Hbc+XgH3hJeuX08691hW6XZbaWoA0lRqMTmQZUH1tS8rrrA2aGPcV6xjakcEfC7ZHSF0GFeV2oL8HKu113+dtIDhTeJfnFKKR61cWY4RVgPxU5D+QqutYFk5BRvq4bFbcmc4JrQDWEmsUl1tRoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d/QypQX6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d/QypQX6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D8EC4CEE8
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742967593;
	bh=KgCmnYg31Kp/rPtN4pJso7au3BKkR92wQtcXfEo3j+o=;
	h=To:Subject:From:Date:From;
	b=d/QypQX6pvLd5KUJgjDX+vdaPMk/wB8KeuBBqhMSvMvBtvqxvGzSCguZElqP/cMd2
	 e7o8Ai+/gpjmMXTfdSaZtxOsMvC9dkdBbFJyKa8Ln1FVczf0Elw30TOn3V5zpZWd31
	 zFV1madvnsa0sjRCjM0OI9CKLjdKDJ/8/obszXrV3oYEY+uxmPO+lpXYCpWj98epih
	 5sXGU2Ym7EbjnZxz2whwDKPuuOP41gCHNcBa7HeTVQQBmZxmuoG+dQfIJlrQmb4RSS
	 Mj29Lv4uxmEKiSv426jeibeMnkAfp8gtaOSDFBYcDRp6yowu4p8V6G2IZt1rPJns+X
	 zQAzetAdjiBQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917AAC3600D
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174296759358.21050.10556818283961593344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a491b405d8d6c669ea8d937ac2fc8d9c23bd99b381fbd89c0dca023bb1d9cb4
Date: Wed, 26 Mar 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742967593
