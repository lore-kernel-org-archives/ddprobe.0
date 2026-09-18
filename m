Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 716E13C1F4B
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 02:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789698035; cv=none; b=YJP8oOIPGavGKCcjJUByzv79AlAsmFxn6Zrun+3qXZp5eS3yEvhS1rVHui6JZs7dnwnjV7DFhUnyYFuZ8CU9tnPAztdN/WLsO9R283x+5mF25brhdOmrGnaXVzWdqQYzsNfQbuVv2ZsyRbxxTAKSzJtyJtHfPSYsrUhcHXBfTJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789698035; c=relaxed/simple;
	bh=cVxgrqwG/1tUP9cyrRqpnsv8IHPKPfsu2qJyp1gbL8Q=;
	h=To:Subject:From:Message-Id:Date; b=mlnnjT/pYEww7eRZZ+vyRc4P9o2wpTXysFh5HnzNiwlgDwmSFGeONIR2itz2eNIe6AFFCJtPmJXdw53ZSm+CklZywN2mWWvHXu5FhEgC8+U1lCQ9rJonU3TwnCNOVcqRnDZfkJX+7zjjQr96cD5Vpm/Z8zxZTUcklM/sCqRX1VQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SLuHfeqb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SLuHfeqb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07141C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 02:20:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789698034;
	bh=cVxgrqwG/1tUP9cyrRqpnsv8IHPKPfsu2qJyp1gbL8Q=;
	h=To:Subject:From:Date:From;
	b=SLuHfeqboaMJIEYTTFGh305eTqIMFxUidV3S5FWZAFgIoetCUVjK6KA+xCNqMdcm3
	 SyDGms58ShGJSt9RCScqYVzYcaOAo+Iffos2IDynTg9EhgPi3uU25MARsvxUUTAfRk
	 h8IsUg7+f56wNnCyeGMFMXANpkCMW2AukXIVC1dCZNIK+TJ696mCD+kqBX9RCJr/If
	 6lULnv/ayUMRvfA4yNtYgqaK9XKPs6SYrPTS1GqQA+4vugiW33rxRnv/56by5ZqWlt
	 TIYBCkXJSOtW65nNwkblSbsPNnbe6msEEGRVPbMYY3ptAERo8I27btRKnucSVLBd6Q
	 88X0OSrp5cbBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCBB1C982DA
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178969803376.24700.5219067379362262002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97bfb41d6c4b7db6e94afa0e2be36ded5c9d5d38171c955f161fe5c003a4bb4d
Date: Fri, 18 Sep 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789698033
