Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C34D1392
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743812994; cv=none; b=hOqKyiD1YVsv6bSEYOk3Unb3JGkzSeKNyWoXeJ4FUTzN2blzI3F2A+yXsNn8fCeDM1Rgn2XFSDenJt3Q0oVd6paYcKu/PudxhmKexLiXho9yzkMi/OFl1JcxiIXNpCannzfPHEhfCtsPDbrQ8hDLT03cmLK641WBriAKLUnSxCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743812994; c=relaxed/simple;
	bh=TIZbIe6t6ON1OAdC4PPu5oOobwhg6xjClg3wrtoWMXQ=;
	h=To:Subject:From:Message-Id:Date; b=elbADuyTawckNllJjJ5DCFojNEiEVGMSdAC8Bcml5WweD0R0L8v4/+gyyg2eLWaDxpiuQORwIZeFdTGa1G+bnEg+WqpXD7xRr112DP4JAawsiOxEPihwyrM78GzkgJq3rEPNDUcTZoGaxxsHmfnPtXntmjariH6acZW62FYXnz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PQW4ozTS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PQW4ozTS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1ED7C4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743812993;
	bh=TIZbIe6t6ON1OAdC4PPu5oOobwhg6xjClg3wrtoWMXQ=;
	h=To:Subject:From:Date:From;
	b=PQW4ozTSSpvHJ3bWcSuChSUMeqMnRHubDBpaiBqCinQqS4eVtcXe8U6nJ6sJwx+Sp
	 Q+HStLOgUNhSzNU3xkCuMTJ08aZ72dtL4yK3Gze/kRYsT4fxKJuyB0NSIbstjN6fXI
	 4P3x9V03xnwEeOeCJ30xtcCr9R2R3cHeGzzXniy1PZ+fTkOcqlji9XHud+6aaASzso
	 v3hrkNMiuIMAFyl4/qVK6r40mN+mqDYscaxqgrhEB70p6ut4sMxbnc+7ID0UzpBTjr
	 JgKBgp1HkLph7jtbRG/+s4zEhyghkpDdvk5Vj3LNsNWjPoIt30fOrZTryET6dHcudj
	 pnET8wUeoPN6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9919EC36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174381299361.16374.5290056227728840879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b34873498f01d84fc045c4f06cbb6d55519646bf9dc0563a580d51ed09bb8969
Date: Sat, 05 Apr 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743812993
