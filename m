Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D02D1E32A2
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766966034; cv=none; b=t0ViiZhwca07nJ1sEemEe4o4OEA1ONxXJwfsef2LvM6X1Xpz8iRrQwwMUx3pZ7DXW9USUuKcPeccs6TYIMMfu5vARqZQfMAevGAGz4prdOWqJ0noEwQI2mN/YwEJSU9WGFUfjRZLdVTeYcRgwrfCsAvNV072Zv2uj339fdFT/Uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766966034; c=relaxed/simple;
	bh=oQAweU71Kqk0h6KlfgWCrf8W0li9IIuDJfD9CBsHgNI=;
	h=To:Subject:From:Message-Id:Date; b=I7r+pS8FtBbndUXuOMT6Iqfp9zGTfQ2Alujrzc8MaTRdfpWpVsDteIB3xRKnFbT+JOqvgKxPQmVlZ4nDl8pzJMMYc+tbPUNXNR6uoI8te5uEiFX6Fp1kgb2r3KOPZV7RHiKzOLvg7M3ePKH7kkw3RQN+LEckRFQjs1kPZ++Bf8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IdNnERvr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IdNnERvr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7102C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766966033;
	bh=oQAweU71Kqk0h6KlfgWCrf8W0li9IIuDJfD9CBsHgNI=;
	h=To:Subject:From:Date:From;
	b=IdNnERvrF5TGg5MQL6X0Ht4UPajJBd4qr0eIbMuAiiwLBHnjJKyLq3XAvTcLyDOJ5
	 fx/QlxS1Y0RNqU3+VpwMZfk81IoagUFNYB5IprRRfX1OGT++0cjUDsfr89SIp1TLks
	 j5IpKnU56dCq8jMCKyCibtYCi2ADXhk930sOzVqYWKzy3ivdE+M0730yU5Vtw28OPh
	 d6JjtwV61ASQjXjm1y12pEzfylqyLUqdk8T36mQf9M4C9s/y7oS0As76Mw6asNPj95
	 IpYJHytRZD5kKX8IwTE+CXFnNIzstyCqzMSibFfR5nIDLs/aewJawd2XHxaZEkA2oW
	 O+JY+93UUs+qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93977E784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176696603359.22662.3337013139225524207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f221adf62387711a7dba990b3c457f0addd7003b4197c1ee773db5b58ee2c50
Date: Sun, 28 Dec 2025 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766966033
