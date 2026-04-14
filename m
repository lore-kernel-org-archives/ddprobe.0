Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2194D382298
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 08:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776154054; cv=none; b=GZxPiGJX5HUlsJggRbgjQ71/xWuLn0ZKU2dmNk+gSfM5/0EaFKHNS7GuEJn6C50rGRaSzvLLy1tF27SNnlryHBqsP12u1ZncDZhz4EWWhOePhkqmPw5uwVqm9doh4NKnAc7pX9QV4IUl645ybAFTFguIKQtdImjG5mUzwnonmlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776154054; c=relaxed/simple;
	bh=xWI9j2XC445+g8A3akiDy8HtHFwr0nFuWJDZQDCGp6c=;
	h=To:Subject:From:Message-Id:Date; b=Z5OaF0sr7Laspq/H6tzRspaUzvd6miTlzG9KIMWz5KZc114ULnfLTrQfKghAmSdAVv3nKyyqZjeWp0xId6ZdjUp3fmLiTs1urPLYKnsLQCFT1tKhv4PX2cQuNoIBmeOixbx6Bh7FmX2LCsW+NG+V5xaEENmE2DpmbL9PmAtEv3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UbshPbPK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UbshPbPK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9B31C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 08:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776154053;
	bh=xWI9j2XC445+g8A3akiDy8HtHFwr0nFuWJDZQDCGp6c=;
	h=To:Subject:From:Date:From;
	b=UbshPbPKsdXji/+SZwXqH1eFZekHZ5zJKfauIDo3VRP4KEWmktBfDdZ/FzBRta7F/
	 LXF2RpY+k5hv8DxarJl3MHGY+5CWBSomAu+5JbqZEnCJ3ATCzhaPuXARTMlOr35RuP
	 VPmMQhtRfldKBeqgfC/9qVvR5g012G+UJcH2BFDmR51WOjTN9DbLwdk+OUIhN0xVLP
	 OBYFOiDrc5Pzw821UJdKaq42bOqaLE/4lUuCMdfMQn230ajSl/zGQjcMtrKVrztSBp
	 85HwH1giGyZpV+xOr+v7Hwo9emflYgjJe6e44KhxYtdMfbfNrn9+qGIFfHReLTsWoT
	 sCMuXvqf06MGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA966ED7B87
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 08:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177615405368.8161.3422463739472022870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc03b4d0540777130b060b4218bb01be3b6b1a091ba949507c0a8c12ee3c7966
Date: Tue, 14 Apr 2026 08:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776154053
