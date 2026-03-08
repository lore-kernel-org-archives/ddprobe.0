Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29CFC33F392
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 08:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772957094; cv=none; b=IF9pAEaNUdCekkmgw1SoTk0hwBfjkntdMTWd8UCPaoEVW2riMmDmc8Ff/p6nAc07deKAgMLoLw1t2AyCex4zJGHS0UwMVnObrqejevLK4IIllzlk2/c+h//YPd7aL7lkrKBtYf1p/1QwS1ttiQ95oRJQzByYsyJ9c3DOVC+BINc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772957094; c=relaxed/simple;
	bh=nPTgVgU8GecezSEtWQNyY24EK696BDM67uN0f8YYyNU=;
	h=To:Subject:From:Message-Id:Date; b=NztbODNJIfAYwyB/Ozxv7htMm0MKNl046vSR6RFJHp3FznKzB2E3zg8Ww8Mr2poY8v2g0kLl0QeKz9A2wyqSX2a4hkuFj36iswawGJFWD68jP4e9hfkuLQH0OaEafwkf02gOPeAXZ7n2l2P1NqIXncyNAs60SGFUJWMNxttVm90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GkEcXfMc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GkEcXfMc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7187C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 08:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772957093;
	bh=nPTgVgU8GecezSEtWQNyY24EK696BDM67uN0f8YYyNU=;
	h=To:Subject:From:Date:From;
	b=GkEcXfMcVrFbq+2EI+U5Fmu1QtTs8SOwIjPQExBV/SNLUfZemYMCUAG/7dFcjpfHi
	 qZueZfSLW+lTWnwdpEznfdPKVbm434Rm2SQe5BHbKwnHBZSnUui3NSFVW/yoeZ1Xi6
	 ZN7zPjZi05KbFIj0C44ao1MS+aQSINSW620P66Jw4xnQhiiBikcEh5fo1WYMq0vN6j
	 dT6N/DRge8LiD8I60PoqjAtvynMHWXxu8ABPAdsUdSrNlw28r0mltsw6LsEOavHcI4
	 bihYeyw5+CrXPHem3MuT99GB3OnTEq5w14e1ZZ9QhwGJoHWQmG79tCXOXp4J1h62T/
	 WUq9Jxsl/3SeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A98F55137
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 08:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177295709357.8083.5380669084472266597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca87158f39e3bc15aa73ddcb363cb0de796bc8d0476fc1cb46e016ab25874698
Date: Sun, 08 Mar 2026 08:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772957093
