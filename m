Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F7652777EC
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750696794; cv=none; b=sOUj7kXmxvL19zVH17W4BQAmsBdJ+sTcYFIrNXtnA8guSb6edhJdS6YYY8E5PpW9Yk4hWQ4dEizBbxh73LC/TtIdteJ6D60H64Gtd5YaZhVEh8PHjj+/x5sGS/MKSPyBqhEVCJJzeRFLVme8bonTLZFT6Jx3SwmU/r0F4tqZblI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750696794; c=relaxed/simple;
	bh=WE0gnGB9uxvbFTVB/FtBN9i4Mp1rskczROi4vQ6wOPw=;
	h=To:Subject:From:Message-Id:Date; b=tpquwUQamUrqSZnRJSVMnCE9EF0GhfGYQVQWRXhk1EGfnkcU8fyOrPuiSOEe8fJbMF9Nok4Gpcex/E9RAtU8aaIBU6Y4BxmZi5aHc/QN4SnRHIsge72SwhPZIHLy94NGGExgd6Ad359fKQ9NMxF+r0vlRyKrxIIGlk9Fx9HEGmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LcwFgN53; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LcwFgN53"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2E2C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750696793;
	bh=WE0gnGB9uxvbFTVB/FtBN9i4Mp1rskczROi4vQ6wOPw=;
	h=To:Subject:From:Date:From;
	b=LcwFgN53idwzi2U2CHW71mdQTz7JUsUQLp18b3zdDYfF1U5qmQ777NkcWsrA2GvMA
	 IUtMZPI6naSwybEUh6/yOjKdLJ4EQtduENWxqZ8oSrAAD2qNUVFcNAnicDK4Seujwp
	 8nS4ScCuUxL6uLRYIuRSQ9InW2r6g37S172mcfo/6Z2NTrVYBkOl7s9rCVB0Bi8Bvp
	 OMJzcsOetD1BJZH+DvGF79U0jgIv16SL0QDW8anO08oFhcnZq6cWs2j/qPKBy1fy4a
	 YMR28S8dhKdpQQtRjlzxj/Puh0A3Gu1QdbFrBpL0koF4BHPbeX3WKQ/yLJl84GSsBo
	 B84rd3slwMuvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90164C77B7C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175069679357.22102.17669500817768639926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8843550a7585946259c1fe7e6fb7cd7e55e8827c142ea1758863c402b05a580
Date: Mon, 23 Jun 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750696793
