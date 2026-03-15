Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7E00226D02
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 04:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773548093; cv=none; b=A7t5uhzUPme+nTXCYKQ1EE4uaWOjxIP83VXDe9dZmFQJWFFpqVdb7mqpxGigIMlqGpXncJAr/H9ulaxlonaemX6StcTsDE4IjSVqWHBJVzAAULww52FtsIcFcbrNRZwkRi3Sh3mz+xcRvYmvCqze1gvjGsUzBAZ2y1yJKrGmp/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773548093; c=relaxed/simple;
	bh=5AzvvvQpivoD8NLT8CX61VafXzYOLBu37U4LKRK8wBg=;
	h=To:Subject:From:Message-Id:Date; b=gz8qkYaR0OM9dtneH52a9JvVEg2njlNu5RgYCmxfPMIlvBVOSi0bjeXIcYjeBzEwPhEdAhWfVQiUl2/+FOkixXyZfQSijN4qQ9JlWnBxFNCDJe58gwLPs3AyGGnhJj1YSOEfFWLvX7hxgftnu2Iu5oaCeDl5ApGqDIzqJFSyc84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TuE1GEgJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TuE1GEgJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3233C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 04:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773548093;
	bh=5AzvvvQpivoD8NLT8CX61VafXzYOLBu37U4LKRK8wBg=;
	h=To:Subject:From:Date:From;
	b=TuE1GEgJXa4WV9g3g66PR7K4AlKH4+EHPR5IThjztmzBOkcnILJgKw0XldWjlRmrm
	 3R7etVhc7VAeW3TZEipzdIYGEmmvVYCza76AjmxACH5b++Ab9PRZKkXnUs4UN5QGZr
	 JVbDQa+cQ0Khqzcb0Odf6g9zm1AXeQ3PfaJAhMcSft2AViDBXp4OpIRzuLMsK/cAP0
	 tQjcMA15RGjzejCATieC/iWVLD+OQFPOVXXHxxf8WBejbz1VTFnISApOrY+q1PX+u8
	 KHY8rbT2+TUYPFFRub5/KM7jmJuCA/AbLaUEYjs9T2wcK8bHgjFnM2lV4NWUly7Y6Z
	 QakxvQ3S5ezFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9227BD58B0A
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 04:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177354809357.23033.3367027055321688970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb246f94fc0dc720006ad36d8eb9b9eda3d778430dba959dcd6290d6b9679604
Date: Sun, 15 Mar 2026 04:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773548093
