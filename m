Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F99123AE62
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 17:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777396654; cv=none; b=I+2vC8HgN8alPV/L8xD8QZE3peEbK73LARgG0Xztz8pCmNwtaOUoc62AT9RGHeVP86ZuLdz6Uo7ZoQhdAkC0sl4EKykLEb5Ur8AeFq3mkfXcF0XgamUpFOCmWHGcmjBsKpGmHFdKhEJ7+b3DHN9Jl6q04cgmP6qf1PF9PT4HAWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777396654; c=relaxed/simple;
	bh=Yx0rTEESdPyBagGXNYjWlnliP35ai7/vYOZSz3WeTG8=;
	h=To:Subject:From:Message-Id:Date; b=U/qLBCLSjC3yvaDMzZ9x1pJ3GBQJkGUilkHyATtrCVbzMxog7wBNRSWfe3OrwJCJK9cFj+umsZm55C9reEQv9DDMrQ8ZkSTII82wTthV9ksXL5EAgJRvoCbJHH3Ow28s73D0UKVS/FZA2o5frzwac1UI3VuzqbX7VMfLbqJayqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hs40uQpR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hs40uQpR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF47BC2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 17:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777396653;
	bh=Yx0rTEESdPyBagGXNYjWlnliP35ai7/vYOZSz3WeTG8=;
	h=To:Subject:From:Date:From;
	b=Hs40uQpRAxjtYiuMxpNDDDQlIHf62oGSux+izcDZxYPGuY6GG/vJ0QJmiB3IequRx
	 ynPuhaAplka4XjWcTvCrAEKlnHTFa6yRkOcY1U+7iX6bgtdIRnvcbvCysx7Q8LRSPx
	 NnGUcbYIP44s0gb1CRAMReR5ukazQJyaUQsRKrf7guNluuMEx28BZxBm1KY/mp7u6x
	 M737WINZbD2JhrF1qcLVS1n8o84MMWrHLIZk4eHTy10X2PIj3H+2+hHQmC08nH5mZm
	 7DRIqkVjt/x1bNy59cLV8fnsl7NulUl9iN+A69zHwQIIDJEvx/ZrsP8qWO1mvOaaWJ
	 goStd7i32GLKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3EEFF886F
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 17:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177739665368.30142.12475914994071778202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 877a21dbc75fa5cb4526ae39e3228d8fd130323d9a7db7c5c33e3635dcd85726
Date: Tue, 28 Apr 2026 17:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777396653
