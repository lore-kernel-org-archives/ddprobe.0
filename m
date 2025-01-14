Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B8894644E
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736892954; cv=none; b=fNFWLC2r0cdNdbPN2fBpMqfzf9UTZjcXms5kadDzykmA6r/IYWQj7DgWpjJZk6hU5/fvs5sQhc1QNf7kD2d6pYZhKscMDlZ8ttuZ0Ujrt0q7qngHiQByL/w45dDQDLVJ2nWWRk17T++3M7NuRJ5OwmQRNqPPoCf5nxs5T9RH490=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736892954; c=relaxed/simple;
	bh=GjnaQmrkdN87cngqJfDrWEzyP3g9a5IA5bGZ7U9RLHM=;
	h=To:Subject:From:Message-Id:Date; b=fBOKmtE2jfJ3pHmd4U26fFqZt3cg3KsNj2ImcZJ0LqccXzls1Cz5CmD5jmrpq5fNZQjenLh5GsxXDC7dew9F6oiI2D/7N4fkucVIElKTTlTeoSPdOgUSy5fyLAGngnUp2pQdMaqXwOyFkrOQX57D//vJ5KWMVHgUQ1sxDBUwjPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=apcNRGVT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="apcNRGVT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF46EC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736892953;
	bh=GjnaQmrkdN87cngqJfDrWEzyP3g9a5IA5bGZ7U9RLHM=;
	h=To:Subject:From:Date:From;
	b=apcNRGVTPQq3gIRzVIZIMU8fLyEBsXzNqtoDLbQYAJbnXLGUJpYDQI/oVhvsXVhQV
	 9auoYJWc4uWsSjEDPbWqiMgoF7KhetHjXdE0S3tWzPnmBKMax4Kz0YQHAIauEkGThW
	 tCxeLxHGaB/JBTvpIXzwQ1V5MJSnxlX4PjbdDRG1EBe2pIvDZgUvcYXW9NIv7gX5xi
	 WftphkxJ1BLkPkUClX/MKz+1FGDhH/nXGR8oPc7d804Q1gTboCRg4bVHCr2cvhUj0A
	 iyDhxit7NSjuU67/HELAjaDGYUkeDMPLyorKEEn50FUvcpaX3Y2hLs3bMSFRO+JcnZ
	 Yz04v7ShTQxhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4D13E77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173689295363.6296.12330920229440900961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6775ef860dd667b45379c4dbb0a36078138c0e5b6a65dcf3cd905c907a70fecb
Date: Tue, 14 Jan 2025 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736892953
