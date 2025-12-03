Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192C42E6CD9
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 22:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764801774; cv=none; b=lukq0TBrnmjjLEXIrTnvimfj5LW3jlgp0Ncpk9GrgLVs65+rVJmDgtUqqaUkAGtJBBMdaXTIlC7b/OF785SJpJDEIDj2fL2L4VSoiRSd8VIWoyKcAnVApdgsWU2w8AbNOd7eQHmW3DuxwhG303k4lAnLd7KslhqkTlZThUijgIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764801774; c=relaxed/simple;
	bh=ReLVwV//9MC8xZ9n0s1fvwyQ5bturBdRLy97j8mgHDk=;
	h=To:Subject:From:Message-Id:Date; b=N2qxTCoZ1C9NdAktJwHLGsuU4eR8M3DpSE77hYCqOku3E1gpNbFK05XpZDZTsiN2fiW60a5INRVUU1Wbuy2AgOoupt/otYt3mgVU8XYsOeVelNKbf+gzsAhUuH5g3nkeA35HaqkeZr/szkMPEEi4R4fn4DsseY9tTyDm+eZv4kk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bk558FDq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bk558FDq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57DBC4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 22:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764801773;
	bh=ReLVwV//9MC8xZ9n0s1fvwyQ5bturBdRLy97j8mgHDk=;
	h=To:Subject:From:Date:From;
	b=bk558FDq/0AGu9irMHNf3cmQixybeNhBGUg34xO0RYqDUQHRFdlgx2/XKXEl/55gn
	 owHtOdfLtYlqeeqS6Q5Kucmo+J+rOppNpfdRt4Y+1/J6OZzjtbO99p7Vl4fdjuqpop
	 r1aYpQMibCfC08XWKOdASi+LEgKYCkRtX8BoyGfaKJbpuwV1303TcJ1UjsrAMhBaFG
	 Mm5q82Bf6+qsf1jMUmckq+KjOeWyW6y4gxEK/AT7wYSvWapzOdaj5ojCoDBrOqKMUa
	 8wjCGLGJbjsWeaasoid9ogcnHmplHkN0pjKY/shk+WCYGMKaBnDBeqqaWWBYeD97PL
	 R0qbvUkWxeCNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934F8D15DB6
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 22:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176480177359.1875.16263721039400287344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 496a028113b043b53adce5361297319275a777f51faff6989258ee12818a46ff
Date: Wed, 03 Dec 2025 22:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764801773
