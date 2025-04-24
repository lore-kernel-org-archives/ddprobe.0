Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A338F58
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745500796; cv=none; b=QSx5u8hQn9w0dvek5ST0VZtbeLJyjjgNBWBcXsyiYyuOh77FNIvHigT3lF5ZpuQ5TTWUWaK79IFV13fWpbEZv4R3jAZoAWUf7V8SlgaUjOLuFZeFZKM6h1nXRrPItK9ZfO6I6WIXMw10B5i7zaZJGMWWd+ISS7l6sOpbViqi5Yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745500796; c=relaxed/simple;
	bh=rsjoyD6Kkc+BnKk0+4qr6BRTva2Q/9Dbvse6Zax6SAM=;
	h=To:Subject:From:Message-Id:Date; b=S+7En75y5pelkWiNMhjZ2EM9lGw6yc3iIHint1XuqDDIKZPNYPYOhZML099t/UhXDe/LThsX9+r5j9M50w74s9nenD0PySvD/CNDG7hmSwsdYz4dYNaNZmPt6WQGh3ene+S4YP5usIubvgXuV5saaz8wJ+g7HmEEfbkaN2E7bUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dY8BHRTB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dY8BHRTB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FD8C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745500793;
	bh=rsjoyD6Kkc+BnKk0+4qr6BRTva2Q/9Dbvse6Zax6SAM=;
	h=To:Subject:From:Date:From;
	b=dY8BHRTBnpe9ynB01HMnAS9xCqnjJvsAM0caEU1oK2Vu3fTeV505sOibXVMbnxpLz
	 076FjUZ0t+ToWcQBexUFmmR9O6xPC3EKZw9YtA4ERlRRcm0yMqz6yx810cw3dQNm5Z
	 gXLgZYFVCjeusEeGyBs5wG9GbekBCjbvluumWYSZXrHBZixqzOKxfCeh7aSNDNq2qL
	 oUw7S7LsIxa+2DKs2Bt1j8nIiFxh1isrGUVZUVwTLsfutO5ouX+U24HjnIHEb9G0Pe
	 d9PpP7xMEIfnveGoE+D4WxImaBjvk1MM/hA0Qy2qcw5caSGYryXS53fh2N0DQnEfyI
	 4Q+R3O0rIHb/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B37C369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174550079358.23680.17857577928942223440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ff1c9e1524ec3bcd2a77c225dc8263141d948f3c7023e5c7ef10217a5b91e8e
Date: Thu, 24 Apr 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745500793
