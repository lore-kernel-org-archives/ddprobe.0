Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE28238C15
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757936394; cv=none; b=nqfcp2KbqkDQ6NSMXQz5QwJ6smZ9if5Zhwfw5EGB+9GEpYSdowKnV1+6KrhImehBv2h4cpjc+UGx3uiD1k91qHkX2Q7lMnIRrRk83iULVgsvRdT4Y0Q7d6jJkhS3YQbgQhRezKvyVpGzClx+jR5q8lpQB9RV084VCel2RjSHNNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757936394; c=relaxed/simple;
	bh=KQEx2OVZjYvY2Ez7se9NGByv6cK82HAhvrZe6LdZcjY=;
	h=To:Subject:From:Message-Id:Date; b=A22ZG1bkBKc95fTMeeTdAJl+mR+WmQq0jhd/5kXAVsg5W9hkRu4KXn/OUn+X58rvhTkAFri+oiVrzLe9TlvDDLvIqi8/+QbI+mriTj0rRJxoUjID69bIK1OM3e2EbtszIFuq7c60LSCN28snFNbYDpSal35wd3TBr2e0ZkL4E3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IojBY0XF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IojBY0XF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29E1C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757936393;
	bh=KQEx2OVZjYvY2Ez7se9NGByv6cK82HAhvrZe6LdZcjY=;
	h=To:Subject:From:Date:From;
	b=IojBY0XFL4MOfp4n5Y+AU9R7ChFLNsaMyiQLuU1KFFbIiAbKQ8qzbP+maqeje4qHJ
	 oxkg4kvH6PrKh2cFkcxls0iPSDJxxNuX01n2oKDWF0J+bRh6PtN3fCsS5UX9pAaO7K
	 sBCZD56NMsUZU4WnRLdeAug71GLmJ6d+yw3Kc3vmYbF1OD67tD8ZsrG5MJ5ahLFtS1
	 NaR+vUnBfHsHi2zQkzIQpyjJnJ2MI0Cutmd9STEj83AEZ3XYF1QPhBncFyacxm35q1
	 sQDCAGHHlZaj5Ebp8DFt5VnZ3ylSLgAfw3n8XZ47+yhxgPi3vf0iJL/Cpi418F4obt
	 LhneZ6H39mm9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944F6CAC592
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175793639357.8641.13055805909798435453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93d8b2ec71b0414a8bcd81590a86717823bcdec386254a2ad49e438e95fc7955
Date: Mon, 15 Sep 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757936393
