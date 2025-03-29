Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D4E288B1
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743283195; cv=none; b=f0+1l4SErX49zDHI0WTY/haPC3JA7uUJUc8kGKU5U6fpJOQqDHEtvjKRK3y2A0jBD78zGjCxUfB7NIuCHbde1y5eu/rlVFj+4fdgoeWZrxUvhwVcYVA1M7+PGLYLyYmhytp6Q26V4j19aHG7gZ574GNFPkDNhQvSNsIfqapOfw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743283195; c=relaxed/simple;
	bh=BHW+NKCZjU3HpiSYG6dLkts4kWExA5h3sjJqf0BUPus=;
	h=To:Subject:From:Message-Id:Date; b=Hf9fVX/yqxi7SnFk7Zvh0KVYb9uMpTtFzjzeVwFpN2mBQLSLrTaWAlbIxPosgPCQvKCJC0ojC1U/UNZ2KPYMDQ1ZPZ4hMV/EkPE1ZALlejijKnETmZwrfWVdLYq/KySk63jvVgDxQDGcPrPRsDIEvTee7tXE6B727WuMRNi3xn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TmCTYFzo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TmCTYFzo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB166C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743283193;
	bh=BHW+NKCZjU3HpiSYG6dLkts4kWExA5h3sjJqf0BUPus=;
	h=To:Subject:From:Date:From;
	b=TmCTYFzoj/xunMCd+4AWv4JsM5W8xJo0Bt/7gwvSsBiNxSPJLW4ogEdcP3PgFinpv
	 ObLSwxdtX1ZCR+nvd9IvS1MZ8dOCBG8ww7RX0vSHLVr7ElPQrcD00DjTYPackDu/sB
	 G6LWqzbSUtZiPiUl9b1+baoD6mtp2KFz/sj2/offhc6dyzwv+/K0U6kFp4U7grgpVE
	 NqO4zLuSHCHsoFH9UlZEKND0zIUEdshOiuvzJKjUGWyJG7HuqUp22G0qYvSu1COjE6
	 ncHikxaofcqQIKkDDTXc4RkP3iRPe6JaKNWae7q6ZgMy4URQ+YK+cSBQk1jqmOWWH/
	 eCjVeqFT2rp+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9407BC36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174328319359.2721.4224344797465518178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 647d2963ea5ffeb01df75282b035ceb5c9575ef8fbba65118828ed7f0331a6a7
Date: Sat, 29 Mar 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743283193
