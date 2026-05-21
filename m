Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4572D9ECD
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779372634; cv=none; b=aHe8TGyxgnHDUaA+9A7DH52Im5Bda1L3Ld+j9HeK/fS/veryyopbN3ozKb7cahmFgJRpbt9Q/d97EgVIb+Ohbs29NocrPS8l7cl97swlI3yA3O9aElPu3tKCz+UscPFUQ0QFCpdfEx5vf8uOSkrEXT0Juyksebhc4mMSgx1jPW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779372634; c=relaxed/simple;
	bh=1k9f41BzLYVQY/P+h2aVF5cEoq0DYfBP3d5VZX8xYlk=;
	h=To:Subject:From:Message-Id:Date; b=gd/30H3ULpYa5kZl112ra/Ko9MK0vYdfgiqRKajQVRDgLGTFZoLu/hvia597tzkdZRwk9nv73w9no62a0mWgGhpaEdP/GBBwaayEzucF823ovUcy8DkxUrgqga+cRGJQQoFV+AgWiWLIpq2izz0L97ZHcMBnE/RHCDPBlAYQuNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yi56xcZW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yi56xcZW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D70A5C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779372633;
	bh=1k9f41BzLYVQY/P+h2aVF5cEoq0DYfBP3d5VZX8xYlk=;
	h=To:Subject:From:Date:From;
	b=Yi56xcZW47Npwk57f1cFsIIyspx+5DKHezZSWnR/pMlUgnQGaGoU8wg0dAEDpB5yF
	 t29UT8K1yCqbuQ8AAEO1OIyZplx9fgoqmftpfzhK+J7Ozp8p1BzPGWGi+0m0f8s8C9
	 wmkHs6KaGob+5XajlHJ1lcQhL0p4NEQ+3zNExTTtsZaTUR7cC0BAHNog6BSYmXGAhg
	 YylOOOg8gqwlYYVD6cQlURYZxKPajLIAskAuvu3EMh/80SKgTChVkmcHFzF+39BU4h
	 aAnbBAy2EDNW7sw84tuq6DTBS12D+Y3/tFHCGzK9RzbJJ1fCeQ/aLmZP4t3XppRxb0
	 FVGccCHYT7xBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9AFCCD4F3D
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177937263374.5453.6264291405787139540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c75706d5645b0f48520399e5fe2d8ac12f7f97451718fe8bc49a065881b1983
Date: Thu, 21 May 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779372633
