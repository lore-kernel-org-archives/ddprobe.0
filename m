Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9154364EAA
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 13:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773927893; cv=none; b=kmkh5baJjFpnI/318WsGxGK2Lo4B92MHTtbSPnKwtogw9Q9BfT6RWfd4aDjwL4d4fNobfQePyf29L2wgCy3bg0/4vgHgN0Aw++Jh9cVwrF48UUuOTa5Ph9WQHxVOeZnTmJJA2K1rqWVfhC1Gfk5tour30eWb6r5CQnDVtxcTvUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773927893; c=relaxed/simple;
	bh=8F7/yxCcIG5sucJ1Mmjvu3yu7KsF6y9ymhNGP/P0TQA=;
	h=To:Subject:From:Message-Id:Date; b=GepjNL0c/L5E785pFxVtJxD5LhhmHkvDrb+7fvZaotbrGfNbE02XY+JUYIM/MzqvNNfkh92npg4WEosdnZcT5Qu86d/4aMet4VbXnph8Q2MGy5jiDt7Y/WWhBBpHrRskAMvGihEwmC9tqQcTS/DfAVAyd1NKsTMURNdGs9wzLbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sBhhYkG/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sBhhYkG/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D8F1C19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 13:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773927893;
	bh=8F7/yxCcIG5sucJ1Mmjvu3yu7KsF6y9ymhNGP/P0TQA=;
	h=To:Subject:From:Date:From;
	b=sBhhYkG/9X0zcbWQSrA8JoK7SfncjXnGBY4jo5hGzs80IdSRfbyVIB/tWTF53xuZZ
	 Ofug7IKqop07ZAHoA7D43RL2Ax076jVGADZqzSwdVYsQgWjLmps7oDt/CEYGL+llEG
	 +DZiCucB5SHISaySzTFhQpPzj1wawy0Wa9Hj6mf0j56jzc9AZOfrU95au51k05lTHU
	 81ewo/T5y/mVPspWgna3n++hMc8uT84CENp6i+WrD2tYTZLwxZVSuEvvO6ZQSkFu5o
	 9XRx4tMhMME7zvvjK7muXqI1i99CH+gPKOWnH5MRgyB43+J7+PJtxHJotjfvbzrbID
	 v6ciTa5cyr1Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC2E1090227
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 13:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177392789357.4358.15527246198232280825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e93b80e8f562073a1cb67124784ac5346fe2c24e6ce143cc54c15ccfa383b1f7
Date: Thu, 19 Mar 2026 13:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773927893
