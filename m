Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59DF11E517
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 14:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719584663; cv=none; b=k0pzxqq3T9brx9pfCP0VouTubKfitkUTopRcmVUPb2UjcY1N54em9LDNJ6YlkHaA3DRiHYJcZ0EWDOLsAmPJk9Lmv/CLFHIIrWV6HHnIkAlTEOsTAb4se0CUbgko9z4ivdL7vjS/CsfbrdKsvbalURnufcjnwRFmvk8fOgzycEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719584663; c=relaxed/simple;
	bh=BpcFu+ej6kfkWUhhgIxPAfubLmCyw3/PjB/aijNnh0Y=;
	h=To:Subject:From:Message-Id:Date; b=tQ+qntu8zZLluURBXS566n5cWKoZ38hBlj80Z4WBisLhjrdWCNLCTBNDsqvVaIt/lg0HJcaj5Ys8ySgWigLIu57Ng79AadZNsXlGTiajWpOmN6SGIUufa/iHH3j5/mMBvdi4O0qO9Z6E4iqSz2h8kwOSfeIeunJNLc7Ttmrj2ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JSBFcpL6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JSBFcpL6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0E67C4AF0A
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 14:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719584662;
	bh=BpcFu+ej6kfkWUhhgIxPAfubLmCyw3/PjB/aijNnh0Y=;
	h=To:Subject:From:Date:From;
	b=JSBFcpL6Mtk7oA/Zl1M842s7FQj+R4y9cTxpfKXMDLNhV46DNd3ERBu378+LVGc//
	 OMLCCFw3u4btIWS1mTG0OOXyPhAe700pAFXNSVFvkbr3E++/C58Fpw5wxoV6fLnj43
	 2RsxTcqgVvQU+i/8bQ+SSduGGxuyX1iT77C8VOBk/wd//DTIVrXb4aYVles+MdOzlS
	 ejcOarLjYWYQCrfvo3AI0r9Sk56pdFrEaFQtinmhWCYfn9tP25z0PKd6elsWLKDAj/
	 ya2nAbRYDvXWjaoD0mjoO+PGBEYmfqiolhod1PYj68jdguW1TOnHKNmpj7RTfFXhU0
	 TGyo41vXoCVPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE204C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 14:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171958466281.21477.1229880135016059970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb8f990fa211120a8fb33ff1af5c1c9269f825d30108ad90fe9df43983187ba5
Date: Fri, 28 Jun 2024 14:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719584662
