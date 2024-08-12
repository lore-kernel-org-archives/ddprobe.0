Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2258A175D3F
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723467354; cv=none; b=RLHHNDKILtZnvhtVtX8xAZM1X+txgfCzFD188nby6iUdR5zH7o7hSvQC7uq28oTE6khvE95t02T30+8d0bn+lhvfxMlV2YujeyvMVG2OUMKqqbC24gUSNGg7+miwN+y+6LIoFpmgXMZpxWULiFVP4m5YLNtLrPaxnNVVDuqSa4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723467354; c=relaxed/simple;
	bh=d86ZKqcYhqxx41kvadIR44n0/MHfkFW8PZxP4gd8zrc=;
	h=To:Subject:From:Message-Id:Date; b=c5qPeyb5agUW+CUclw4NzWsakd43LsWapqGru8S6ItUqZWmzbwr3A11tHm/jl4l9ajp1mg+GVqxfFpHkbN4LWnrEUMai2QiUMixPzVJ2UTGUL7FITgVeWgbTVM4t1kQOHKPljdbu/U/xCxNLXnZ+X7PypJD5V+UG83/zHAXWzHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s7l0PQjk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s7l0PQjk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC87FC4AF09
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723467353;
	bh=d86ZKqcYhqxx41kvadIR44n0/MHfkFW8PZxP4gd8zrc=;
	h=To:Subject:From:Date:From;
	b=s7l0PQjkV2SozysEDcEwWag6abPz792nT9Q83C/LciDqRIxaiv4zu5QAj3hDz2g09
	 u/38Mu2Zrg6tkcdv/BlH1vsKzS9jDxyDw0BNOejnURMJc52nUDlUN5LQeEfyHQm/jH
	 HMaNPq39FW7KO5hJAIfHATh7VEsVOmrxV3XROL/aHrNQcdHA54yi2oSb2eL2tDiK62
	 vDXWQ9AqIG/wC/KFJP7+vycRldf0a+NPrJmoVGW1zeU5GNCAuqgS24jnMKkgR6csgl
	 arPVTC+6fnBwVIvR3y8HmsnDKKlDoU3fJvDXC04wy0XLdL6opAbvDm+0hTEpv/thGR
	 monhBzs46lMEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98EA9C3DA7F
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172346735361.19757.11411112664805655228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da875a46a90627e8cc4f62e9202567c44e12b319e914d2e58692be4b56794d8c
Date: Mon, 12 Aug 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723467353
