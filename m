Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A9C629A5
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737738954; cv=none; b=pqKq2uXzQNdWgZdAOOH8MTkHRndJkv0N4SgQ9fPDF3KQhJJfkzvX+BdTivIQ4qYH9/D+rJJR1KJDTeRrd2KKF+wjcfSXRrZ4aHctnPWiurCNOM42G2I8iD8Y56qpKZSQTydQICl/6xlaxCCqSLc+mBbyfWY13FJC9KtPsFkGnls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737738954; c=relaxed/simple;
	bh=JhrV0RxpYqw5ye2cfJxzONHrARpKuk/3a/l16BBM4t4=;
	h=To:Subject:From:Message-Id:Date; b=GlR3ITWswVAVlIUma5y0lQf5WBZP/pEwdjUSyIzkOm7/0jrBYMDYj5wA0Ps77MWp9NuWSNG/1dLo07ncIj5405B1Zy09pnF8G+6FuP9y90vd6CRD1/KV31NLEMkSJ9ybe8iv6gsbYXMI9nDtN8+QpInjs9u2pl1wI0Y7XV3MK6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=blklSSmM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="blklSSmM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B16D2C4CEE0
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737738953;
	bh=JhrV0RxpYqw5ye2cfJxzONHrARpKuk/3a/l16BBM4t4=;
	h=To:Subject:From:Date:From;
	b=blklSSmMNgObzha4WUXaZOIzLbtVtqyfiUyesTuDUky1BN1gDRpZt+ZzLG77Yg/52
	 5n6vAYh3jhXsRKmqML73j5w8CoZxe1EysSyGEX+Z4UO0d5Ww7u99SPEBYWVYVcgasD
	 YklcGIN/XQ+shaMC7AImGgBZoseAYduw+b1T81CB3Fqxig6EPvuY8vcvKnslMmi5IB
	 QSF/4XJREnQ2dSeaG2ANh0oAT3sEitYlUQdak1oWHhK2GDnUbPlTTtJaZYxLrArpRZ
	 LhI1km+GUVc8+NXQHaErMWddsZhHXbb8cbohaMLF2QRyP2xgS143El5DE08SFR+IS8
	 FNd/Cdrx0+fog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D43C02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173773895359.9338.10366915207863684072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5746718941abadcac3f2b2574857cea5050e20ea7b9ec5c442ce996b453ad6e
Date: Fri, 24 Jan 2025 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737738953
