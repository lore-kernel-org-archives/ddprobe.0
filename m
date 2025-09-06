Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D43D2853FA
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757194794; cv=none; b=lG5KTvDGaSkuRJxw9Cyg+9lshA58Cy0lGDhnp/pe17lwumzW2crxQFjdm1Vl1Ie/jgGPrPPBd7ohRSTRrdKVP0zj6tazPp8oHczvK6gENAEIs0B48bLrCM7ZHSW0JbWXgbzDWYDgaQMb8TCrN/eQuensffwcxCG/sDMWiymRdVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757194794; c=relaxed/simple;
	bh=mL7aIJ3z79W4tdKVAumO59iyCbTvJFKH43zYPr2XaFg=;
	h=To:Subject:From:Message-Id:Date; b=DEWafbimMWmRnrlO4w1+GTh1YQhtEwREu/bbVDL973Mu1ImrxLS2IsFwCjPB42fmvFpHMU5d51tvkzYu+fqomOOe5KpPbR596efMq0veirlb0CGhfKFmiFBnNEcZOZ2bwz0mMyzgs9Vr52Dw41AoLWhr8BryNzs4xod3zCtjh78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=afc9Zv2z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="afc9Zv2z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E64C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757194793;
	bh=mL7aIJ3z79W4tdKVAumO59iyCbTvJFKH43zYPr2XaFg=;
	h=To:Subject:From:Date:From;
	b=afc9Zv2zsmJeoPxSvcDJzSpg2+foefav23o640fsvjlRs19gss89I3bp3MW1NSELn
	 DZNvqHA2Zw6GE8CC5AiXi7PksH7gkvtfnqOhEagrbEvLY+52neuqr6poOzxiuCUvn4
	 i5sqGAUQ/rsvQmjsELbwzlpUxztVIUOqbm4Z6IfmOn3Yawt9iDz2e4RUvmnHK9icqg
	 pyWDW3eJQpd6TIcwvuY9UmppgDL+29BOHc+GDIDRXaNA8m42fO8xKaTKwrJTdru5kj
	 FyZaqxMOJ2s7OdV7fkYDfOd0IZ2Y5aLPwYib4FmISEhI5rka5Hr+beOjJ0LIvVgs/O
	 14UG1NYbph5BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918B3CA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175719479357.14581.12399490846804579836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac0ed191bcc341fc9c0cdd0e6af2f3e3bb2bab2d428fe608cea8e759ba108e2f
Date: Sat, 06 Sep 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757194793
