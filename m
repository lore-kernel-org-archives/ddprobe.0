Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 738201E0DDF
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743187194; cv=none; b=rFw93EjKWwf+gT9OL6LrDX80J+KuRQ/d3aPGdZP5twZ6bkjCezMTMspGHcnf+zXw3V15nFndeDANGpxMidBILUpaROG+sy/x8F4iUSR03eOFDrkWqfewo/KBwNywsHIASPeDE79H7IaC5qK8OxvhTPzIVEuhBxc5altb1MU+29c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743187194; c=relaxed/simple;
	bh=bmgJW3GiM8NDr/b8ToqVxuIyzmJphD1JFEPi4B6E6Aw=;
	h=To:Subject:From:Message-Id:Date; b=DUzy1doL46uvPvHvKzBSOPQaiQz4bO/lK1GLkvwciC0WWUdz0jB9c2xRDObKsx6IdiyJ5uephR+2D9xhVN3yTZV1HV5RD/2nR0NUco3w2PuB4rBRAOjb9NDyfZnHnnh9klR13huL0JNA+kLqUCXXcNNLGrUIf+MKRewZr4/VwcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o8sERzED; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o8sERzED"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBE1CC4CEE8
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743187193;
	bh=bmgJW3GiM8NDr/b8ToqVxuIyzmJphD1JFEPi4B6E6Aw=;
	h=To:Subject:From:Date:From;
	b=o8sERzED2j7l/tGf3sxaaldkyEWle5a4JRwCbd02IMBKf5wBIWuNbigwSW2RD+/xP
	 xaHPhPjEIW3vJcsvTwaJO6zxdjbq4YCKLHeoYbUh3NqPv0WrlG5uszct6+GbQ7Yub/
	 AzvihoNy50mxDeOc/aMaETMq7NbDVhSZCWqx/0yNYnYEUQqH1pqc02eD+MGB/pm+1S
	 YG3i2z1S3sUxRDJcgtyr65buSSRYnGiXx/gynjyitArLIvLSuEfFvl16NE+JgWtHvw
	 YTzKyldPZpgEbQMHbhr7GR/InCDjGl4UHhT4zuy+MPyxmphCKPWhqtyYtyLtisTYZ2
	 6LATwOW1vvOKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A687DC28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174318719366.6966.11932511657762201916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8753390e32b41b8c8d9f1f9d9bf296aef4a9082610c720422e6ed2f53ed5c888
Date: Fri, 28 Mar 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743187193
