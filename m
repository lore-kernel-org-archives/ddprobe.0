Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36ED0946C
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728711354; cv=none; b=W6D7uIw0mlexqZNEzNSWq/wt1nNhjrwP3sbW1qaI0Q5RJnasRABEb9O44rKA8khHkKtevlh/NVqjdIxmJ5ePijvFrf6I8P8p7RBjch1U8A/YPvP71lvvyXfemchG+KtfrAZ9hSzRjSoX58fTwmnD57XhnxCe/opmAgFHh2CuncM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728711354; c=relaxed/simple;
	bh=uuKYjUwFvHdcKBEDSZqUNURlcnhjlNrjFpAIMI42biM=;
	h=To:Subject:From:Message-Id:Date; b=QMCPyDpGlt/gfynQynApnDuCOBoYMkiJiWn0b1S09OHW2cA3arIMxRT5G2M0QdxDcyM2Fp0ZoEgKkT6g4UQ0+lhFDAo5AUCr0eXpD9doMEI9yGUHS+0IbNZHXvLWBjVmsj/eGO+FbGilNVoPqJY+3p2OeWvmhMWpWuUxvsjxNrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bgikLAXH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bgikLAXH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B20C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728711353;
	bh=uuKYjUwFvHdcKBEDSZqUNURlcnhjlNrjFpAIMI42biM=;
	h=To:Subject:From:Date:From;
	b=bgikLAXHieI+Ov7W2aFw+V2+cfDZwR6qsDmoZVtZKNpguGAQvqtnXaYoKqGywDXdM
	 zVF3Cj/l6YRFle8JB5f15a+Fs6rUUSHuZiPRJJcVvOU5LPjAPpF7G8Y4cAblrTqGUZ
	 8ZP4D7wtenD1h95l0Os/HHzpX9zzILlzzH8PR/oVzz+RL3hn+5u2WFMRPNbExC2mYR
	 hzC83TMBdv9OM4uvcqXvwYaabifURSxD5D3ueIpObJIR/H6QsrHzMDL9cZ9OTnmdsr
	 PWK/sXtBvkGxquSQmG3l5S/d05s4BevXaSxkXZt8CKshGyU+zJpMtUVLmUoVWBc2lW
	 Dlzgz10n2gDIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977C9D1A428
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172871135357.19528.410993888158425987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfa0878dadcd715fefce8b784206d5cea87e7667c99fba879f8e7906b9d9e0e9
Date: Sat, 12 Oct 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728711353
