Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B8023BFA3
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744804794; cv=none; b=AqkDadagUApt9bd8KsPJcu+T/dmKd66sLIqC4PDouWMTLsTQO6yfHdpQ50IgVOigmDlZ39qzmnaEQao0gW4d/u58LhBa/sMt81FF33D9kzV+7+qP7XwBEUXu+N+7d1CRvGssB8UkGByFbMVbyMnOKlUPc3yBxq21BMJYuOxUMfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744804794; c=relaxed/simple;
	bh=1ez4qcn3s1dc6WxBarhhFJgt6U0zhUzR4Kob676SeZM=;
	h=To:Subject:From:Message-Id:Date; b=USabU+Lv6miViGZGFUHtzaYyuMMlHcL995VTNcR/xy1K4elmepI1f6fv9miwu0fPsGzRde6JdbkIxwBuMO8QgJGARh2127nDuSvJPnZjlsJGCrSobjpKp2dLBoKfDgc1ErFv7AyovfEkZPIW4ZXZdr9y/p9Q35usAWEQkb9w/Ds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VBuhEeV3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VBuhEeV3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F4AC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744804793;
	bh=1ez4qcn3s1dc6WxBarhhFJgt6U0zhUzR4Kob676SeZM=;
	h=To:Subject:From:Date:From;
	b=VBuhEeV3I1co7OscSWehlnw652ALTOiMTn/eVJNGQBbOg2cHVqvMSGqv+wGDVkVhW
	 CFkme1rwRDs3HHrhVRS7SeHqd8oBir9dEYQ1vB3OVVfqI8sX9P6ffw3xoM4tARl9BR
	 8bDiivsuSj1aBzwBLVsubDMn2RuTyiBQMLmrpRCFZ+sEeuvJXM4LsHoVKFW5Hl1xHT
	 LSqsNJRlPUXcbItEigy9UgCJ62qkAGldxuowADlGEic2nCXTbeeUvNumVMurI9cKeD
	 reqoXVFlLUBco4/p+f9dV3ICfnqu2wy1VowlWQtwxPSOsy3aW/q1MxovdtDFRz19Ru
	 Fu5Evp775SaGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94699C369BD
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174480479359.24393.16264041346522027623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27552a489f01cc26d2eb69f205fbb0ec3e18d5f028000260700a0058e0d21fda
Date: Wed, 16 Apr 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744804793
