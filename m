Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D673126C02
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732766754; cv=none; b=NhA9Mau7wLM5L50Q+8kbaGmUSxmpgGagvUeWq4nJF9fDSucl0slsiRSq/YzS6PeLMFcLUp+xfNDRD/QW7becsjx0Rc+/6Sa7bp3ji8rNQfZf30e2i6QJOiDq54sXQ8GZGynQW9nj7/aXIEJJPbyhex/sl/3CTfZbNFWlPhgoHTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732766754; c=relaxed/simple;
	bh=cbiMamMe1VwyathnSmuSiAou5nZsAIZP6cemntyaot8=;
	h=To:Subject:From:Message-Id:Date; b=h7DX4P7EG3F2eC8r45b55CXWK7iE97pGn+YiDm8PFtbRo8ymuOmk0xxurYjboOwQePa/ZaV9E3/wGC4RqQ2w7vTGhMithgOk1Ng5q8zx/5nUKxeuuaWPRgZ4TXIFgaYhC5t+WFfcT0CxriASSyHnm9M6/L7WNOFPhr1hoG3Pf7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HVhd3BIQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HVhd3BIQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D46C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732766753;
	bh=cbiMamMe1VwyathnSmuSiAou5nZsAIZP6cemntyaot8=;
	h=To:Subject:From:Date:From;
	b=HVhd3BIQjskGpZkn2qpdkJNMzgiVQ113QD1dafPmqzSnTJ9FLwCAaR/yO7I6OVwhs
	 KcMZhfnFlMdB32ZP0rrPhD9Tn5tKF1g5c9/Ie+b4fruCep4V/ZidNWkVCwqkZXeDDB
	 PC9xmzYf/Uz/1pxnvNs62jM+BCkWjmEFqZiOvHY8L/vhdIyrBptpEnv2BPyx3uEyck
	 WHlxn0bP9aZdzLmTToT/zxFojfik47mXwvcOBnUSuAPAusf5Guk5TqH9+LNovqC02a
	 eb3G2bD4od2bqhnOk537lLzZua+1Yu4Ot6Pn8IbBZKaT3H7hikTlzZ82uqqO4VQOiC
	 3ijsz534y6Hzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935F9D6D25F
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173276675359.10484.9392511203277884037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23d969d6d0f0f38974e3e92945450019702b8785a84aeae370f595fbbb3f1caf
Date: Thu, 28 Nov 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732766753
