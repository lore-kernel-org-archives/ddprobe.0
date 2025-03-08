Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3429A19C552
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 13:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741439334; cv=none; b=VFTJDIaeTYq78Hr/Aa8yzrsxHRiMb7M0Fn77UmTmyNeLXbCMq/kReiqpFw/kxOZfASf63LT+/E8qOirUhooOptSxWMqbIba2CbXdC63CTZkM+e3htneBC74vU5KW6jK0P4qT3aPDOmy3ZeqABieoQ/eC0qn4j9RjwMXuCN6WShU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741439334; c=relaxed/simple;
	bh=cq4TJLzRuYvVysWjnC3TuFCq8wnFzSBYRvvKAH50w8M=;
	h=To:Subject:From:Message-Id:Date; b=LEiHa/v25gQegwE0/c4/da07b1IquLloi4Pdnsz9NgaNl3Hf2PffGzOpdmvxwILvD4arimklXjz6vQAzyLGyjoWpzQS4+WMcjquUT5VFAFjf9g0vcs779Gl9qiWZnQeWf/DTeqHKZn4ATEAhxUE1LOG7/LmnpMvnXz3Z0d6fRZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u9tU5rQF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u9tU5rQF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDE0C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 13:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741439333;
	bh=cq4TJLzRuYvVysWjnC3TuFCq8wnFzSBYRvvKAH50w8M=;
	h=To:Subject:From:Date:From;
	b=u9tU5rQF/RXfftiUMlvmdKa22x0tXOaUNT42rrK8zwrZU3xYP/lRLegT/daBnWRUD
	 kV1Y50jz9t1YgmC06jyEuYhoWnyMP5LYpDyRbPiZjWpVuzsuN7YtIcfHFIVLHDN/Wq
	 GsBHNTH9tDOXYxW91LEQuIQ71zuD3hJkdlELGx/RCPGF/HSeW2uxdtJ7TNvbeee5W+
	 dDZ847INQXrmSf+r7tWFGHzTzOutqd2hQV/KhWvl8tP5bo4p7IqHcgYU/pmGi6/IeC
	 Bj/KCaHEVUEM5s2dCLhjxACwQreUVtQVPtO7pAsyxKPjufGJTmT27ESCEVWFKnpYH2
	 +MK/KmTS77V4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9072BC282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 13:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174143933358.26966.5574655887741939944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97b6d6468cef153630d385f8667153e61adc09554cfce9a8b0aa1aa7da086592
Date: Sat, 08 Mar 2025 13:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741439333
