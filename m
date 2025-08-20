Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B19721CA0C
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755668994; cv=none; b=eFMPbuMiG2F/l8oSyTRkeGu9Rx+Z7PmXoW3CFNvUU1mkZ7Q5mD0yrcSPBnvhFOPPY91HJarb07EbIBMoXW5SWE3k6q0xKcMiY6f7GOm5lfnZZelMs2h6pfd6MpYR7YqReFTr0wDm4/8uRk1+ycN6ZsAcp7zZE+V9mfLkEg0UlMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755668994; c=relaxed/simple;
	bh=rD7nfCtdzHa2Bga+gwDYAXz4bmF0yMiO5tgDD9UM1Do=;
	h=To:Subject:From:Message-Id:Date; b=h84c8tdeto0faiL2smZPz2uTC7+iCEKUs8lU32HQcY9nknDr6bNJw7AuitMiK7o8bACvOcohfVAdmngT7QvxeMAmCeOhZBTkN1k12MLVEFAj1azgwFQgKtB/n4QwZ0zSkYSm08iYLuGx7GP/fu3BXpPo8Q+iCtm2OFvCj0MLB8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kVScCDQo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kVScCDQo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1737C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755668993;
	bh=rD7nfCtdzHa2Bga+gwDYAXz4bmF0yMiO5tgDD9UM1Do=;
	h=To:Subject:From:Date:From;
	b=kVScCDQoxiHcCyQgXi0xLZZ1Orhiz/jY5IwuAJ0rz7fZ9fHfkQ2Y6OtDJJ72Rd0Aa
	 EiaxUMOS0sNE4b+mrmQy5LwOgIGjim9XsPSzNovI2oujiByF3jm64SjXF+TdWeu8sn
	 V8WOwoEEtgwTshs9McPL8V3oEnKCfTcmjhIJdB9J+EWSEwAvhme2j10FpapjwLh5lM
	 G0oTFaj6bfDdvFmgy0h0YXYnZUTU/6psiJncEwCVgQe1nfRjFZz1qfL48KMhDK6Tit
	 8k0SCALTAJEE/TKQf1hmboYRZMn6HHaudCjnlPP4Bh1O2F7VMZ/ke+DfDSGoGcu8B1
	 0iZfP3DN/hzTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9090ECA0EED
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175566899357.28209.4165828261671326291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0c6e3f2278a6ee53814b43238194204f239b9be7a64407f093c1e2dee31b938
Date: Wed, 20 Aug 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755668993
