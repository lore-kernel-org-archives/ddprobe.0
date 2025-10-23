Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262E425557
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761180594; cv=none; b=P/BIz/6twDxO6Ji1x4NQPkpDncwOHhDchRDdMNKTDYfNEMG4Kd5W+jn5SgTKqkBToeoN03PYKnIxZsnovigR/duqW0DqtM0KxgcCOG6YGF8V8cEgk/08Jo+vkG/5GMwm/W2OcYwE8U6VT5Ke0S8twRxHVkvIAN0zfYBF+g6u52Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761180594; c=relaxed/simple;
	bh=yMsTo37+2eVTHuXdmU8D3+nd+z3+UBQTLwQqL5SQVfo=;
	h=To:Subject:From:Message-Id:Date; b=SjN292n6liex+h1NgYo4WiE/CL2h6ZQfK9/eH1iC/r01u53FhKH+5UTt86MG3BnZQr9Ye/2gfzFAPzWjVMtZjhImosq21aFMh8L9Iyd/b4vvhvt863EU3FhK3rJx6zbbl3G47HOyNIpUel26ClrnmGDQXbutHfR3SzyhL9LE0oA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RWf/MvmM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RWf/MvmM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37B1C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761180593;
	bh=yMsTo37+2eVTHuXdmU8D3+nd+z3+UBQTLwQqL5SQVfo=;
	h=To:Subject:From:Date:From;
	b=RWf/MvmMehKWEGUaio+mkyoIHdNdvdNL1q7OJi5M3hT1WVYOk7HDNhgSu31Io8jaG
	 4/2kLTMENh44XAL5QJhNL6EmMLZ1XGg0w7npgGHUJa3KeiQFHmn3mHTz2oEyi3+Olq
	 jQJIAJrNAx0HZQaWy8EthdMYAaAL9QNp302z5A9711njQtDCBoPX4rgpo6h7485AJk
	 x722PM2Qt5Np78cIcR0D3ep0dUJeTk+cOaWGG81jPpiPAL5k+0qkoMrE0tHBnqrb3L
	 X6FGtjUjtakKwOjdO9biebHI/r0Y0Acgf+KzFhRVfBizAhoIIJ9iGtUpP9lKEspxh+
	 +5suC4S51C8Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9111BCCD1AB
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176118059357.17365.12901173504069916337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36a9c0480b3ef4ae18fcb407934ddca6e22060e1c3b18faeff2794db83f849a9
Date: Thu, 23 Oct 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761180593
