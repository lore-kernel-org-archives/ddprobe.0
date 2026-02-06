Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12AB02E6CA8
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 05:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770354234; cv=none; b=KxgWuUpn4aocN+Z9JwconKnrjYoZI+gGX8XzlaONry+f9yZUbTOt/Lf57NMDa4NAHmytnTsEvIkpUnr2dtMzzyk1OMSvIXe5lrnbp8XCJAhcH2qhOO1n/rAtl5GvBW7ND85LKLYY3oeZ12RJJvXdAl62k3WxFEgaAZz+UnTfkkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770354234; c=relaxed/simple;
	bh=wcJhRykUZ0wz6zkAYB10slQBBHrT9CB6vKcOcNi+cLE=;
	h=To:Subject:From:Message-Id:Date; b=kbQRRo+bNoZfmHZJjvBN2dX9HjHq6aJUhZmCMiBhMx1+H3fQYzJIe9sGJw4BMnpiDTGJluC9mikSsptO2bqNhyeHvbi094nVgYM858GBp8SRNwKyWPZQsFmrlq3/7mZsDf25rHzZ/AFT9VWkDmjFoH1q3pksmK3RZxWNvuY+KXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dOD0kRjU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dOD0kRjU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25E3C16AAE
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770354233;
	bh=wcJhRykUZ0wz6zkAYB10slQBBHrT9CB6vKcOcNi+cLE=;
	h=To:Subject:From:Date:From;
	b=dOD0kRjU5MSUrmxqqcsv8GSYtFCJ3zgxnzeeZNplkD5J9xiKlNf7EKq0x70F7zVhp
	 sw3+X12IGK/Rdnab1+rZRnMkMbZYxvEGBjNxVFks9BJ1hGSiLzJfZQri3y3jZtHeRp
	 PxBoY2lasS8qcZ7GD9Kt4uCKvNNT3mfd+u08O4GE0bST7NnEIVnBBJlB+kVKS4qU4M
	 sYLQE64zIY1DD6u2x4Xji28j/f0+APYGcyNWolLe75JMIIrgl+3KiR/iXDBmKbgz7j
	 NtCyo/mnZnVXcGTkpfYdIhU6ZpkRkgq/9k8pwjkFS2mjmBsgeRfPqL+w2qTsnCGxzb
	 zjklW0iX0ta/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90593EB28C0
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177035423358.23980.15227230671274382839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97a5b5bca88c02291e13a2f5be48b6b97d36ed686abf1bac56163d7cf2cbf34c
Date: Fri, 06 Feb 2026 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770354233
