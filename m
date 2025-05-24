Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E0061E5213
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748087395; cv=none; b=c0NMGAg+656V8neFJBmgZ1yOxjwM3n07Y2PzsJylEaVHNgTL6rfR0v/CTBrKbu+DJepfK+yg//lg/VA0ZU3AtR6ArEOBWLPVoL65rliZj5/fLEB9a1Gh0YEUiVTS7LhAUGKk/0RpccfZC4hiNPV91SXx/lD6U8h4eAo24MqtFis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748087395; c=relaxed/simple;
	bh=txcpZsxDC0rKSQ+NuT/mNoblCe8TC45hNhh9ZqkDDRk=;
	h=To:Subject:From:Message-Id:Date; b=YgaIckllSNCmUS+aXDAuQIcl4Sl4AQdiEo/tHm1kEP8lUWqXYCG7M7UZVN89E7n1DwI3jYk5uCqPjHmRliOfxKR2gfCg5saAhjcQlYYzB8MBSGo4/w902+mkw2TZHhENsJni8uFkTjJaKW5obh7eU0q1TExxHjceUiX4aiIybow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XN6HTQsb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XN6HTQsb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96C9FC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748087393;
	bh=txcpZsxDC0rKSQ+NuT/mNoblCe8TC45hNhh9ZqkDDRk=;
	h=To:Subject:From:Date:From;
	b=XN6HTQsbvWtYl7Tz/D4RCZwJpxCUDMFd3yBZtukUCa/kmnCVa/0atGNhwylSg/9PF
	 lPiVXxbRUgEKE1XYxGcoQ+/1z1AFJsHxFrY6F2VGQf6Lgo2ueTKsx+bOiGqIFwGVkK
	 g8brlHpnw7GAwhKTkJwRaqSJgo//Q95o1pVVKvCreuytcXRvBAV1aVPcvYsDNlxsIF
	 ggJJr9zC4MpaXuFs6GZzqIw1aj88cv05BRtKdSqHAXW96O7TQrYfgrKnhtJCtFhrNn
	 I3k1sbl+pkGSjUz0PE5oCmwOHqfdybsww875DC6K7wXPoo/JVGIqL92I8hF7rDdKgJ
	 GxIFC0qwhfcvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF72C54F32
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174808739357.6524.12310827992417379745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d36428503980e8d316bb7dad15ae0d94ebc3b4e089991f5cbfc8f8b853a42af4
Date: Sat, 24 May 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748087393
