Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43AB7186287
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743616794; cv=none; b=GkPQy7/ZeH6kmxcXLZh77IGNz26vkU9DxocGjVU9b6fJDlbE6Gw+ez5d2HoUhmYvoaYSoqQCwcOp8r03HykX/h+MGbwtaRGM13FElpXVRHPAK23cGSacAdyAyxpEvmmvsrEfpkLIa4y1nZrxnL3m/M1h0SlHaXarC1F5WViBNzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743616794; c=relaxed/simple;
	bh=u/Jsz0EJiIQEFiYPdKUmycHFc+wZY3ydjaeypgoltao=;
	h=To:Subject:From:Message-Id:Date; b=IVsusvey5BlnNqwbDGTjJ7LirdNLCEfzhFBMlOB470c8U1N7Gh3EnGYtusNDjV2ExKdC56DNnCn5JgW8Fwf7jV5fExmIouon7OjJKFKHtF9mOZkh4ad7TNe6pxB1P6a4eGbnVyJ4iTsoGkkgT8oLslvW/zKG+TCe9ovnXkfckUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BXdVTlak; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BXdVTlak"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2EE7C4CEE5
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743616793;
	bh=u/Jsz0EJiIQEFiYPdKUmycHFc+wZY3ydjaeypgoltao=;
	h=To:Subject:From:Date:From;
	b=BXdVTlakb0eoT1ETF7iq1y3ZXX/LhdAD6VJDohQ7qIYlVbVhOh7BFNwPcqClkWDzF
	 EFzCmZtbarsF5Kj+6L+1JRm5jqS9ewv3HxgWL/Up3Q2hnruJraou206VI7rLKuwERj
	 yfXrrcN430RIUojLvlPIklAQl5h4yuWJVP2VPQpPtgi4hrJdFot9dFoxk63RbDOKh8
	 IA44gO9XcY3QIhmgk6FCeUdsinqTQQV91yz6/u2lBrYFBJ6fHwcKLtpikVakP4xabG
	 eG8YtRcsgS0rF2uyF+ZHClbnBRoZuqBcD/nT+OMLkkFO/a+6f21ZRVXDbYo+lZfktq
	 6XqWKSOZBCErw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FE58C28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174361679362.20696.10876012450281348666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e3e027f224cd73b534a4038b5ac6c216d4f2efbbb935a5b2d090e6ab4e9493c
Date: Wed, 02 Apr 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743616793
