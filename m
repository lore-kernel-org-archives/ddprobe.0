Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC96286419
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761802794; cv=none; b=W8HK2FTF62Tl0w5CGe4U9gII8c0K6Des7ORaYw3lz4fEMZYNpZvYeGIYPCFwISKeQk3Mo/ITDhzQgjtjVvI+Jav+UREi80fFW/VfsN4Blt1ZAVyqgO8Iq1NTHmharhUSn0wINyXWCHtrQrczlNU2u7WM0I6ta5mkQDu1torXFTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761802794; c=relaxed/simple;
	bh=6uPsBSi5jXyGOlwS+iQlsLR5H+1WQmX7Fs7pE7oNVBo=;
	h=To:Subject:From:Message-Id:Date; b=oMsAxN9XJL5rA1boxk2BuVVLVF8g0oarih7KMt+0aJED2CxMGrz44wc1uhzfU/rfHrIdkcfdzWprcqufJt/ufts+5vpS/D4dtqdwDXzbRIvEGeFYlUZV6bim2oFnC/s3xGXgA4aZTTG+ZtGuBV4peBNk1qb4w5zkBLwdDGSBIVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DLDLAMlz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DLDLAMlz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83B2C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761802793;
	bh=6uPsBSi5jXyGOlwS+iQlsLR5H+1WQmX7Fs7pE7oNVBo=;
	h=To:Subject:From:Date:From;
	b=DLDLAMlzmGHfKkt7oRE2I4Zp3jrVr1i5Hcb/r9ljkIKhcMn1iQRaVv+KF5uIFjX4u
	 iiDotqdiyA0mg6hfhEEbzHk5zZlqg17xE7qrOWpUT2GOsO5J42D66Zf+6EMBHHnA1F
	 dT7m4djj+ATXmsI1at+BgjRYkB5GCS5BNMgLV3OutA81QM0e49qjebwzh7MH1C+8R1
	 h8ORjmkh6CmPcBLcdzOQWCAzGiy2mfA/MdbXrAy49gu+H5sqEbisf5VYMMx6VF3WCl
	 9xUVDqoSWRhdQdXMz6sEOWyQJb/a1ZhNDaHCIfxFsuqdchwvuZ9Za7YwCP3MNRNlDe
	 gysh0vQXhbaHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98230CCF9EA
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176180279359.5288.6855531137897573278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 565d42d2aef7e37d90bc08c7a080a728cc317ebf35fa38de71656480d86e0a6b
Date: Thu, 30 Oct 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761802793
