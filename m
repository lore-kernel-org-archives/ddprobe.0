Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 152E11A08AF
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755214194; cv=none; b=ifa1/5uWAyQtIT7BsNBhuhrVxNr7kueLCjJ7tfC9oIk5ZDkwXO/g2dtQJO0v80dnZqoeMCUq3+kq290W0NrOxRQ7HpvAbGgaZYBQOMfJAPbtb/fSOjJ68et8vIkpiIUISj7gV8fj4q5dlQQXuIY3H/EG/8dtogJDvBW51pU47OA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755214194; c=relaxed/simple;
	bh=A+7we+0sjPPN19tOAOIjbDfy/TZM+eB08Kx0mlEFmEg=;
	h=To:Subject:From:Message-Id:Date; b=OrOOWm0/TNfHZkrxx7xO9m8knxkvhg6A1RxBeI+BHth1TnLCwXIm64Y9jp9RgwV3HkzqQugI0SaHQvpXikrHKCoh0TBtuPDjb4FJHoj4oueVMrIY4LCeTzz4EiPxV47EW0Cfh8glAYaPW0wl4meTtJOD8PhHylNL+P6+jPr3s0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FZ1JFzhT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FZ1JFzhT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06BAC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755214193;
	bh=A+7we+0sjPPN19tOAOIjbDfy/TZM+eB08Kx0mlEFmEg=;
	h=To:Subject:From:Date:From;
	b=FZ1JFzhT0zAEuiwufDo50XggYJVqlOrP1uZkA90qNDMHgrGexgfWh7ic42HbfM7jA
	 JF0YKtix4CAxUx9SfyY8pf00f2SMyqtAgMHncnT7MD046QRuet+t/dVvSKUqJMqmlK
	 C2gKl5lU6FXtoEo1OA7nsD7v7CMVttAiGRB4APr3VQJuc52uIqrQ1rtBf8c7AEHSQs
	 dE7aVQBlvx1xC4ep9jwjZqHYNNARIl08J5DdE3C2AfWc0EWfsgLiiTIM5jTcD/9+vz
	 dfikVMG5IKLN/sBlG7+3zOvj4sNlscztZHXZ0ABFesH90MXLvS5iVlwt6uL4kILu8s
	 RIWRhu+ObsMKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EED3CA0EE4
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175521419357.22582.5804371834075814454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91a4996e736e77785ecacf0c15a445202d1e0abde6404a94a514934bfde36ba1
Date: Thu, 14 Aug 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755214193
