Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220E016132A
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 22:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779573754; cv=none; b=aePtLVfpb7ezV+yiuA7TDp1ophCSoqNAcfw6j2Z5m1JcqKxSggH/j8KC9HycJBZHf9ZGuEqVLPZL38Gf+jHP7AKnCd8MY72aPooxD22MMHF1V5onG/FFAm4fJsZM/LVzazCe3pJDcx9DQPWnyQs4X9RqwxEElPiNTNbNMbIhldo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779573754; c=relaxed/simple;
	bh=JjisrPa4IxDcDzM9wsh5rqUCT+P1T0iIPKRr78Ql5GA=;
	h=To:Subject:From:Message-Id:Date; b=Lt+WeLH5UNY3WnSxlszZtrTgbYFkZAbnNg44DM2FmWz19dk4u7JXQ177wOWPfaggPJTTKfFWr6D+4x1/yr4hHI+WYlH3psP0e4h4znrY/5aGkDOFQH4A1FouXuleRSYFyejKXK6wWv9hkzRYwQdXqKf4a66LmsOoFtrqvoQ7zz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AYewq3x0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AYewq3x0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C92A9C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 22:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779573753;
	bh=JjisrPa4IxDcDzM9wsh5rqUCT+P1T0iIPKRr78Ql5GA=;
	h=To:Subject:From:Date:From;
	b=AYewq3x0CWhK4XrjN1ImsvSYqZuXMO7ahHpsDCcP6koujxT1kIJa/woCla/HDjlGK
	 WSRugksVxcKdcC9RhtEJKx8/QJ9XAwRfh6cwqEJo4BdNLEq6mPrW8kz/FP4Xvg4Loi
	 kg/csnLwpQJ+pblfWEXVjBcZvHVmApsPd2XhFO2zQ0b6X5pLFM/tX+To5dvTxCOtsA
	 KnRXd3epOmHG1S7we8+w7ocIaVFcHz02UVF81qtvlEIalUEunc/hxqcvdHMpydzgNu
	 TKNfs4GAHrqfbffetlgGzOm0f2IFQ1UlqZTbidX+wkfRuqTzgnkPv7fYq5AbFcGv6W
	 OsGTmDbKdmB5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1531CD4F54
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 22:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177957375369.3910.17920299946285063572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ab616701306e7710451fbb5f12c443be84f7be0b491c796980e357ddac0da5b
Date: Sat, 23 May 2026 22:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779573753
