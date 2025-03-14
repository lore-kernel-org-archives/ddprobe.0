Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56286170A13
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 20:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741984134; cv=none; b=njI2m8wxiqenBB56oUKD3AlYlljHrI9Xfyx+ZAdonogN+FqahC1CGJ17loMm/hXEyBiGL88l5iuUbLGT9eG67sy4OJZVmF3GUgLSHQYibddJYThCXt1tDSS+KPWKTBEYET1y0oq/5FiJLa7gZ3POPBmtjOLf1K+3uvO38xZmYIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741984134; c=relaxed/simple;
	bh=sTtax7NllILTJ04lNuYnQBeEfcJigkHxetuceEIIwy4=;
	h=To:Subject:From:Message-Id:Date; b=W0nEi3U4awHkI0eExFnFVhxc9YkB7oeIOje5jXYQ8iQO3/NCxHZllPwZT5nJWNQ4ib0kTlhudtNoIKeZKd89PdvMGjoXyGnUUCBicYCeoMnKommsqaI7i6+PuhP12nIoJYUOIH3VFgz5MUKF9JnEbnd9b6lhBezOWyN4RZfTwHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EUzpNaeS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EUzpNaeS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B226BC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 20:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741984133;
	bh=sTtax7NllILTJ04lNuYnQBeEfcJigkHxetuceEIIwy4=;
	h=To:Subject:From:Date:From;
	b=EUzpNaeSQqacRuEmyKUDVzjDvIv2M3l5801AYrJh6EmYULVFd7yULvjuShUvVnedq
	 k7vH518sY7+YznZvMNgtll2zmRslpidZpl2hBJM3XRES6ggtX4JtAc2l5Yfh7ykZh8
	 I6lIU+7Sycfz34H086X6AsH9klVHhEva1oGEGQNN+IhjCQOQ9h0aHDD4Qdadj9++hO
	 ZAPJkaCQderkA+DS0Qh1P4PCeNUU+v4jBcspZA8EOWBSbtbzIGJ+LKnbOENrW8VpJf
	 SXGJaJmj+9Ve/N2NNQPlF9+fjuk34+j1GbTFjrf8HwKalCQWNrJ2ocZHatts+IMKF+
	 0N/5A6p1T0twQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D3E0C282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 20:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174198413362.17053.11061935150129870230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3e1c36fe645d7bd720248e99d626aca00f3152403008bc02fad2f74c5edec12
Date: Fri, 14 Mar 2025 20:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741984133
