Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3443D2D8376
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 23:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771545294; cv=none; b=MWsQUKa8TnBddYnmdldDNfc1jNfk48gsNu+YKAUdVCjXLMAdxjlqzN8381T0cVRAGz9nJCy+R95TGDungHDDJ94Cn+9pHmDg3f6icv/hYgdDtQP/7DobLWWDlq5vo60eVAQB7fKZMYXtdTvGheNv2KkA30irjuBJB7I36eCpe88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771545294; c=relaxed/simple;
	bh=3h6Bu7/5vIlGkFMM/IrXLsX+re/VKkMvprS5i0Y0OQQ=;
	h=To:Subject:From:Message-Id:Date; b=hlyI/DuPNeoLz9N3ORDyzfpkAeUauddcE45cWHmUmPabTwD5LlryZFhx6lg1R0sG/eF4ncABOr4/yLGNNy3FIQsJ9WnFsoFJ1NXEyGocKS1GF35/VOIv90BMdbxD12uxITcgur2stOPFIw2UnO46Bk5t3C4WLZhCk+ieKfYM+5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IeVbPuiD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IeVbPuiD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B192FC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 23:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771545293;
	bh=3h6Bu7/5vIlGkFMM/IrXLsX+re/VKkMvprS5i0Y0OQQ=;
	h=To:Subject:From:Date:From;
	b=IeVbPuiDuJBVDQ54fEYi6DV32IVTGi89tLT2cz2HnlEvFULzriY+EnTYAiYwH8DoQ
	 TGVOoI6qxViF6oSVsNNTBdeqJvouuXkGn0wmIjzuB16OqThWJ4F+0dUvk2t8Jj5C4i
	 /HyaR0oKszFgMQrFadZrwWLkQXf6c7cvDY9iN7mfWJsKbPp75xHfGnOCffZqkO21L4
	 jEQMgXN3k2lJ5uOyt04L5y8TjPKH2j0VfS6lt7IXJhpen+bfCNyHRJ7Uu3csUwh+8t
	 9cferwHIoNTenX37zVaAh7o3Vk10XOc9aakjVpsrGJ/Q6kZbouq9SejWZenr7E4Nhf
	 qga0M+zaQH5ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CB8EC531ED
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 23:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177154529360.5882.13038334708666257244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65417b5556fccb38d34b8c5f476bc5708a022c416020b4200fb058e99e3ef392
Date: Thu, 19 Feb 2026 23:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771545293
