Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D721F239B
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 23:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768692234; cv=none; b=kZcaFNjWhnqXTUx4MVYi0c+4shxcKZbWlwwKL+UElyuXCBz/MI24NI7LIzRNlacqDtDGZ1O2FkiOGmDUJUV/almoRrBOKV78vkWUeptputPksHAoi0FAP6V9bwgwYQZ730rx6HTcT5N0k2YvrZE1ZYGglsj6lqBRwAPkZWC082M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768692234; c=relaxed/simple;
	bh=nehEGQDuzj/bPhSLYt3qQ7CRQPna77qDI2lZj/+QFks=;
	h=To:Subject:From:Message-Id:Date; b=KenxescdEz6iNQ9FrNjj4e0nL+VgBTX5PCZ/EpmdtAiX4Qu2NeRHfCpX8yvmJvYr5ekuldD/Df6XjvO7G9zWtsjqxAJ9/5jorNPs7rbXn7Mn3NvD2+h3kCVstqgwjZlN0GIxHNhwIjCCV1Lfttjt0slIWtWfljVziuHHAEzlyVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LQ5Thdm2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LQ5Thdm2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA970C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768692233;
	bh=nehEGQDuzj/bPhSLYt3qQ7CRQPna77qDI2lZj/+QFks=;
	h=To:Subject:From:Date:From;
	b=LQ5Thdm2rmqW0E5u/k1Nl8YlSR/aPLQo+Gor7bsUn4HcM1zRXYu9qX5fCaGDxNpFq
	 rGGsMiTkesYZyyXvp9CBariiu+M+be8s+kza1OTpkaE8ZTfRxVaaYzu+mzgOPLyAdG
	 bl9fP71QXGGpQZ+Ht5gxxHzfqQ3+achlbfVw42UxEtf5yNBP70ai4GYFGlS15qCEI8
	 ZIZBgeqUQylaN4+hLHtJ6NZ1POLXpFL8y5aqXcI3Jmcn1owkTxNgEW6uFiU8nIWjmQ
	 YJ9prv63bwQ/XXW/T8VIGRovS/mdDyDUskysUUVRgmCAtF7DKE0R2jL7G29nTmVTLl
	 +00hWFIwOK0UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98985CA5FE7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176869223359.13162.162723549609549461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 911787ec22e4d13003d70a48bf6a570e9aa2345bc5541c538856a572d7089c0d
Date: Sat, 17 Jan 2026 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768692233
