Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B040305057
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 22:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776031654; cv=none; b=Bik3cfdxVkHUIEMdzHpX1LHvy/MXSyORNC4ieJnSNZ72GfPWlB12zbey/PChgHpgrxcvCbuPgydT2EFOVaVVOWwNuWGu+0vgaGDOT5eKHLXdr/E2YPcu9+2yDRPZh8qNFznWfEx+06rClON1TqohJblixT0EO12NU2qYFrxdstM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776031654; c=relaxed/simple;
	bh=pxTMHDQglZ9V+m9iG00y5Ku02+BwCf+jvuXY83/xs9E=;
	h=To:Subject:From:Message-Id:Date; b=UHsTo3QsWzGmxyvIEkKm/IUC0gZ3M1P7/7yZb8SQymKzwKDe/ZPwW3FOD0KpW+xfvoPJJsC7Jr2wWWDTDSVUzql9vck0ig5a1/voB9e9rkoff6Zkp1n2G/kcPwVDhGyqR7yCTUwUHho9X8JJMIB+o1YtpnVv2lutJfY0JCAtT9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A+fw2Pdx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A+fw2Pdx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C27B2C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 22:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776031653;
	bh=pxTMHDQglZ9V+m9iG00y5Ku02+BwCf+jvuXY83/xs9E=;
	h=To:Subject:From:Date:From;
	b=A+fw2PdxG582JlLkBu+wMQ5M6XCEvQkeLwucghWCZxvA3iIX3Ae9rncUk+HHSTGLZ
	 VgLhBJ9K8SG7ufQze/kRHUjLleGBWghIoNOB1YMKSjhyp9PCGRT43tYWUGU0k8GDEz
	 7gRakaVEYlWLcfRSQU+KLl+mFXV+8sEluzsk0KvRMYEeNmdEJudweox3PmHzpJLbp/
	 X/+hxMogOTEomw7ZHTMLrVGoUbkHFxFgdWg8YWLqdO58Q7NXE1A7gXIQji2cIUUlve
	 7misTjhxyAARKvlqQr4+RQjVL4eWgcsbnEi6LJaeplPxmb9fsFVd0LhQbwSUEff+tN
	 M/bG+wrCIauvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD93EE937E6
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 22:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177603165368.14257.848905014343912683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0c0fe1d957b7c58e9eee48ec31e09b4e4ccad266a5fb1989f4422b33c40a8cc
Date: Sun, 12 Apr 2026 22:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776031653
