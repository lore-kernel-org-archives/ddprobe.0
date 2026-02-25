Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 042CA1EA7CB
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 14:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772031294; cv=none; b=pH9gsvuj4XhvC1NpWOLWaa4ddhcvMyWoQY5K/hxuh3T0DAJUMkbEIWfWcB5lHDgJb7HkrhUDlow0uouoI9fpOTFVIqmJhaP0XD1oNe8edoUMBAmql9J5wgjyUM0cLC85Be/5Iwk3KrWw+F9G+BjNBw1WAclVrVXZp3w6n1Lp+00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772031294; c=relaxed/simple;
	bh=iRTa7J4lSSs71u6Z2kruJWGyY5z1lcvKuNtlicK6pQw=;
	h=To:Subject:From:Message-Id:Date; b=VXi+Kdb3LWdpCHsgipPYLJEFucxslB7U/0YIEKTtQiHZxefhVYi3EBVHczHDZ2Fe4kTiLTtQrpZBC7XpyIpgfsHh1EGHJ5kL3qeoZSlg5roDROBL6HRUGiAXCaGq438+hR8/tyj1zi9MZMVOSo7PB3bOc8m8ged6VNhsd/pw9tM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u34KauZd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u34KauZd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CBDC2BC87
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 14:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772031293;
	bh=iRTa7J4lSSs71u6Z2kruJWGyY5z1lcvKuNtlicK6pQw=;
	h=To:Subject:From:Date:From;
	b=u34KauZdgie7kbCrdsdrDpx2UmknLmgCZFH1I1noN2DefvF7ptK/1AQ8AiW8tBhQ/
	 lpRv/pFLI3Z7/BTnQ7ViRhfQzMZZuOP+ZLbqBbY1OcCi+ZDbvA7cFotYcKkGM2oLs8
	 voblWrY0ilT91ftaE7TEMj2GXzav/LJ26TQRbAfMpfBkVeQnQCwFcWA1hdQpu5KJLY
	 mcfiQgnDYN9FYRKKezZm0UbOGxA16ndpSaLW3dHsR04NX+3Djvirrf7KmxKPLXGjjY
	 sZmeLaAve1OjkYJjnaW21pG8z977hMBH/1WHVhrFRQI2DKe4UdZViGdQznxyYJe18g
	 Ed1LpoD/hWkAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92000FD3765
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 14:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177203129358.1268.5250628753893883661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c2cc25fe24de80fa5fc5eee502e7597c95f9241115be35fca73219a49b206ba
Date: Wed, 25 Feb 2026 14:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772031293
