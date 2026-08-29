Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BDC7DF6C
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788026434; cv=none; b=Vz561bwYMjeCTl8QF4sGdvy8sgSKZlKW6079MjdRNr5dAjPAtbYVIShoBskF/lUeAojk8NHxQzO0sRFBN38G+QGjQc7GcxwJzaZhW2MVWTkMKsnSHmx1OimqjhcdcQeVpe7UWTMIMVYTGXXOVI3B19D9KmM5py1NBUNug2LwGks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788026434; c=relaxed/simple;
	bh=Spp7f/65UrvM+uDM6jPk+rbuBVkoIuDSHH275aG+L3E=;
	h=To:Subject:From:Message-Id:Date; b=meratsb7WR9UYPV8eT7FDvRW+LnRwEFiD4QG/eV0fTc1u1/l5dOTxEfwCFx7T7aVwptw2BlTbjCk+6V0Fnz73B9FAHh8YaX66KBt8Slf5xFdNlA+d5kFdMdVAJ2gVUpsvBsdJTt0deEXwTsB58fxyVjFKSnRh+LYXBCVt/VfDvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m5VQCkeJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m5VQCkeJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF21EC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788026433;
	bh=Spp7f/65UrvM+uDM6jPk+rbuBVkoIuDSHH275aG+L3E=;
	h=To:Subject:From:Date:From;
	b=m5VQCkeJVMt3itzRdaQKqeyPm++kmxcRqCQQihChzSwRpsT/O0UUJ4s3NZcsFspeu
	 01aKCC3x26Kgbv9cDYhgfm2IyiNPh+aZuUAvVS5U+zqjTSSBabWUnpqG21tOrWJipt
	 7+sE0U4NWeaYY9IMUx/9I0drBGDeT+Ay+jd3+l/yytE7ao9OW+6Rk2S7iaPxIs8KlM
	 Yef9QaI9Qkpc3As8JRxyPlXND0nFAAlolZF+rwX+ZliHJc4TvUHjUz3w/dxYi98uZ0
	 zh7fPt85tsWesWgOUc9IOBKx7gnl7ShhGqs7hC8FX0UCH3NofnILmy8V44cBjVzM0D
	 W4kngYX8fnuKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDB9C61DCB
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178802643369.32463.11902360334021470345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb0999daa162323fdcf679d34732df2863e3ad212828c24474930af935b82580
Date: Sat, 29 Aug 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788026433
