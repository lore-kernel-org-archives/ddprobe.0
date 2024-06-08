Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A77B219F6
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 20:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717877843; cv=none; b=pecv95y4kwQ8lqwnjRD18x87yR0y8xsbG99wRsPv6yuou+xkludHhz/tRdnnsHSbrm5FwOCa14YzzSz0+GC4Hdn+fAVrIF0fSOK+i8UI8V5rCKV2ZaKxLvhIiec7Yfh5/1E38DTuCSDe/f+UnYgZDRyl9VaIdmT1yjDVlY3okqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717877843; c=relaxed/simple;
	bh=bHp4+2+I8GZJ/37hzs9zuSt+p42YtkF/jSk3Ui7khcc=;
	h=To:Subject:From:Message-Id:Date; b=iT6TAUAhdhVx6mpwtu/r2cyf4xwU0vIXxWaW/2Nmx9C+JaJz09QoxXfBBVmQKRYIwchpix4IQF4tfEEdc75+HkReBX0RrseUfg4KLIlRoYl85qHT9EMOe12akwqSxGv+GZW46PHuOZ/rB81+ZUDXixH6q7sxv3P5LfnN5CKWOUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JrQqs05H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JrQqs05H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E36A7C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 20:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717877842;
	bh=bHp4+2+I8GZJ/37hzs9zuSt+p42YtkF/jSk3Ui7khcc=;
	h=To:Subject:From:Date:From;
	b=JrQqs05HdSDrzyAYE5KGxTfU3s6UA/B7+0/GPVpZHdgcVMFl0MvKubu9aY1R9DyPB
	 8l0q43l79juRKbFlhCUtPrJGMjJ9JomHUcCIgbwW6wn/bWdEZNpEm1CIYiP3XavbRY
	 BB0/DVPhyFGIrUSFCZ13LN693CnCwqNDxuFRuIylOydqZkAFC/6/srv031z/Ugl4Rs
	 Y4KK7i43bnWYsoMnBvhbrZpothHGf5Z/+HFyfgp1HCePhvUyUrsmtTOy6GQMTmP93d
	 JpftMh4r7jVvk4/uueqRrdXHKIpfLXOak/PbLo93SkdMXEXYZKX43TmAz0atmz4EsF
	 rrIWa5/v5z/CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCD5AC25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 20:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171787784282.22968.3777827060456633893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e3f8f9bc91af7653069738e55e02f6b308380cafbd877ebb95587780105fc5d
Date: Sat, 08 Jun 2024 20:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717877842
