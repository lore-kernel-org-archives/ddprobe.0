Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF1C6377EA2
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788244834; cv=none; b=LpstSl9z1INT2pzJf6T6KVZgvVLF6lIVwMZp7qXPZVr8Mcm2Bi6KF1kwBZNfwiZLyHtiwTrtFh/RG3pFrc/+/0SCmpXAP5QloX1g5ogte/KUKo55UY3zmPVuRt3yPJ9dfUjEOV075DmUtHk0l2rYH7N2uwmwl3j8fav6VSQf8fk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788244834; c=relaxed/simple;
	bh=peM+nNHOFGTsfb7oR9OIUBJSXBxUngwxJoWVGAhmVkA=;
	h=To:Subject:From:Message-Id:Date; b=pERnzjigcLGpx7Rgta+5L7eVMBNtXePtDCUtnzs8UaxfcB59MdgmqaC5EQpEGQZYdY40n0eV43/V+EaD1c8FmzPCnIbYFzMWGyIiw9+sEN2oT38FNatm5pv8EuRjwuzPD5Qe583wvvvsSkjOZEQKPtHq8cxnoBMDW4gjknT0gyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s1YAbyaZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s1YAbyaZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF36DC2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788244833;
	bh=peM+nNHOFGTsfb7oR9OIUBJSXBxUngwxJoWVGAhmVkA=;
	h=To:Subject:From:Date:From;
	b=s1YAbyaZO7v5AQYTuXqLOTtj4iGHqb2dxsc0O7XV93gx3ZAZiyOMXl+MHAiif2JWP
	 hTbtrAhKErRxa+lI1x7RFYLeiAt8Nlh30FVf5En251EtaELF6+F7tp88kAmoQhkwkG
	 ggRGFyiJfoIUx7N9UwORwQ9cXW1Z93/X/zuUrSorqDPJGBVF9poDsykxM/72Uo1jUJ
	 emUjOxirnkpHmSp0SXa7OQQTnJThL+c9anTtX4E335eMrtXfFxI75RpuGphfwuDwIL
	 UilggJhhpUQvZXMo0cIVBYQkLY9u80R8EyTLtMReS0DI2fGPT5jGjo0h15H4jj+iWn
	 f8I8IH6NAESrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC30C61DE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178824483369.20449.2901068664577785344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5116b7ea0bf94ee7d7ff2b60dc18f46d35b5bd34be0cd7fda41a631b25ab2d56
Date: Tue, 01 Sep 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788244833
