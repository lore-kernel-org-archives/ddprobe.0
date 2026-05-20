Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 075162E7BD9
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 10:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779273634; cv=none; b=XLYSssMMGjvNJOQahSec5T74OMWBvvLwmiH8tats2ePFydfCkGEsjehbv0UFxirVyyHg1FHXxhM7kkefcGaERT6dhQ3N3p4OEVmNuYq8T4NNdF6ufvmLUFwkMjPd/bk80P0NiM8tXd/MoSLm5z6/C+4EUuo6XR7/7bXnTpF5/4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779273634; c=relaxed/simple;
	bh=O+I9xZSedwEMBZMrRcrNKQ9tjOAIlAAOWZabZFSq334=;
	h=To:Subject:From:Message-Id:Date; b=lg7kRJusu9nE4USJ/wKW9If9OYKTMcfeFgAiL/3Ua+2k/1o0eXhGLZejqFe9WVX+yIoTlDmUqoJO3NPSnv7JWfoHEt9eWA/YbTsBeLpLQd2xxpYWCa9YBeQPDxgO0zMjgYsG96IFN2OFZ19FOuEXazGupqS7G8HZwOWZpCl0gB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cdl+O5Do; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cdl+O5Do"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2F92C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779273633;
	bh=O+I9xZSedwEMBZMrRcrNKQ9tjOAIlAAOWZabZFSq334=;
	h=To:Subject:From:Date:From;
	b=Cdl+O5DousJcT53BaAhjShk9dh7C9m5BPloytLG2GTT/mp6/ZzRj3HWs7tk1AtBkn
	 sq+vcebKU/chAd5+tkOaloKKrPitKkphC25jiJ6GMUD+WIIc/kXfFgnjMLVQ5v+9mR
	 MRhVKq/+OhZe6eaHDGpqLfmb6cn06XRoEJj4/ZKDS5tLV9iLTiLmqtjplsWH6nfKqZ
	 vKK35N9RjwwJMBKc80hAY/rb2xQeTtj//5Vl3yfT5LuQbECe42XhphEJQwSy/8lxtL
	 82itMwDQ0Ds4ftgUmoqzUzUdkhO4h8tupdEtTMAjnAVMkB63MovDdY/gLp+pzPEZGj
	 MHQ2c3gm4FLJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6E3CD4F54
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177927363369.10662.7260704389917558548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 395fe150a60ac4d360dac04449b30f1ba42bea81be2a48d4277dfac3b413bc87
Date: Wed, 20 May 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779273633
