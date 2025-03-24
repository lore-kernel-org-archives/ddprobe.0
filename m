Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 500DCEEAB
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742780994; cv=none; b=h1ghQptUkJtKf52Sknlmue+oOcY788xRkOtx685QvoLnAvABpxopE0p+A4BpM8hO8oeg14N7W4ieULwTjM0T0ll8s0Li69TQQ+9UJJ+tMI/5c5ZarLCUnAUi/IoDup2uaoH+cr7ksh1HCYeC7vBVhRqtXmYvnv51cMT6+MimATQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742780994; c=relaxed/simple;
	bh=+wTKMCJccJYZFKFEDExFYOua10Fk1MjcRD19cyojwiY=;
	h=To:Subject:From:Message-Id:Date; b=mcy12sB3lwFai/CKwkkb8l6YmLDQ57vB2zut1sTiuJvHoXCm6TqOC/1kzncEg2LyZuB5Gb7YWLmGU0d8ox9OqnbEh0giwsvSav5cE9iCERimNazfl3rvhrilQBBdYOabFa9RjV2+b1yAiraMZyOCL6Euisipi6lAWotZlza7HaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hvCA7ZBS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hvCA7ZBS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF9C5C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742780993;
	bh=+wTKMCJccJYZFKFEDExFYOua10Fk1MjcRD19cyojwiY=;
	h=To:Subject:From:Date:From;
	b=hvCA7ZBSzAlGvvf1Od6C8pxzhAkPfkYfUqKarp7WKBKEnUpXmGt3qQBB+5lVUjdQ6
	 g9zTgKFtqcnEmepx07+GDy6jl797e0l1ZhX0YwPvOEDkvgsi/SIDlgilpjX7msyyLg
	 /icmPOTgn0GVn2EULev5De5ENEN1q4xMNjlS2WSlzVuLJJ5vNR3mxwyikal8eSKflj
	 jADG7XM8O5qhZmaaBM8coENR5ww+5jtsXypEQDlhLyHSiENU6tFOU3YJ9FXWbGCFZc
	 hknCtXrtxUTMbwATmF6iDo21jU3PXgBHA11VbNjKLWcrwbIzStfvF39K8PFRl7NcVI
	 lHQCJij3RBxng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1D6AC28B30
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174278099364.19758.2434845479145781112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84cc20f4e1a8db11613f2c4b9844317564b89be6d6540b4ba8ab749e76281b25
Date: Mon, 24 Mar 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742780993
