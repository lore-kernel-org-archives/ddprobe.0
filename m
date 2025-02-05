Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA0D2139C9
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738742154; cv=none; b=u37/wLh2pAW7BPtOHtFCEm1c0ZPNkG13r0forQOvmeK/nAifad1xnFWWQipVYJkJkWlToYBuGXKn5S/FWpGDEWJWzxEz8YpHB3WPYW9r25sdeXql6dAMd+nOo9CecaJWeTLlqZQUmStgvoPvap8OPXIoxF7OWZjxPNX2/ke/vQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738742154; c=relaxed/simple;
	bh=MeqR88gZc+Ipr5LrETvrmTr2WOHmKv423K0lWIgLup0=;
	h=To:Subject:From:Message-Id:Date; b=Xy6sc6wxefO9zZo+pH1B3iSsJfsAxHqo2c2jCUREyutn0cGoCqr/WwVcRgUyd/qM6DUTBHo8VIbRYx0j4XZcP+ZTwifc+M5WpoENGDSmJM6X6pz3/9nM3UDTGuoZP3xvpQWvUh38FayqKWDuD+WXKzjGWnJ7kPuGxjLjwE/rZG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f80P2BR2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f80P2BR2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA41EC4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738742153;
	bh=MeqR88gZc+Ipr5LrETvrmTr2WOHmKv423K0lWIgLup0=;
	h=To:Subject:From:Date:From;
	b=f80P2BR28T7sUoN7K6u3aqOSYPAttfLxy1EZqJSXikPBbijkiqdhSnFv0ttEwLdS1
	 /4Kp6SG7SMDB+Wlt8Arh316rgTBOitBuezxgHCpOt+DvGzaY4r1sxGQrCgs2T7ZaE7
	 IAKpzbyNDhAokuuqpIhY0+FhRZmJJsjetTDDltts6IQBZJIpdZxQjir2Z8TOOsE/NL
	 6KLKR0ZyhaiQHWqR5+ycu0dx7sFIyHyn32VlcDSxdoRz8Uqp/2tTr4e+xBd/KyCt4e
	 kJ0qz5U6ddRxYS71ThewD1O4hMc5JkHEjbJVn/AMhCLyg6bC+Dy3b4niNj3W4Ddb1C
	 SflnCI/s2YcNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94938C02192
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173874215359.9739.18395898664509154686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cd74e8283787fe332a9e5b5193ef18d317ee1501d75e9a5aa5195334947864d
Date: Wed, 05 Feb 2025 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738742153
