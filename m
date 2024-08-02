Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D25A17BB4
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722563754; cv=none; b=ZGpYuvrPkEfTao01lrDmDyR6bV/EUO6XrkVl5U699a+lF4fmDQvwQXw6R/uMOPws0ZaDEUFdKG0EiJW4QytB6vqGU+z3ruiUHh9M27pQuuYPI6PN5bhZxy5xoVLBTOWm7fPm6N4zijhe6OV/7VIh6AjjoWxILl4YK2SELax8c/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722563754; c=relaxed/simple;
	bh=Z9By67Js4DeriosUAmiU8DZhUuZUHa9PWitcqZv2cpo=;
	h=To:Subject:From:Message-Id:Date; b=J2/6dj9/QkzOZhBZaZdID28UzO7OXdJeUj/e/SZE5ApRr410lIimCSRSHN1zrKf9mGH/9AxLmiV/gXmmCtFta6PAochWK1SFpaZBC9a0fAZYhQOx5vkytxOOhAF5/34+LBfR+AGmPtVBV2jfPHKx2HzDosCv7eNKt6kshFuo/Ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uKQ69Ox/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uKQ69Ox/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AACF4C32786
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722563753;
	bh=Z9By67Js4DeriosUAmiU8DZhUuZUHa9PWitcqZv2cpo=;
	h=To:Subject:From:Date:From;
	b=uKQ69Ox/eyYYEZHt8Oka6uWZ5ns5VBkmzOge60hlTxNc2EVLgxRbf/atLwraHKZiR
	 5aslaN7mDPoh5UgjNZaQmwO5R2pJxR4hbsaf/LnC/oth50Q5SkrypnXXeI/raccFZB
	 FA7DHXVzolae0xZ7gCd9VflwiwusPCffvTzkpCD7A0JvXm85WYSudulRQyQz2cqtX0
	 x296L5+fexcfmSbhQIs6qm+mZLO+enOOiL5RkBOwCnaOmReVOHJwvGnvGtaxuan8wf
	 qX9hJC50lc23MkcWUtPf6I2UCiGKSpm/NlSpLKL3YhWi3+DPK2PJD8L26WgUaNzepL
	 /g+oAP6qbXtJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E09C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172256375360.18438.7655571310106942273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78dd11073277b5c93ae33e4511244b7e54205593eef3ae6c19e87e4df5c7851f
Date: Fri, 02 Aug 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722563753
