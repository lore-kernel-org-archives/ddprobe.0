Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D03376
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 00:07:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720742843; cv=none; b=t/Sy+f+LNMNYdIGx+bPXRgHOWsIblGH7rWMpxXLSvRg8F4hdgPaFbqOtT5jhiEnMytbfQaxK1p6IjliP37bKL8oCEdSJV0rvctGzV9wfORF9gzL/pdFCenCNyWZL24FOYZoY2PlAlTwscadVhgXi9n5afc7Z6alFIhmTr6WilSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720742843; c=relaxed/simple;
	bh=tBOTBtyQvEUhy2zp98oe+9Mw6kEv8PfDQHl6JpDWlgo=;
	h=To:Subject:From:Message-Id:Date; b=VfAaQXTj/NpZtqyezCqoGB4yOHQ3RdrPr0UzHsI81NxdU3/mUs2PP6htkwx1NHrUUR9x9aLNNNpW77X+PjDzdhqM+es/Vp7+o/Qlx6E0kIMNp4hlVSqWcXywuDnPHcEna0JJEHwj7qiipfblfUnHDVh4eOqnhLn7lOnSoDb/qAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QjN+aXQl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QjN+aXQl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5E61C116B1
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 00:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720742842;
	bh=tBOTBtyQvEUhy2zp98oe+9Mw6kEv8PfDQHl6JpDWlgo=;
	h=To:Subject:From:Date:From;
	b=QjN+aXQl04/FV5vz63gnotN2CmGcQOYQ8hWd4Di4yggQRxcMkuCoVLR6N6Zw2Oodj
	 sQ8TyjCG6BeXBC4dV4DgLS9T2a/m/KYbdC5ta8g16gI5N45+nqTr0DOIJ+tgLzk5NJ
	 wQ+Pa4TiqHN9F5HfeYcmcyc1Anqbw7VrUwyTKPpamgU6V5JxTkAzKpispAZzXI+ghv
	 08yYzCi3XeJk+/lGZwfwX948fyIp9b08cvIFVuSfuIG136ziRPHmw3ScVClhu9cCPz
	 Y+0Hb6Rw4zU5BLoU9BRbVmSmZ3L1ub/vYJKzznbChHYmT+GtkAvq7YWM+VNmyjQ8Z5
	 p2010HFhUcUZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C036FC3DA45
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 00:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172074284276.24315.14876406937673609087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de21b6b7f8eb6c6d4890c7ccab77bc8e0d2b7f4d007924dedefb89643ea3dcbd
Date: Fri, 12 Jul 2024 00:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720742842
