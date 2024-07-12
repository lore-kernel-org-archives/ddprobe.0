Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 587FB7EF09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 10:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720781303; cv=none; b=XwY+DWk+Ks4Ww9dlvx5Am/ODJN4laYAWo5yeToETBqFQGYDu0r0w2IGVmpq7luPXSJTqwA3BcOd73VeRrJC17cVfRAqE71QZtOssQuJHDX5n/cnZMDSIz0tfTpynsSSmnyQpXmeaiMrOjaetKltyg0GEQu5C5MD+Udgq68T21og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720781303; c=relaxed/simple;
	bh=1TB0Oex0RyJzwTk09Rxaf+zDuACkIEwRzH6gywvtbJ8=;
	h=To:Subject:From:Message-Id:Date; b=FYUT+/ZNjObNGdni5bdPb0I/48k1/tDEVkYuthLjfh/gy6w+NcH+kOgC0RovmtQhcwfo7SrIFdczP2WVhOUgXWU6VixueaxJX/bGDHMktBiw/2nfiI2cJfwi3LqOhdn8Am5GYkxRU5dIo7Ov15pANlLQcfQUb+4qXnFp3E6U6U8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IbkhT0sr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IbkhT0sr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D98A9C32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 10:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720781302;
	bh=1TB0Oex0RyJzwTk09Rxaf+zDuACkIEwRzH6gywvtbJ8=;
	h=To:Subject:From:Date:From;
	b=IbkhT0sraJoYaWtDjQ2Q83oyiD1z179xDgHGQz2jrvjn1/VmwW00zmd+HgucIskJ6
	 VxqWJaPeJC2kZx1r9Ma1JYILcCAI4tJDvuREuXb2+c/0I2CEgJZbXeirQfUXB03RHC
	 5m5RgGJ8fxLV9yHgnQ4+Q3ioEnfQ/bDMTItlsBU/PjjrHY/JFruevA4wHBUPy9KjxD
	 2MQGUNiH9ZiK9kBq/JPI0MM5luqK2BKw88yVKLBclP5pWGYCxNV/5D3h2CbEXsPRD+
	 Z06d4FtcX8de7TsEn7E49blPNnGaCDD8Zcdrlw0JvGNkHk2HRa2Kq9ogESl8ZBhr+M
	 TjnNzSNEPyfnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C222CC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 10:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172078130278.20427.7538252938688942248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59856240ab905d1fece6dd9cbf3c752506d7d7f476d6c9d15d43c444c04ff3c6
Date: Fri, 12 Jul 2024 10:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720781302
