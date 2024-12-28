Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68D6C22612
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735376154; cv=none; b=MTHai2xtRbrRctR+XwsGoAFerYXj1PbdgdKDXpkpqAhY5C/xCzD2MOT9Ywkti/aMV9G0gchEijIUg1eaU8DXCV6AjgOIzdAnHZ3XhrLcz9CFvCtzcIXtztCy2qnLXiydR3WRl2IxF18ExfqF2aaPFwy3+csLdMPoolGMp2194nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735376154; c=relaxed/simple;
	bh=E6wuXx6X4IHAz6hoBafZDUsOD/x9inmGTZlElnaqpsM=;
	h=To:Subject:From:Message-Id:Date; b=haDMF9fYYYUMn0o2xCMp4mFWoeemtt/1uEUGxKNraBmcQEviVEdjVy4zqQtsJWEgLSsymUgdBT8uDAxBfVk+VgaUo1/n8z+S+VZqcwbSAvf4WkWGufoRb+SUUXS3kqK6n2Vr5av9PS0OamscWzC6kEuB5xTMHInGXzlFFYp716c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GIB2flYn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GIB2flYn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0190C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735376153;
	bh=E6wuXx6X4IHAz6hoBafZDUsOD/x9inmGTZlElnaqpsM=;
	h=To:Subject:From:Date:From;
	b=GIB2flYnxtglfK/VphM1kYxIadjvE74tgPeKJu/p0apKQ5dYsNl8v6DYW2mBz/OWv
	 Pkd/awRX1syHhRc4V+l6c2Dx0bweckqxH05gRCsX+PeGxFLCWWHyfqIHfJhS+QI06N
	 qEqd9qGzdS+CbgQsyIXoMM9nq1AWjZfxU62HkD/D1thLdvXvXHStu4nkvrjN3Va1vB
	 Oe0wIbzXlRvtJyxal0MGb2/PChQN/83t45nM2PQc+XkH5H6wItP/lZGeE8Vx6+504x
	 F64IEmAKGyhYoOnWEyn1QeDy1dpjzj6zz+fahPZgM1dEbX+Zhr8rWfcS74B2w6oRWg
	 zJG3nDkcxz8uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0365E77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173537615361.23957.18112927086701542413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2df2a8ecf4e1f60337f55509d4bc6019f0cee301c3248b234d9d9ab4f861fb5a
Date: Sat, 28 Dec 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735376153
