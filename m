Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E30A72F8E9C
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 14:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778252254; cv=none; b=g7DmuXGt/x4GDlxsGsE71+voQzJ0PyqYd4w3qShDWJ2eoFn4DUl0orn+/vzKVU2S711Rk5Tj0vwDwwg1y3VCtc7GCfvGw9keT3UUvOpMh47s5s3TWkauvpzG1bdZLD9BmqJkvg53KyVetHNzZU3FCRguVMi0nTdzrXfEPEsK20c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778252254; c=relaxed/simple;
	bh=g6LWjWP70jA5CU8wZ+QJAxiR2O4hj+AErOquhuO7hdI=;
	h=To:Subject:From:Message-Id:Date; b=pp89E5TpSS586V19KY3/vIDN1WZdGMCZtrYvMnNfGZ1D0QxQlu68+3V32ETTBxs/GwU5btUFtRrxn6ZXVgxsEoCW9mjAO6Ry20ryI6h8zQh5R3jGeTgNyx3AdIKvKaos3gXm3SRfw8xHVTEt4jcii+wTpPdY1VFUlhJvgfNkx9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IHHuBqKK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IHHuBqKK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6BEAC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 14:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778252253;
	bh=g6LWjWP70jA5CU8wZ+QJAxiR2O4hj+AErOquhuO7hdI=;
	h=To:Subject:From:Date:From;
	b=IHHuBqKKAEysWhC+05h79SDGfDlexI02Mtoz7Zv4g9L/9lT2AKwUW1rmD2doYTDQ4
	 Lt2MFIP3HWRzaJ34t4Ibex8MUvq0oEi/KKEAXFl9lkWvDvs8uWdjiX4owVuHg9+Boq
	 QAfkkyT5bLJsJKjO6HvtIBMNXS+1fLLjuxvLDdduORHG+vvyGcrohKbAti07VS0B8I
	 alGsTM0xw/ZL5M1XqAnAUIVJAA5CTIfKSNic97r6jbiMFuEKCOapMJcPKitaD2OXhk
	 ysTGR0o7KvTUh19Vm9vfuQh89NrIKJg17hT9bVXSheopW1c9UVoriaqY/I+bb+2vUm
	 xAMl0igupa19w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B821ECD3445
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 14:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177825225374.1546.2221299573676682737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54fbef0fe330af3d185d4238331810ade2ad1ad256127929dc440c0460ce4496
Date: Fri, 08 May 2026 14:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778252253
