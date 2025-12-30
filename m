Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2364932ED21
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 23:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767138234; cv=none; b=d3XkQj0j7Hfc9oqU1V/1bXKOXQT/hnOjFoqFqCs4n5OkhUT34f2pNmpJq7OmwQRCpwPmR21AKPxcdUFvfacZfqWPm8txla984Bw7OHCbizMF+QbMtGsGxX8Dh2tSllhJYEzUM8vwXLKPFFXXBMcvYw8twPciZ/NEdmguthLC+68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767138234; c=relaxed/simple;
	bh=Rdbm0iLQid7EUk+vqLKbWxn7ECnulpnycFH6O41o/Y4=;
	h=To:Subject:From:Message-Id:Date; b=NbeXMC/kokv842aU+CuUmfRuZGWsyzXVreOWlgRMkg92zj+qN9ppyYhsDm92RymQHbFcx+reul3bxJhHZn7DYReJql+DbwDAaVC1pPm+MTj9m7qQCAdfaew/K/j0hkyt1jDOpkNyWYvnQLv7huhVto1YvQSjFqVzBlMJKiX/bFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HesyD8+n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HesyD8+n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A956DC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767138233;
	bh=Rdbm0iLQid7EUk+vqLKbWxn7ECnulpnycFH6O41o/Y4=;
	h=To:Subject:From:Date:From;
	b=HesyD8+nzlnEpP7zwDc1jWmAH05ZeHonLfTd4n7wKAvoPbcDDoI8R/EEbf0QLhzbE
	 /ZeIzQuqmAm8I4TWi8mTYUFFKp8mGVLJ+M6vxuwKr0eCq1iBgEtwph1I8qBli7RH0t
	 oFfHelGJoOfIDpskjZHUU9vjVshsMsyrYMn37yfCPnILq0OxBqFZ8O0yC7XqnXep0S
	 rqgSfRlqAScIdCF5TI0JDD9g1CXaDafKgO7SHRiVNwJdZ+SAzDqqDWv/1TLo8kETWH
	 MDIJUQy5HNzOh7ovLYsu0wAE6QxuPG7LAeYFyPqTZ2llsC3kwxCS720D4ZlZkv4LIK
	 qwhtrX7QMtqYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BCDEE01F6
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176713823359.24266.1115829004877907699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f3d04aad361e92244a531076350e74bb04f1c21448518e71e05e5f2983e27ae
Date: Tue, 30 Dec 2025 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767138233
