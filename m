Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 426DC6F073
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749080394; cv=none; b=WJqpq8KyXntuoHSc9WYZoiAG9hjcYNphXk8e585phuaW1vQ216Y+wUmsAymYOzcGtU4t+7/GtUGln09U4gi39lqqEHCBg6oI7vJpA0OcAqWPQKE7YozfEhU3zEAsFlHelreHJxk44QHb4DlKb7kXfyc4Kun/oxcA+hzIHh1hzr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749080394; c=relaxed/simple;
	bh=XCtb0u8do3SeebYqUPM9vvmtsn4GDtKbbc6kC87IgC0=;
	h=To:Subject:From:Message-Id:Date; b=M45BWgPlgiN3HgK8+rvDJNKIArK+ytvgqlWB1u9DZtK+6UOrqZyMr3R9N8CfC4HLpI6LXFNg+f89+urdQW/hWxmVd709tFPxpZlHnVGN0mu9DfNPDfKPbO6ocx5QlRyfTITmCRTCX5D2qSz1RwXr1fOHm5BKO3Gi7bQX2tJzPN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hca2ZpMB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hca2ZpMB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67DFC4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749080393;
	bh=XCtb0u8do3SeebYqUPM9vvmtsn4GDtKbbc6kC87IgC0=;
	h=To:Subject:From:Date:From;
	b=Hca2ZpMBtjMWYv/bAXiwY2OYUJl8fGb6EnqQll3iV5e68WN031WGiOlwme52ZpyN6
	 2TeYo2RTEiwWeR2z1kI7e3JcmvKHIde0dGgz4ms12GjR7IuQnpMdOS+m7yHuxsWOAF
	 9bMjUyNMePdfOCLfho37nuhws0W/dvFIpT5I1SfYI2GMpcnI6Ed8R+kkwWVFvFWXk6
	 L7QUj6rSvT7S9a06fFhnjpkh0rZagYqmJfvf+gN0OtE0kP6pbdHgGFcZdL45uIRf8P
	 NYiILrYuDhN2X+HGqo6LtzLrZD/vnjT+n3azUqO2c8tKnJl4XeBXAwTMgvA8txhfvN
	 rrcyyQM3H+xhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955CDC5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174908039357.6663.17462543663470545745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 081972c726acb22b5ac7e07556d3a9ea0196e12383fa84fe5e9516329538f107
Date: Wed, 04 Jun 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749080393
