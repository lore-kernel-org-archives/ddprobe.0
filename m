Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A0AA7E0FF
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754359794; cv=none; b=p3wDJbYhnURm8CMf7lj2I3us8EKYI+xRbrSLpVOYTlnVM5GMvRx4E0CbncxN44LAdEhOfx+UQnWuYLkJJzronFo4TMMjFqxotHi7DW/vxWFHEYAKUMyJj2RFKz2uSaX2IV5AvvzYfow3vaVrWBondnswj9QeyBtLOd33/V0m5uU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754359794; c=relaxed/simple;
	bh=qCBzXIEWkdRQE8FsotfedmnxQkcaZpQ3xPFuBtDJejQ=;
	h=To:Subject:From:Message-Id:Date; b=CjqVez8LYD97tcsh3e4d415gAa2f5iqSGczMeh8zl/2djXGnqBMifVcsBEzWRNWcIoLkVV+PCN5yBCY4xcW+fHaL/YHjYN+j65urXFcSu0aqWCIHqq5J9Nzm4LXPVKvRX0BeF3Tm2q8DtD/sFS0f6XcMi47s0GRmWF4rPWxqCM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gp+Z91eI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gp+Z91eI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AF4C4CEE7
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754359793;
	bh=qCBzXIEWkdRQE8FsotfedmnxQkcaZpQ3xPFuBtDJejQ=;
	h=To:Subject:From:Date:From;
	b=Gp+Z91eIZ38qooDuzhHVf/+sHBC8iX0pSSpWNbLPzQ1fICfK0ZC5g4AUjA5IB6uLV
	 KiwF+WyjpjfSYVPsjIoh7V/DNjLgvcZinRa5J/0AqisZFZfeGBc0/iPR26J8JCcfZz
	 eMg8AKhO+ONBLbrbcS0Zb4JSQbj32o14qYFL26vrQxqfWtHF7tYCiQpN9l5AvE/27H
	 5yMIgv+9gputp3Hd4RLZeiO31OU4HhZI8gxs4y6tqjKQQHna7vkCeqnZYF4q1rdfA0
	 dHFl1ayW3rlHB6lhEliU/pqrfUjlYi2D+RnhX6ZzA3gVDr52qnzB/eYO63cCCRtDaf
	 DSw+Jq1J6L2lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AD9C87FCF
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175435979359.29201.5363089501507686504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54bb17fb88c731bc8b4e73c51c2ee5e5893550c8dd902a510d9121c3fff94091
Date: Tue, 05 Aug 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754359793
