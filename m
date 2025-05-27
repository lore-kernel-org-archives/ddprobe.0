Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 259B87E0E8
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748357395; cv=none; b=NrQ1OHr5GIrNCrZE3FNcAMxItC2T19AhO20MhTewxmXNqa2D47s3Teq7GbrVH8iPkiqs4hgP5HWhpTm8LrT+j2YRvDZApGLw/zsz4c3Pxgvxt9E+A4W0h4+k1zrxUppiNUkgPM4EjcXsAGpa/xCJ28/UKks4x/eC+gpffgJ6Xos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748357395; c=relaxed/simple;
	bh=HTA19aolsEMgNVlDYrNOMLBqqVXIIby1fkyi6FfZ3SM=;
	h=To:Subject:From:Message-Id:Date; b=JXdMDvVuoNF3JLOjdchcp5qkVhpCAlrXnaPltI7Anlx9Yy9tQQk7x7eGBsFcfsORBx+wnhE3VA3IaXuHwo7svvVM6jnACIUgf81txgdgKa/N/32J6p85xpCpNzziStvVpd3ulHdRQdWEFGaXM1kn3LNnVme8R/qsFeFiYrIzIKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qYm8r+5Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qYm8r+5Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F22C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748357393;
	bh=HTA19aolsEMgNVlDYrNOMLBqqVXIIby1fkyi6FfZ3SM=;
	h=To:Subject:From:Date:From;
	b=qYm8r+5Y1q3OajDNrpDnSm0f6JwvPYpZlOehdnECsc1CkGAfXimQoUBx6Fv/Mgzl4
	 4ZL7R28q13WIQRG27uuOEDhVcESmr30QBobl48VfIhNO4TLPWKQkG1xQQO9DCkB5q1
	 0YiFrdqJBqe1WpOC02NTwkv236L3JmaOkCnybbA7YTVffOIys+Pwc7m6RKyOf8UpXm
	 KcRTpHuGxBR/H9uuHVx/bhLXuHeU8m/WlSxGjWXSUahgEd20zHzIcuLmUVi78Htw1N
	 oi0lLImLPJB4fyT5xtmrTsD9r8BE4MrWW0v77ct1w3LBLn8+wHJpylGFzdyINFd5KR
	 1VrrTr+7Z8awg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FD0C54F30
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174835739358.6615.14972216535937405978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e137111f573e3f7b55f47b395aa0031257887d8452508e829060f5fd2aee8a9e
Date: Tue, 27 May 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748357393
