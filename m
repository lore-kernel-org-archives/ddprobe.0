Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E177D13AD05
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 05:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778562634; cv=none; b=PbLB4Fnc5S6Y8J4uR/vh0Hm6wMad3pDnr6kSobyvhU4vjix3rtI+sC1E/v3SOgEKmcDPkcv42ioIpzAJUbG77bHv71IkKfP2CnJ5dWXlo7gwxM8xNn68pLn0nm4jmnXKTGjwmvndgampMuWO0Scp9H4YOc8+zoePGpJtHef6lY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778562634; c=relaxed/simple;
	bh=1h9rVSTdXPMoz6dXt7omNsNKBo18odn89B6OH4s3KaU=;
	h=To:Subject:From:Message-Id:Date; b=Wj3OQA4z/Ycsddx8xm62mBtvDp/t7pK+4T6NoPBRNtnRl8ec45DBeEyHc59wA9w0VNKywKo0PXW+ul/FQOqejNTNuXoS6QT+1H+oU7D7cclttDc6tNRKuw/5xCxPcpNM1MWUcQ5U9QUwzGnCXOav+5/UNa5A7fkaPlKQcXOUoJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ehCJrBOr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ehCJrBOr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB77DC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778562633;
	bh=1h9rVSTdXPMoz6dXt7omNsNKBo18odn89B6OH4s3KaU=;
	h=To:Subject:From:Date:From;
	b=ehCJrBOrnzNAf9w0mArXAH+M34umPKtAsMK3xE9lGrbXBPgYsxcer8LmuVlBmzYHf
	 OkkWRDyL9eW+EsM3XkRltRHUdJ5uBF9fyjPfGzVank0BbEy0DTq8zIxAkK44wxwjAV
	 j2zuODdTavSxswFyrGpq91jSfcKdkI13qiNzBwsTpHYQHW5bKxdKXGmQ9j/U+cx6hD
	 1AVJTm/Bgw/geMo/gFLkjd04UASySKcji15Sk5eWyYD9ifJqvKkcEljwlPsdzrsUCP
	 CrhdMhjmcsBgtF/m/ar4vtOnqIpTVQu0gRgJz7COjMaefyjcOd4WVozsx42VRIuwEY
	 vF69Dl2temYtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C74CD37AC
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177856263368.17288.11772578300706561830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ae007d8cc857e58029eb20a489fecf4dea6bee8f05748186924b44babd0b2d6
Date: Tue, 12 May 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778562633
