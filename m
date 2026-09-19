Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B82D1ACEDE
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789860034; cv=none; b=iX2EG7bKNLgB3XCo3BRGr3zQS5Z0IAg//wxra0H4v5R1DRF2IetM52uWtzA+YOCRUbU/frcnq5gYFbSqJxvLIH8wECmJNltDciLH14thyesYL/kEcEbHZs9RakYkTQVqjpehp1QWFPOZxfL09YPqiH3kSmhIASxN1TWzkEC5T/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789860034; c=relaxed/simple;
	bh=WCD0JrY+CrPMdjq9hGUyKMns8aumSrIEu0GKxdmpTgE=;
	h=To:Subject:From:Message-Id:Date; b=N6flK2etREyZkMXr+fzzse8rMGrIf9ipSp7OrEggwtb9hpfBe8bKmQ9HjG5GZnmJh+DUeptZAjAAwC2LVkBtz1SsKJq2NgwlE7Xbeg6WjWZK6J6ymj86hsxkOQPAcmRuHBrs1n903fdJ0R8sy+36oG8fKiKkrqWQkZBK6IPJD+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iWXfopJ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iWXfopJ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB12AC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789860033;
	bh=WCD0JrY+CrPMdjq9hGUyKMns8aumSrIEu0GKxdmpTgE=;
	h=To:Subject:From:Date:From;
	b=iWXfopJ9Vcj9ewk4f//WFASnJdp+2UuXdWh9SmokuQpYTiTagW8wNa9BlNBrM01DJ
	 DKkkkV8rI+WbzmLief/ZDCA0q1MuCENeW/oJKC/+zZREsJdQM8W+L1jshs62v/EXHp
	 wtLOwlJzQKEniMpyBvK/Gxk6G1T5Nkrz7YmrWCAj/TTuatq5a02W9M0qeeU4rMdgio
	 Ey+fKDYojke98kQsp+mv2z8csENOimSeVd8pSOryxfZRNutP/+FrsoqA/uV5il3QNo
	 E5w4l6+Ty6tKj9tIn9NhXx2PRfrgVX5nOg8kl4g5KotOl6uBcbfHrD1QfO7TWmu1w2
	 mR7gpwDzNId1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD637C982CC
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178986003368.21346.7732513297372115743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d165c8ac45f4338a2fe7cbcadf134424aab7397b1d500ff47a80f2b7bbc26ea0
Date: Sat, 19 Sep 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789860033
