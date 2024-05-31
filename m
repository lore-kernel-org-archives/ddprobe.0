Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83B0E78C73
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 05:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717132463; cv=none; b=RFJkICRbmHpVQXUnEjtsOEHm3TG1evwhYxnc/9JFnmcCfXBO95UQGLux6Y4aQuGs4y2I8OQ31NjKjQRiJWTTVsPCH2wBkpKPY52+38vPOk6647y9k1X0wWK3ugFPxksLyHlE8HQ9ulCj4CHavwFknOP7DG9wf3a3/4290WU4pEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717132463; c=relaxed/simple;
	bh=816xkDS3UNUDdwLLfrDSBr12J8nj7cEU6fttuRixe3U=;
	h=To:Subject:From:Message-Id:Date; b=JSGukAyj8oAi7n92ufm+5xNX4Z/sqVLKm62D4AOZL7Ilj7sde4mN8wboylo007Q7/p20N9e0uYPBEeBFzoFp/sHMs0Nsmx60PR/epwIdg0LaRWP9XpGAOTQLqlT6UFEJkwxI6knGkEheT5Ludh6mcAw00LzpSBmwtsx3+W0ZhO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XeKZfdbD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XeKZfdbD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0A694C116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 05:14:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717132463;
	bh=816xkDS3UNUDdwLLfrDSBr12J8nj7cEU6fttuRixe3U=;
	h=To:Subject:From:Date:From;
	b=XeKZfdbDbEay9jII3LOnI608/GbzNrhz+IEMp/F8toYeA2BV8Po6mtaHgLEOFFnfS
	 FFEimC+1Dy8Iyq1za9WtYWnOB3bcZGy4bHv9+uIq+6FL0yWxkDms5oZ0QnlU/+xJJK
	 PAU9rrwXJ1Bj4RLukgnElNpjT4Nb6uwfWcE3tdYgqgMhGE1TudKUk4dYT4s3Oo3GsK
	 bUhIZOVVQUyKfhXJNDoGiwyq/MQ5Ob18WS7pxZYSIoeLdbb6riDdv3xUXLrGGc22Qw
	 S18l/E76uqsPDLf/cmX1Tz8zBLNkcFupG41vl/5dxsRkq8gIbS9vdeFZQx16Vmyj0R
	 w0yUEGVfS9t3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD036C25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 05:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171713246286.20702.17034690235039056669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3154806c9157b4a8338d32734f52c342a1322df3ea872abc88f44c920adf8ca
Date: Fri, 31 May 2024 05:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717132462
