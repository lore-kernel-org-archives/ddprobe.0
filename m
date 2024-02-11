Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B35C3D38F
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 07:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707637097; cv=none; b=XbdUV6IWqAFuPBwXIxEk85te8+XiXmwmzcu2RDWsjkuFW9tf1WYG/9paUsEjzyZXEVI46IEF/x7MRb857CQB81NUH1/oLADR0lAAFEGAI9+BEiN8W+m5rneQFEUnRPdmFrwSXUsxUEmOnEDS/dbu4uzXyyQoj5BU6saR3TNv+0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707637097; c=relaxed/simple;
	bh=SN/+llPRAdcbertXq+eBaEP3Ec4rh3NGWv02Xi1jAAs=;
	h=To:Subject:From:Message-Id:Date; b=cblFDkXlltMiAEK1NrwLh+RohEyYauB14+/G5yGXFp5MBrnUBVXkye85n+5AzOX/d6i58Xphnb6aZzLWJaBn09aoXz1Rzfz0zRVm0u3jE64Ismc6b7Z4sZVlHJ/eqXPW977rrG5MZVzMwVhhq1n5zzHQKsW4RI8XkchCrakRaww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bzo281CN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bzo281CN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AFA5C433C7
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 07:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707637096;
	bh=SN/+llPRAdcbertXq+eBaEP3Ec4rh3NGWv02Xi1jAAs=;
	h=To:Subject:From:Date:From;
	b=bzo281CNfV0zGMkNzkxMS9TDD4x3P0PGtrhuVORaSC3TTWJ7WfEP+Ge2uduaZuVGz
	 BQ6I39/ZLHCKUtEpiXXBkkFt84m4mhY2B7nfA2Cz9QKvEDmn6wFF+WqKhoQiYLTdC4
	 srfunHVAHLOkolB3ebPGY6R9azjE17WyHvYqJThubaz7SMuUAe9qCRA/kWJaIN9WgI
	 ysJw5qnPu2Bf1kly6GedubEUy7oAXhVcpeacAiO9XbSKBgHE8B+s4mKwCD9QWkxIiI
	 RjlU4shNrHe8QLGXzZjiYqJJbcC/EhgAdEX5j+lXgs9yBI8kBNFO6fTqH+HyGTVAT4
	 knm06NRYE7ekg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67E49C4829B
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 07:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170763709640.9148.11353433267749056799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8f4e5f80d22797962145019e63a29f9b6d3649da3239f21051af8914415d8ac
Date: Sun, 11 Feb 2024 07:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707637096
