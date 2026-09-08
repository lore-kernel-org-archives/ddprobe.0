Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F05B1E260C
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788826834; cv=none; b=dx1/4ZvFGr7hrcFOdHBmwDNxSt10NI3Y/15iiUoxHJrG0TA8chNUJvnUM87uYSbbrptiqu1il2vT0mbzFBySUIwQv9uM4unVDEumGeZiXDHnXl8yhWE4WLpTvA6sk8O7nJgdHTv5SpUlM5WFdvme4gXrD4/bNfHshdIUr2xxFgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788826834; c=relaxed/simple;
	bh=fHbPNLXYwRaGi2FIM/VdSujtTCKXj+akUYOKcbPDa/0=;
	h=To:Subject:From:Message-Id:Date; b=FHCpDyIhd66+TCgy0Z0kpwHUCGkyyxpEjXFBkEaaX/ONK46p2qPlWolc4YT9Z5ymH6A3fitQy7IYNT7GCp/h/boDNt7eBFr7XEt7MHwlf9t6aqwzm8Sf2wbedXhYJZqoHnhiLF6K3R3VXuRmyBvsy6VUx32pwICP76ZfB245fJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NXvnhPm1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NXvnhPm1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA89BC2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788826833;
	bh=fHbPNLXYwRaGi2FIM/VdSujtTCKXj+akUYOKcbPDa/0=;
	h=To:Subject:From:Date:From;
	b=NXvnhPm12kbc5yYzqulkiIfKbj6BtLQDa+4/SUQ7vXQPEGlaH6eQB1QLc6exYz2CR
	 +SiZM9JKfXYfq0g9Z03yX7XThK2tUHdejaf4P8HFtn7WgpBos+Sp/1urdcdoHAVLz0
	 jZYslYSZqvq3Jxst/Y1dXoAc9SNmWOUBKS3TvaEoThKaGv7CigPYxymWkCU8+RaPcf
	 5vQ34PToDWqVhhvIhMZIm9Zhb0vBMkTDDxJ20USgL3rJY+xTT+opBp2UFmOlyJm0R6
	 fRVG5Uk3djgRSGy69KXCq3/V0KE8yLDxgpgsXwE3V2kKHBHSolRapRAdP/cz56T7Jb
	 H+7nhrU+OaFnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7B17C79F9E
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178882683374.1035.2723967293435767558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99f4ab3aa35e9fb908ef57cc0b92eddc4a03ef5d544e855b8dbdb02c89c1df3e
Date: Tue, 08 Sep 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788826833
