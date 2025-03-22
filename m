Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F11961DE4C2
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742681994; cv=none; b=rCYRa8kyHMOb4GnEd1vg5k3Yc6k26kzxYrFigPIcqNGHJELu+m0Ts4mOcUL0an+UZAZeYjQDn8+k+uhg3dtVccMsp9y2ZCuq230ZRrndpHeng5wgl+DstkGy3BdD9U5PLEuECddyhE57dRaO14g9V+yJP4Ke7pWQy7x4czgXizg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742681994; c=relaxed/simple;
	bh=DnC6c14XF4oSdrtkHCkuU7gTzdKzj9dlwRU82/ADKfU=;
	h=To:Subject:From:Message-Id:Date; b=Cpcl79M8eqXqOi8cs84e8g9u4BSFfqeBy2f9AqoyqM3+cq2BLTvTFwCWOGdMuABDNRaX9KoSjxB2BCkuTaqFZtpJe1MkhOxzQwunjLjfJiQoCmIhCj2xn19gZmnm7s0wBe9MFjM3mscM3zVnwGG+5q9HUH6onfXw4uy+FDAeZGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m/L0K3gz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m/L0K3gz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C786FC4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742681993;
	bh=DnC6c14XF4oSdrtkHCkuU7gTzdKzj9dlwRU82/ADKfU=;
	h=To:Subject:From:Date:From;
	b=m/L0K3gzSLC7lniQTeO19Da7nb9dcTU7Mqjz8NRAQ2EnZl1+NHNL8BGRgiWHXRqul
	 OuvzKmgo3OiNDcXgW+E9QqWmAEvWue70ReIL73GOROs7QX6paQC36Xg00b3YeOmku9
	 FSHY1iFKit63JByPIeC7NgKXAAPfH5EzfSe/yvAJgAfskQZXoOH1cya/HBA/T78Yqf
	 elcVeXt9gqkFuuWnD2u7fYz1HKPO72AaCQ/g9x1NWuWXuY4LwQ9PIU1+VanLaAwhB/
	 vsHg9OAG+HQHazi8LZzhpsaFlUvDvDfEpQbOHcF+uci2IQMHr7N43chEmUKmo2/28p
	 nDzdzPlqBoqnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD63EC35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174268199367.32566.10997963969535135224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3f9fa8033c20bf1513b2824b1f8fe3978664c150c04aecf081cd1374bb0d427
Date: Sat, 22 Mar 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742681993
