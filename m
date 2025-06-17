Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C2F155C88
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750192795; cv=none; b=I993ndA5XdGRdkyxcRG34EXrL9H7nQ0csMowJ/rC0nQlhKak2Iyz31bSSgerlBunqloqZ+DfLKxKbiYjoo4UwNtVPJewukGsrMo8bbb9jr8KBq+kgMtFWUiE5lgP7m+nirlvRXWdrO69EI84unahbQ8w1sX/hiAxlIlDaWQhAQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750192795; c=relaxed/simple;
	bh=8NT/CMoy7/XdWubo928P+n2K+0qGXobekowmF9G2bLw=;
	h=To:Subject:From:Message-Id:Date; b=YnVDTzllooik0nCzSqSBwtbY9IOBO7HBYaq8O95poSyW54p7OUU95sr2UTJ8br9CYbaliSY/cUB9aj71bbDfcXAzBVmG9f5jAP5sJN3bPjPu7KMZqIEM52ewTMN9kCaldUxFr7Y3W1ktFOGilVLfCqtpH7AqyVyTY983gkgiJZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=derJaRw2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="derJaRw2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36E7C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750192793;
	bh=8NT/CMoy7/XdWubo928P+n2K+0qGXobekowmF9G2bLw=;
	h=To:Subject:From:Date:From;
	b=derJaRw2v/HOLKjpy6yqtgGsp5SwDxDFgEl4gbDsEjmPhWH/VZ6B/k4rEdK2DIZfz
	 ZMNny2DYA3UZGjzckE+G73wUp5RatP4PqureMaB5cwnAfQzbYKFWnrCw2N7rAaBR+i
	 X29BjDj2jUR0r+Xr3YtDj8/BCst2OGL0R0zyCXq0JhphIDkhRtJQJIsn8cipODnQ8R
	 63IrvVD0l+U8PRfH9iB0dFmj4ln9Wkqw2WcpKCdWFJscj/SFZVyi9LJgTwFz8K6hjP
	 tc0l0vBoc3HOyqqyFjsOXOYJtTKMJScI8vlXtjabk0qo63nPJ4G7sebq3R91gjF1p5
	 IpnKdx6IdBSrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936E2C71157
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175019279359.8973.14680808920603928444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da83e4a6b8077bad62fbb5f245068ebf0a0a5026f84919ebbdcb22af69e90199
Date: Tue, 17 Jun 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750192793
