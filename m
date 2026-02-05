Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1671930C61E
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 17:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770312234; cv=none; b=aeok5rRajmuMwMlv3cFlZ71wwBbmHUofCvn9ZxMTGp9ymnsu57BXUfkFMTXghHncqJ8pSBecsAJKmIBtxB0tP8SsEWXtbPAv21itZGjLgDbfjqQGoLOzytQ4nL4oy9kcV2M1G3XD/ax/G0PCjp5xS7KSAwvq5qF5sVrK/DMFX2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770312234; c=relaxed/simple;
	bh=nyj2nMHTd/Bxc/cQTM8+ovFRkhrJLO14/inw3d4wy7I=;
	h=To:Subject:From:Message-Id:Date; b=FDYyjtWIB/jsXWMHG0+NCjOIZstjcKv5aGylXbGZ4g6tpkVLmij5CUDUDyZHer/Izdj4iUqZW6ty3e8SHn95U6j8e5952SYj7h6TUxyvyFJYhgaJ0p9zOaFLyYs2LyxNnpeNxoP1ZdZcITOSBWCKVc97aqSlkX19rjhJEQ0nsGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u/FwxZlr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u/FwxZlr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8249C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770312233;
	bh=nyj2nMHTd/Bxc/cQTM8+ovFRkhrJLO14/inw3d4wy7I=;
	h=To:Subject:From:Date:From;
	b=u/FwxZlrgMdrqsU4NaNO4Z+ogGeQOeKusX5eCdTD5tllD1B9XRojWAJqEh8TH4Q4e
	 bsaZ3pxjAUeE3uEAIuHLJR8EzPbF97I2kS1Rfh3bJ5i1l5x3etZI7I51TlzmJJKgw+
	 rL85RE2RRZNl/USbm0oZsqq7KvtMnzTr6rmTlrEBz4u9IOxVoozDuenVLl9WN52Zmg
	 nWwQWQfRn1R+1d7PqKhoNIE2rD3o02Cvs2j7fGsJQZXV71eSx9zD2dO91x3NVtacVK
	 iad+sAk+d4gi0HExYfoRDsHXu5o7nFWqHDdw1Lqxg1OdGEYzsjuN+hWqqtVnRgUV7J
	 7rJWBv+nknnCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9740DECD98A
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177031223358.31916.1166284197595204116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9130c368aadeb2c3dba34e8a8c4543e8fb63ab1a51874d42ba8cb929d2cbecde
Date: Thu, 05 Feb 2026 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770312233
