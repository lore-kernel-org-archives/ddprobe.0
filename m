Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 399462FD681
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784988634; cv=none; b=S62Ks+okH0yFZw7qcH5FpXOQUjMzSkUw2Ue0H8+Vca/T5fbnyxVjbo0ZEt3y8TwKKE3SDvfCNJW45/LFQLWyPQTy8rAxAjIZ7OcMXw1tunqyNuDAMdvKWJA48yjTKaDrpENjIWwsLE07PLuM791ld9+TnWF22wp+M6F4EjbB9J0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784988634; c=relaxed/simple;
	bh=PjCo/Ui7y5d37vV1ABfhTGH5nkPowOPhvR7hNfrqJDQ=;
	h=To:Subject:From:Message-Id:Date; b=m6Km7CRQQqB8PpEZKE+NHpkbu+VIAtjLzkiGL6wXwly0ANU/EmAoNewJBD5AxZrteysYSvS0vBdSAsIKqCPUucqKRo5Ti99rY3a+HyO+WBiJHjmY13HOv3e/gpdD60amFTvniFKa3k6CHXk8yjzPUaiPhx6IWv4laTJardtJqCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FFzI6DfL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FFzI6DfL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEBB3C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784988633;
	bh=PjCo/Ui7y5d37vV1ABfhTGH5nkPowOPhvR7hNfrqJDQ=;
	h=To:Subject:From:Date:From;
	b=FFzI6DfLbCg+LW781uOMgrOntUKY6g3ZZbNlzNHiswu8YUW9yzxebUVirPv5o7qVq
	 rq+0bV6Gv6tyFMi2ocdN87+R5O+X0Wrduf/I5UwNudWfM3mEzboHeXWvFernH0m7X6
	 bfhABMNIPqJEqpWavekTWhYHn7Jfj8jweUz2RM9GsfhnFr6ECAKFxi3mSPakgR5qNf
	 DiCRHuEZe1HO9CqfJS15Bf4WNnclQz5mXpa2igvct7imB6qKXpdTuWVmSso7KXgmf3
	 JbY3x8qWuGnM3A5RNcgG+S1tUQ6CVCG0JMbRXXtWMzmih91+Z1PQ1T3LMHOv0H9BIe
	 QWY6TelY77Dcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFD2C531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178498863368.27471.2723068442859504129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86c7a61e0ce7f12fbb066b2a0c71bb7097cbd29eea62666df38c82b5df0db1ae
Date: Sat, 25 Jul 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784988633
