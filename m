Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7FB235BE2
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 08:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766651634; cv=none; b=er/tuEs4YvpzV2o84OxJiYQVQWwka1Ii2ZDvkD/7OF60hwJdA09J8+mHFjKagnb7l02zDkITn7dQCudxq+04yYjUJR+hdNZRZPDdBy9lhr9T6k4aI7FquLl+cwPxv9QPQKaAC0yx8oPqw5685nWkOuLBSEH0ePSFLcel2uggkBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766651634; c=relaxed/simple;
	bh=zlcpmTqgVHdiF8MCuqFEoiUEU5AE4YOMiPJ/es7c9Ss=;
	h=To:Subject:From:Message-Id:Date; b=UGdyqTC0mQMY0I8xoxOhdDi+2qt366JD0HZ9eHLbnZlYHRVm0akgLjkWcG43ngPo3qpWvQJ0LasejGk/NOXswG3pmRee4pXi/pIcxMcOVp/F456J32Ht6uK+J24gYox3QP30VrontsqB0bp0hyjYMB9s53q0ewDH5yZVSLkqVgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J6gB7J5O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J6gB7J5O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CECC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766651633;
	bh=zlcpmTqgVHdiF8MCuqFEoiUEU5AE4YOMiPJ/es7c9Ss=;
	h=To:Subject:From:Date:From;
	b=J6gB7J5O459u6GwZqvN5jp1hzkfa0cr6pas5ADjaDrLXqvf5tifJC+lPaF1iPRGM+
	 DR3cKPdvHAlR1+x+Fd1diWjNJYRGflbKStHHZZAnNgkLxlT53YcVRpwe65GLQpeXMb
	 nXzlOOHBSM9OJDK+FMPzwpeYyoGUijkEVu3igUkKA/0x5/Gj7D1CQ6UR4mzMSCKoNS
	 1kifMkUcD5Rm5IGkN8nRLkojit8qIxiAQ47qke6FsxJ2Bcs+mqYlSobsDNpUB0v908
	 6y6F5NV8p3X/5V9rQK+q+pcqKrTxnhcVqEcz0Tn9+oH9K+iPoKbP6VpRelZcZSy310
	 /mzxeB42XTW7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6D1E7AD41
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176665163357.14968.14689797935367195286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47dedae2607a41d5f8a5c06fb91cc1947d355ee50f1db5098d7de281b7e44799
Date: Thu, 25 Dec 2025 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766651633
