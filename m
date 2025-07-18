Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 266A429AB11
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752830994; cv=none; b=f/gXtAMJPRKmw5tsZII+puTwlwZikBPZkTArsrsJZ8Ibh0fI5Hfs/RgHckUcV6FhWTENLB+Ti5pvv52N+XAnxnojMNVrcelEtuW7AZRsh3HKWhe6OyyqSqDIK8XvfAPkvXMnmNSw5Sk7+Ueqa6KuavIZSCZNg3nDXGlqxJsLTM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752830994; c=relaxed/simple;
	bh=5kV9ihhyTRz0GfYwZqGPqW/TRwiPZvhYOG7FieWrfFk=;
	h=To:Subject:From:Message-Id:Date; b=f4z0L+X/x9YnmGCkYpAKkwdkijcQ3UuR8A6eIoR3z9N+7FFM+hMQqzCFbn2zoZEdi+uluZhDuAicG21M1cHqAF658ISKY9QHX+8yb3lrmqBKXfAqbc1TyUYFDRWNC4IcxlelAYnBa8qWxGWdCh5vZYr0yggSAjPEFdzwO3RPziw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NegG0Sbc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NegG0Sbc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F4AC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752830993;
	bh=5kV9ihhyTRz0GfYwZqGPqW/TRwiPZvhYOG7FieWrfFk=;
	h=To:Subject:From:Date:From;
	b=NegG0SbcLt8IgbVfEpsrIEU33l00HjVBAQ0bPvDYobgl/fuKUgAetlhUCtRgns66f
	 aW6JqEp5a/mrnKXB1WJD8AL/GyqsPdDMh2FjJ+EpbGSvwdCGP+YKbRyFu+qc4H+sIx
	 sVYaVdNSyFuflOg4vjdlMn3Q5QSPYPWDm05vsviE4AQgVPr2mdDOcTVdmKGY/cFLnx
	 Yl7ui+kKmSwEOEKJ2eEOSOJWx+Z71IMES+Xt0RHtqwMNm3AKjv7vpMRpDT+2U1B0mL
	 ElnIVl1yd/7NN0agDEeAohqfSVJnq8scvgmBMR7rrS89j9NRpZJLt1nqYKR4k96C1t
	 rCVTwBuYmYjAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9001AC83F34
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175283099358.12422.1024177114533011652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09a29b433cb5a6779bdebaef8930ec288feb46902488aa8871f389bc9d028128
Date: Fri, 18 Jul 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752830993
