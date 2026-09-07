Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C50F526A8B
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788806434; cv=none; b=afIxq2ZlI3G5NkJb3X0N2eMpW3WM7SIiS5XFxOUWeCPqng2j9VD30Qm8aZUOTY41+hgswLwf9yqfz4aUhYfh4HQYMo9iQYSVI91+L4/YoUAFYQTRwVIsW6w/afxYTdbo8fFp9Z95aYkBgH8L/YU8AQ4DEtMOq8xIwfujKEISkh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788806434; c=relaxed/simple;
	bh=9LDZ5TomVwl21F93y9+SO0QNHeCp2r4MrUiQwolBS8U=;
	h=To:Subject:From:Message-Id:Date; b=B7QkKQB7WBVWjdhW6dvi13PbcdB2+VauDwai6do+vmqQ8sYrSj5SGxW/bX31tO4v3ggem4uxuwRjOndFzhIkh5c2N31oUYXxId5CexgZ7cWhzd4NmndLirD/o/FK5u93sP8zjG3/AuDxe+7dnZYSlEkVfk1T46d4+JgQhJ6TtwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E1AnI6BV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E1AnI6BV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7605C2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788806433;
	bh=9LDZ5TomVwl21F93y9+SO0QNHeCp2r4MrUiQwolBS8U=;
	h=To:Subject:From:Date:From;
	b=E1AnI6BVVT4KmUuFmbdrzgrjH0XwTNl1BHOBfOY1oMmjTNRq3rIijKOZTBZY//JFu
	 7fTY4wHeXn3D5/4a4DMORFkPTdTGiMeBSDBPqQ+KMbp1cHn/C+6sXNHiTtY7W08kuT
	 qbYqp7trFInncyMtTP1Q0gs4kCIgTL8qu4ep/FP0IhrE+bq0eFMOmbWq/JotDUnf/B
	 CTNulKeGwwe/rHRxDY+0V5DAZ9SM27n9WZZtWRDVHJIO3wTUcSOrDXFBecgm8zTDvl
	 kRScFtQ33zI3DZeXprU5dKVezlrrMQ2SwOGjgwDN0fQe7l8RKeSYVnB9HFOpN4lYZy
	 NwN+K5GABFGJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2326C79FA0
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178880643371.25535.16926015851862018392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 354e58a8ce33368f1df905de9558b4044ab000d657648bae4adee6a8d9624988
Date: Mon, 07 Sep 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788806433
