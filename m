Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 089B931283F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757509794; cv=none; b=q2R1Mb7AwTg3GzI6Yh5Ldht2tJNx6dXCgfM8VY8YXCeWmeOYKkZgY2ny7HawNqtut7EwTTdrj/uDfGYbJbqyQbXcEV43wF7Ywq1vCR/QUX7SjVxMYrCgKG+TExDYEX+eIx8unxS3wkjsZluDgMozcqiTxC7r7Q6yL8S8ZM499rM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757509794; c=relaxed/simple;
	bh=2hgJm1F7P4l/bHRFkdEF0hMEGvhxvfH8bJX3dsDR2dQ=;
	h=To:Subject:From:Message-Id:Date; b=hc1/bASvZwbIxeuCUJCwL5wTmARa5whqalJbsAx3qi/XW50YjB79Ltj5NBwd1ULBALWnT78o5GWfsciu+q60K6nQ6B3J1TzX0M/Y44lYFI1NqFufdxoMyNaqMloc7MGDjMt5j/UUM54ya61AC1OtxY7kADCgNYG+61SA7m5HbG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=odz0f2Om; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="odz0f2Om"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E260C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757509793;
	bh=2hgJm1F7P4l/bHRFkdEF0hMEGvhxvfH8bJX3dsDR2dQ=;
	h=To:Subject:From:Date:From;
	b=odz0f2Om1osUKPBA+FF8gV1QyntWt6XIHrBlUyASfwt0CN54xDxPTWIsW2ORphcmZ
	 7Ab/eLb8xWfmuaTI/55YBBnqgOTBkO4fzb7eCMGRacYOAcqwBxuU0vN/4ZwsOxqMDI
	 ZZt2jqxsHrZSoftcDGdP90pm/4PwrNL7u2JH176VG9JMHVZXCQpJUapaHZ8M5MAg+B
	 lUJQOHJe5CLHoTaYpQzYe2yMugosjEZNlWA0qIpEDXSV0nRrHw8wjHcdkxFy0ULff/
	 S8TRzmYusX6Hxx8/8afkwjCMgNDvSj4DFi0brZER5d9/zXjp50Z4vOgOcr2ckA7HXa
	 zyZgdVrrmWK5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F32ECA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175750979357.28361.1161192237986521047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8bc8ccd747b6f4e6b7d058fb4d88042255dcf9bac31291734ac65c7ad27b367
Date: Wed, 10 Sep 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757509793
