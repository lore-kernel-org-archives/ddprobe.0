Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29565192D97
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 04:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776485254; cv=none; b=A4FsLd/quyAsiDUTsV7xFhPatGYWTdtzNHW03XeH03pyGd7LILu3NL6SkwjuFBMj99cmeEq/wMFx/yHfeQICPV8yLmfwp2FhTkV716XeH01X6i85KfF9rMOmhA8yChyEmbCc4chp+IYCwOKO2f30p4uRxR1CRjCzmjDa8xwVzVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776485254; c=relaxed/simple;
	bh=BfUvFKboIEdunewKAc8MtYAhWpYRt+8MZKtr8uJjX0c=;
	h=To:Subject:From:Message-Id:Date; b=j5M7QsLHRs8FFzQYvaXg2/v2T70T3SE+2ZJJa1D9BDS2aEbHACiU9gdDALd9BAGy0h/cEBWCZLNOwp/lj6XkQfpUjYRFdQ4DTgh8a0UtM//di+c38LTWDZvOE8ncZXm3w7Hn0v5CdB74JZNRLPjMpohuU6ZxEXeGyhdOPfpdLQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FCK5xwtQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FCK5xwtQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C339FC19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 04:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776485253;
	bh=BfUvFKboIEdunewKAc8MtYAhWpYRt+8MZKtr8uJjX0c=;
	h=To:Subject:From:Date:From;
	b=FCK5xwtQNs1mCmZsa64vYrxqkGrGIc+D+ve5+1PYSivf/Vh1ZmrF44iRoPiHXgsGT
	 mEdxYiYGjGuacINJTtUvnRc7YmhzX3HONm44rXtl9RZ3fDzY8vhxvxGE37402B0GoU
	 8D+PqKoj/DJoep24m+JTFDWw6UblnLm/vVvf5lgtUUSiJJ7qoFE0uIlhp2w0tv1mko
	 80MDdcIigX3Vd9MtzZanWE1Pec+O7qWu/9ZXQyhHyl1Pot2ylyhD0eOYE5fyUep4XD
	 0KnRrZx3S7Bfb2MHYc2DHDEv0ADgT9WdkWxQRTReZH9voblOuL0MkmEofpybrBERkx
	 fccJQTtqHoKLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC930F99C73
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 04:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177648525368.6292.4171771189664943215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62c1f8924a4798b5dedf135ad43a54733231329210513b5fe62117b0c419ed9a
Date: Sat, 18 Apr 2026 04:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776485253
