Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52D0819DFA7
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742130594; cv=none; b=CW7iymfs02GzdIbc2iMg+gtLVM7ttQDgmCtO6q0ZN90S5xP4AwalBVBSQJNDaOUz4pGIOMAoXnvP+5IcjnSriOlVhsnRxdurmlNcD49hm4Qq9QmBzKcQWFqXYXdI8wIwEPNQ9yw2UOzRSLVazzklLo3JC0H4Fw88Rcc1LKzolo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742130594; c=relaxed/simple;
	bh=n0s7lT8iW5W73M2vkee7XIFp20DSGipsYX0ghd2E8k4=;
	h=To:Subject:From:Message-Id:Date; b=Izd+RJ7pXCZuNAmI3aggr3b+070Vh4FERTmb/fVFM4NWk9eO8Gv8AsRPovjnpZRETE2XOtK+oIi0ZjeMpYyxQlIl68HildXJ8vsgP430Af9rzOZjWbM6YEOoNOuqCtIWwaiqToIisrPAaWgT6sr1PIFc6rBHWEeOfnzC6LjKJCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=glwnoX+l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="glwnoX+l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0660C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742130593;
	bh=n0s7lT8iW5W73M2vkee7XIFp20DSGipsYX0ghd2E8k4=;
	h=To:Subject:From:Date:From;
	b=glwnoX+lu/SJv0Oacr/0NQlQDCJwmzajVnn6Y8963OPjCvmwfh8nC4se7VQ0vkZfo
	 iTJuzU7LqQOWltIbcc+uOgrldAiPqkbhmJR+rwxycKj0BXmcVr9xr4gsoG1O4b3y2p
	 K+UUEgXip8CG2mIwmR5Ve0cpshq/67BfCXz2qkugb3H7YoVySvh8jNinuVT45MrCQ6
	 GjLYbucZhV/ge7aaGeHoJ5OpvfsKaPWJdxWqYLH2WaDigvSN1s/HFpiI1CLhiQLwHe
	 E+VCEnMJUzQy+7KGZ/t1sBAWw+kY9KvR6p5HEBKaHur8aTncydHVMRBs7rfkINJ9nT
	 I4XuiUijIly6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E74C282DE
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174213059365.23860.14361937129571260003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 291c5f312566d3c098f65eb38b23dbed0fb7ed7fa61a4a58dbe093ea091cf4c2
Date: Sun, 16 Mar 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742130593
