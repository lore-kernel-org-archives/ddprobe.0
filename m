Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2560E17BB35
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760948994; cv=none; b=jtumx9dvuVPCVJjr/buouA+ky6Cad5BiNpyDQxXWCVS/FB5rkzYMz8PeWe0p5M1BMOEB4qYqdZnarNY0k1T3CdcsirLqkZayIBFbGQ8SOE1hzgZsD9Dd4DCC7WIRvnXgFn6DClritkFvYoc8pq9nyw4qdBlMank4ZA5Vj4WfYUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760948994; c=relaxed/simple;
	bh=0LEGH79yJ/4af/kB/Gmbl6gaF1SscNwpl2oNi1LFxj0=;
	h=To:Subject:From:Message-Id:Date; b=WPVoEByJJUoe2X81AZY3pgr62n/njvMCoj0C6MOMjOXgH4KZGRQDWA+FRUugqLM3SboHzS/ImMzqPOlsrERzQdb6yuICYTEFcbHiyGSF97BslgYTXOdPykeujbuSUjcyNnQj7xnzHyP7sVMRCFBxUbuetrKcMg5rGX5lQCsj7q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mNtvMRjn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mNtvMRjn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35B2C4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760948993;
	bh=0LEGH79yJ/4af/kB/Gmbl6gaF1SscNwpl2oNi1LFxj0=;
	h=To:Subject:From:Date:From;
	b=mNtvMRjnkWRxiHSc0oH+nHpcL/4K81Fs/zFFfpN6SZtNqflAK8U7vLes/Kqdngv2q
	 L7/8stwLbegcuUgqWmwaFv783UJpSALZs88SLYAzSDBBROuQuT/7+sUIh2hVOqzA0A
	 kyatayol4c0wfLXefJa1CivHvnLEKKFB/4TFD21uQxP+00vUQDXWWM/+eUOXPbJJXi
	 r81cAGVjvu9Vp1Sb8F0thxeeX7IiowkfcVNljYyrhRR283KfELgVF0zdm/AJj4QKqW
	 9kcw5Eo2DQcMTb13egAfmcRZD7gjanuS2NohD3nPG5Ge9xAIfrxeXKGm2vtybA45YF
	 QGTXzu/w9hzkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944FACCD199
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176094899359.10833.6196646862623239284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e32f1ff6477dcfe65f9a8d07cd5c76029a5550634ed83426aa8e1b43d802723
Date: Mon, 20 Oct 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760948993
