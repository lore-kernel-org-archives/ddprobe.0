Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 523C31C1F1D
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737461754; cv=none; b=jCuAi3ukT8nA5DKvs6Jptze0bvMMBzjy0jZcG1D99yiNMo1mDyWOr5snu15x7craGwN+hQCij3oN7S+lBk1FOJKb4PNF67aDYzn8+ssDmDNOMLS0/ld6DvbRfsGhoTDZM8nGt6YTOXUKGgrIG+MpIT+zF0iCQlzcHYmBpUZWBNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737461754; c=relaxed/simple;
	bh=2nLtsaN37eMWyUzBeetmdxQv6ghM1NThAKVfqMVf3Rc=;
	h=To:Subject:From:Message-Id:Date; b=XaNTHm867SS1fQVgTJJ34kUGmgFT2VyVcd8v3VfkWUyf5+bSn4G1lAunm6M1ZbATIjzF0IAr71mYOhVE84Vx8mV0J9spPFHtIC1sGOV7gcn7glIORRqM64xsIPLPbBoy6phLN3s6LQ1SnidAhq8KhVN3A0yJ7k760FYLVW5sxlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pi8a907/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pi8a907/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3C79C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737461753;
	bh=2nLtsaN37eMWyUzBeetmdxQv6ghM1NThAKVfqMVf3Rc=;
	h=To:Subject:From:Date:From;
	b=pi8a907/+bPHfm7748vcl9Dgp+xBzHN4xhYxxnA3RYdT9LnR/Nl6HK9x3EkeHIHzK
	 VqK6c6+E3sgQTPK+yaxwJQBJzL11q4sWNOs6yQ2FtTDePtB2ZLKpT0vUBzEuRObN2y
	 njLZDZ0IMO2z/sHZX9WbTqxva1xj0IyV1328THSYFT9wDycqIPe54yvGN0q8uCpbWb
	 MZWRNDjbMyBuYpnl4JA9qSZfUde8RiGynd1USgqx5d9ZF7XyobDFIA3lraiJgggUn4
	 1B5NbhCa9qOI9D+bqimHqfTZf03x7S4H9LTyCQdi7k2Odhyhk9vkEqPSuhqhjz0usn
	 zQVhH10/bb6xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C2ACC0218B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173746175362.27491.1693600013276295946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4274df02db5f82e5b2f7b169f17526b14ee0e9fa35a8e84080cf2a0e906ee69c
Date: Tue, 21 Jan 2025 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737461753
