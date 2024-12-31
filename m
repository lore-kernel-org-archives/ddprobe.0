Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C1501552FC
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735622754; cv=none; b=ESSATvIm4F+GFk2Crd8Av3Qsf6nu88Tobfij/rA8l1lrGYbaJi2ZKFwv2tia8R+hMvzSO9duGwFhoIdafhwJ4VXoKBXMs9Han3/x4ShV7vleKdVoprg2gCsTvdJTQNRdxJ82nuWjKU1iCFOaf0DkdVhTAOV0oAi2BjvceAkvDOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735622754; c=relaxed/simple;
	bh=BRPGQKRrXNuUBU7d7UhAwhP356fIT+UuX8NWSbMlkcQ=;
	h=To:Subject:From:Message-Id:Date; b=sF/Xp7jbcM31vxQkWArPmvyI+TDvnbidjPk23CggnoyhrIEuZ0GX0hINzu8tBLq7jQeKa3hVC1mj16vnKeAErIgM8IXKFIuC4RDBvE+ZRugIFlw7BJ5I9E3g+Q2y/rT5cdECxDgLF8ayWeTzfdCNRGv0IbqUhBpNjpHljemhLu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aTOqMOWH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aTOqMOWH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7966C4CECD
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735622753;
	bh=BRPGQKRrXNuUBU7d7UhAwhP356fIT+UuX8NWSbMlkcQ=;
	h=To:Subject:From:Date:From;
	b=aTOqMOWHkK/SvkGPV5vqk0JSptGsdgG8knK1MvAItTMpf4M1VUDocZbtD9vrIqb0/
	 6LyT1KEautUlZ1Ds7VhgNmY6XEFQf2zfMde7asokJ1mghFjWVuEdEg1QQRy/QG2tlR
	 eDOERcKHj9HJRyYw2+uqKD+s2F9sZfgsGC+/9U0Fyu0IOohzz996BM6hJTakbVuaYe
	 1h2YZna93n3eNolJh4sRK66S3RKMTZ3+bdelcCjLTbuvQhFYI58rJvpD5sxQC6Mshf
	 +NMSqqaJH8LdeZHHhpALihXV29Hr2DwgdyM14VxVmGo0G2tWe9FTMjqt0WR8IzIvqx
	 F+J5IPMKmHKdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95270E77188
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173562275360.13974.15923523628390326247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 350bd161365c9a5b8d201748262fb9e867121a685d2a38dccfaf117e9f81c20b
Date: Tue, 31 Dec 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735622753
