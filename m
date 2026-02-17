Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1038B29AB02
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 20:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771359294; cv=none; b=EInEiquJHrii/J0t3Tbps+kPu7OhdTGJGfNcNT1xs3maX8yd4tI+SsfquPIhz+RpR1wnI2XD1Mv5GSR9BbZ9S1XDY2JmZIIzdLKN7peUU6MCdrkoflHeVvRPvzb876U13RGjxnLnvrk+pyDFKa5sSuKnu6A353gWgtssbd1VjN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771359294; c=relaxed/simple;
	bh=mZJsOilvismCcg6DKvscJDt0gE+G9SmmmfY0Zg8eRoA=;
	h=To:Subject:From:Message-Id:Date; b=erH9KxmcQBORpp9r3/3KZp5XQfdA5I6UgMOUSpwI/fMt4Mh+axDO/0FEsRKDwNbuToq9gDm7Fy2pwgFgV3YRgFORgYTddfDJ3t4QrzsynGScOBnomNZjC4fCdsnY5uyGWG35W5Ieqszoa1FPpryav3eDRNhQiSSVRJXp2Mrv9Zk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hkKgkQtT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hkKgkQtT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A567EC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 20:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771359293;
	bh=mZJsOilvismCcg6DKvscJDt0gE+G9SmmmfY0Zg8eRoA=;
	h=To:Subject:From:Date:From;
	b=hkKgkQtTmvEUXzcvzpIkpZzDaQO7aDdNDNKxJgFLg20p2+oMqD8HQRgpPAG2EtnN/
	 a/xmbTlFV+WK09nCW2kTiA5bYP0kH0viqmHxIHVgGKcd7D+XOt9gkz7btdR9azCyVy
	 pCEmGXCl00IZ7o3blxjfMjWEvPMXDlq3XDUVuHy60bR87SLen74RlPwKCpC1RBCv5d
	 YCff54si6Uwzvr7gSYz5udH3PN0dlXM/Ab3pdhONgj6Q0c2W9U7JOJeRiNGqjntsUx
	 bIvfHc/Lcxe/wtjdxUFa4icUTNwiheCjGLLBqk8LDMt9a33kOAWZRuQPZc9+60eiZC
	 g9NFQgnOC8UpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94320E9A047
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 20:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177135929359.3997.14597851157556055271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6155ec2052c5bde53d683d1f5099dbd3e663b366f23b29ee3266c5d83958f620
Date: Tue, 17 Feb 2026 20:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771359293
