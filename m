Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2419A34CFA6
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 12:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763727114; cv=none; b=t0SkHG374bXmpmge/Fh3V749N4PNCZDQElhUGZ3oY4giCSt7eVoYMxfOQxOygE/ZJDriF2M8zscY2GDXjvXX6MXT30AxKVjlXAHXJTpLn+ZT8YKrGlgOab96sIQxFJ6H3TOYADe5vm/BMelBu3sUUMcD1XFNzJBmF1Ao+WpSnSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763727114; c=relaxed/simple;
	bh=NYIPHEFJW8McZOyPrYM1raQs8w3hyFkjstd2kT9A+KA=;
	h=To:Subject:From:Message-Id:Date; b=OZHWAWRryTqKK5vlz1QNr1o75fgsTURXclYrSbSwCaa69+L0yoA84HwSzCNGgl6BIW8jUY7daTEIAZX2dhsswLRLFZ5lCs+C5wCWO9eZY7Wd5cRXQPFreVhlsNv8S3/6IB859NDynE8PUaqDnMLztcZ6T/j2Bv9Vn8fJQw682DE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ep7m2yfG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ep7m2yfG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01CCC116D0
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 12:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763727113;
	bh=NYIPHEFJW8McZOyPrYM1raQs8w3hyFkjstd2kT9A+KA=;
	h=To:Subject:From:Date:From;
	b=ep7m2yfGRzjGHVYSNZ/mbvs4nkxVXdqm1hwJFBrXaliryDa4UuDbR7+/5OkU1/6FC
	 9r2GWWddgyfnn0z/7R0qGoiJwuIFo9NGMiC7WLi57VZfq4QiAAIDDmOcMZGnB2gkbf
	 12B+Gc37j4uEqi1lJyxOx8uCVMkrrHVeyyvhBOaIrNgdq3/buZBNb5FcKcXfSvjj3Y
	 fQY5y4hPqWTJn31I3TUuWZCkLCO4gClqf3ggyIFWfh+vfw7P4U7BRSSxxwqDX0toVb
	 xUNQPGR12JDPPjaYUh1neB8HRpF1Q3hG/jBWtdLwef1yBTA3HXuMJQTjhf3WcXRA0k
	 TpwbgpgE/63bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F2ECFC269
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 12:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176372711358.23116.11544279838317642417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4db66035c3fb359e49ac0f11042fb2b1a8c066ca6b1d5891d1a2b0a940e5fef6
Date: Fri, 21 Nov 2025 12:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763727113
