Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A8E2500CC
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732565154; cv=none; b=o/WYtnGZfGlD56br2C4CjCMcsROl4gUZ7CzMJuH3zXKCosXOzUeg9BPOX4LFteqsrRvS7eN3HC1OBUiYomPpLyrQ6sQJF+bvCGZFH9aUp13qGxKT/PPgVPtbCvYbKe2kPrsKhIwhGFsFsDSd8MSUbMzCLER4fIW/tHZXzqIHN/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732565154; c=relaxed/simple;
	bh=ClGAaefyFuh0wE/bGvdJ5wIBUX9RES7NtaLguq4kGbU=;
	h=To:Subject:From:Message-Id:Date; b=uIA2hLUvVi5C7R6kle5sv0CpXewpEOpo6rBBgjfd3Jr46clyOAHzIRRYGpxXmdcq+xsSWtbRCsPI5vJ5NmBBiAHDEfach9Jk6n751J6TpKHC2MSsheGhFoEqvdw/9WMYbILW9okF/9ln/kbTjp1pfAa7pjq0qMGnemlL37AUwrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UcToMor6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UcToMor6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A742FC4CECE
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732565153;
	bh=ClGAaefyFuh0wE/bGvdJ5wIBUX9RES7NtaLguq4kGbU=;
	h=To:Subject:From:Date:From;
	b=UcToMor6r65JXD+vi9GGvmaUQUFb2mDufBqgcH9P9BQ9JOgWHk8DhKurbWvib5zP9
	 /A7BfEDSrNFkzZVQL5bDE80FfvO279wgQnAASo1KCvH+Zy675sRFxcr16wkNwHTj/R
	 LooQtPKmbO3GNQC+wzhhP7STfuiehcQW0u7MZERIKkshOEwfbCuJZcS0apPnwl5d9j
	 yrXkH/unopzmdDtmQiHHoKA61QPPE9DBy6/h6A3MLSUzUAH9I8LfBtDZwKKE6OVROt
	 BOqgXN4D2fgjcAf7SnTFYyRNdxwGWhyIy7yi8/vh+VXu8P1YQhdLbcLRTMep2Irxyj
	 0DBBxTnLDZ9MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94156D59D69
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173256515359.5366.9394335045163722711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7312279598ec601c4cbba74cb2c5b196b6b03c780fe76445020fe409d99cda7
Date: Mon, 25 Nov 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732565153
