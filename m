Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D434C6E
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 00:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720054523; cv=none; b=MG2pVaJpKw51CM+/QVqSVzGoXs84tAFVYIhsUjmjRTojkPcMxvWTljpb0T/bR67SeB5EWdJCyhRyyLUvoDbILWCsr7BZxbPd/5B/p01Wblmpsz9754MszcOUrBdB1rSBKeHrg34qrO28S6fl8MNPyQM6Aak1mT2TiRzgmCnR3FA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720054523; c=relaxed/simple;
	bh=TGweYoKL9ItgYIuWJFYZRNXNZ9nT4sA0T+8U7oJwXLo=;
	h=To:Subject:From:Message-Id:Date; b=q5zciicLMD5wODJyaIK2lTzASRq7wVJ91MJUuZ+xsuJ1EAkHNQko8UEq1lHNccMwYjm5mGvj3fGhu5d66nfdZ93qWWdv0R1CGElS6dP/4yFyCEQlnjwmeNuizIVEK0m+HOU/8l+TBVL8oM57vzd9RykYlSD3SIuWY3iV+nSYVMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SAB9NwNe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SAB9NwNe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9829C2BD10
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 00:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720054522;
	bh=TGweYoKL9ItgYIuWJFYZRNXNZ9nT4sA0T+8U7oJwXLo=;
	h=To:Subject:From:Date:From;
	b=SAB9NwNeH9k410g6OehleFJ+UtSsMXcCrydyIT3l780cdCF32KRBMAvG6pUZ3c6+t
	 fqBY0i/GpF9PB6tjT7UhyNxmC12ZYZWyD0zh7LtGA0QZgyrAh5dSTaZpipxOUoSkR6
	 zjjMR0wqZ7h350Y0SjsooAT9rMBpoUO3Rk3IqLrmLAlGY2jxuLesZCApnWp1lFmXzT
	 U7MFqPII7EFuS5hD2bzXNTo7Zb1Ch06N0sABMOhiwSWDehx2y3YK3ULrRoyRxlA1v0
	 T2DvMqfFXHFkjCqGU0YjBSGDw/XZ1Oa6+A+2OdwsL0WhVmisNcFhxEUNoCZUKxF3IF
	 yfIBU05+x/drQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C257DC2BD09
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 00:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172005452276.24801.6642082986089299643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d0b9388243dbd270345a1f576c42a26586f79ccbe85ea80dfd198e6108eec4e
Date: Thu, 04 Jul 2024 00:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720054522
