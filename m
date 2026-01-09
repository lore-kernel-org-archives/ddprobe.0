Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31FB57E105
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 18:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767984234; cv=none; b=ZmIt6C12xARC3oZLIMQduoxsNQWj0CLxSUIylh7D93Ff96E1r+3UiHFHi+kPvwIPhCliRG0fCiw4ppL80lD/e4U34+Zfn3o1OHkSPUazMPLhcvknJzxNYPAAqLgXjRfT8Xa7gHVZWL0z+gzUM7oa22uK0XI78x4WYlLIhn9OE7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767984234; c=relaxed/simple;
	bh=jLi/IeJqLYZUR1BnEuZpyBpTjTS5tD0uqCZ4cfiZhjY=;
	h=To:Subject:From:Message-Id:Date; b=iKQRhX0wKTJgDLT9yOZFee7onLPcHLUN5A0tY0QZe8KsRES0QZiENXuLlwt7voPvnvOQcNhg2ulPEvY4f1vu3GuZ1Bu4+BXM7AKa4oasa1wgJiXvmfi+a7H0vTEanTW5K96h8HIZ4Zeq/sTR3oXiNxPPRX9o0fXCmNOoS+7JxGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bd5vtbud; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bd5vtbud"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A1BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767984233;
	bh=jLi/IeJqLYZUR1BnEuZpyBpTjTS5tD0uqCZ4cfiZhjY=;
	h=To:Subject:From:Date:From;
	b=bd5vtbudCNQv26tX3FaaVDsgv168DVqa1KsiFJ2NUYSRjAtBgxpAGrz4k3hC92RKh
	 sIBVaj2cIe3kyfldgdS4VUUAxUfSLjDQvBkAvZ7Ie86Ngaug/uMj8wqtM3J+RohcEd
	 Zk2JkAa0+gqrL60mDtn88mXUKIvnnI3b0hFfDMmQ3Fd7e39Z/XfHb5tz79ON0Ae/2x
	 r/mksttkW7v7DAEJL7SygV8FM6Pfmwde6QuXrWmwmnJw5VRJN3x8A/XGA9LlWSUjZ5
	 Wakdi9WWX/qUzZHbIUFW/ne97i5n04abFWQaJfaYZ5RUwdpO942SvJJpEqEk8zp9os
	 XyHFxuoGDHOUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D4AD26D7D
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176798423358.22288.14187616294304260689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f9b3a273d9a2687e08e6ad44a9a05de3cfe2c60034f4e1218dcebbb3ff4df7e
Date: Fri, 09 Jan 2026 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767984233
