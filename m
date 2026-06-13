Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CE68375F96
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 10:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781347594; cv=none; b=OggGwjit4s13r56NSkXwzvbVY8cghXYmgfF3Q2OeHBgQfQXItzUFk7bdQuV+eaYwgvByUh5q4AgjAcHRM7Acs9XHutq5XdEoHpQE2wc4qJYyxo3sxRW7/DMdNCHGZfKgbRrmnjn91jgOqqir7EjWauyO1avz2dk2qSRL18v8C1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781347594; c=relaxed/simple;
	bh=ipwRemCKAyH1HNY9FONbx9AcR7+553kUGnWYBSe8b70=;
	h=To:Subject:From:Message-Id:Date; b=efSK28j/kdBo0HkzsAVepNhF8kEl3vJVHM2qUwI30mYR8GI2h3ZW7LmWJCH8m0hMn+nDiJp9xCzDq8QzGGZYQkleZm7almNgoviIBXEdWHQXMD0vm88BcLyg//PT2yKGlcbq7EvFW7+ZNiqD+XJzwoXN5NXxq2IXssLuxR6ncdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZY21XIoj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZY21XIoj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C568BC19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 10:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781347593;
	bh=ipwRemCKAyH1HNY9FONbx9AcR7+553kUGnWYBSe8b70=;
	h=To:Subject:From:Date:From;
	b=ZY21XIojMGGkI2bPgQOKp62eE1iXOeOoi/aTYK22Qg3xa1eRTfKdo/SOvZMVLfZiG
	 QFxcOgLoX20iH7uVcd4chY68tREUYZLhB716reeK9gGc/mLvOPbaRPfmLcG7s3aAWA
	 XRUolcL3eL+r7+jAD9S7uHjmlvnXLuRt94Gsf6RQIl6xWeisq7AcEza6zDddC936Qd
	 VTXdZsbWtSJAh3+Ykz8xM5BgY7/TZTQjOcYOTGuKkRBKPb/Y5KKkoZe8qUABGNwB7k
	 L+Xe/EIXskHgCbvR6ZWEaBie8CmVcVw5lf6/yD8ZREGoclDnazLVBlNiHP4Zg+8GQG
	 nmkt/hLgR2FhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7EEECD98C5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 10:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178134759368.24185.10113410533270742512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be41c16cc3e3186e9b3444f0e92bc41f99f79037b4d19206aa4b8fb78292476b
Date: Sat, 13 Jun 2026 10:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781347593
