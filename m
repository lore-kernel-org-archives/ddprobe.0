Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4116B12E7F
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737815754; cv=none; b=EIxQ8Ly/QNqx0ScReCJqe8i+GmC2KbrjNblfvAOuPxT3z4U12BYS6XafDniNrSszFlLjhMSwow5ccMhsvFGzOOebQQQ8PCYmKRDiEKWAGTP9EToMUxVVsPTy6g3C7ga7BQqcIo4NkcQOczMXq+5MNKoWuP5qeNdafP9fFcSl/Ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737815754; c=relaxed/simple;
	bh=D8kmlvochOZSL9bR0HnAbnijTlt1o5rUz5bfsf5HNJg=;
	h=To:Subject:From:Message-Id:Date; b=RQJi8stqSvzhTvmDgoLCZ+jmy7nsyCJDL6Gnt5Ejn24RytboNgFJRyZYwOtGULWU7u1Vxl1egx3Fyl9SVvUAbXN8wFTsrrOwzdBYfv9wrGNv4+CuamoFtuY5erOwL758ge3SOuytd2pCSxznQUfxzeuii41TyaPWeYFuUDGGW2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LjHw3yj4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LjHw3yj4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DE7C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737815753;
	bh=D8kmlvochOZSL9bR0HnAbnijTlt1o5rUz5bfsf5HNJg=;
	h=To:Subject:From:Date:From;
	b=LjHw3yj4xH3XOmXf73N5eq+2LbjiHJUIl/JM7DQZkyomIOZz2jpCCz5UqlecvZ7Gl
	 ISKQKsgnRgBZ45BCU4Qkq1HfUkUVuqO2BVxSo063mpaDQkAAn24sKwsK5Xxa9VjCdp
	 Xv8PgN4V92Ka3APSO9KawZms1L9ECBA8vGRGCoLH01sDdWCazS7wJOaHaaEaJjjH7R
	 Pj+jwj6lRyaicdcRKnoIsycSM08+1BdNSBni649xm90Qqf44JhrH80lmlWsj0d/+EK
	 ADTP9oOTD7oyniv7xWKitdGJnibFSd1Ok1ql5to0RlEeWaUhoQHtzbgj45IfVTExPc
	 SGB8LPoVXwIxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90163C0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173781575358.25592.9197749475690822766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dad974975e85a43942733610e81af35bbe481e8a17a5cec72cc5250188e1343b
Date: Sat, 25 Jan 2025 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737815753
