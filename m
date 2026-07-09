Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 461E933E358
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 14:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783607314; cv=none; b=czy9R8ZPoBYtjfI0jqmkaP3Mys4DRnoRAAnfXviPROA4sYqWrUJkoSOAqF0sgPLq59uZAYRrbeg9aaRiyAr8zzTNZBFVO+Qktl9hwApgNAL3l4ekT7uFAdgK6FMNu9vLh00jR+C3krGV/XKBAaHU+/eepnZjk5wqbyQcbCuKCqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783607314; c=relaxed/simple;
	bh=bzLEyKHJDNJj2lm23cnpkJ3VpsHY39oEYYe+6J8/y4M=;
	h=To:Subject:From:Message-Id:Date; b=u2JAJ/jF+N6p4qvxkr36HQDk8Ydikc44pKnnay+z+PrK776M1WHIHG+pQQqLMsmvA+CsibDWecYiaxtfi9W45tiymPd/b2AAvh03oSZcByuhvnQkC4EcuZwZHy50Sci/KbjAhvXtMUKft3P1FMS43+zGs8r+extcwRuH6m4LH+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=inM1MJGD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="inM1MJGD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8570C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 14:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783607313;
	bh=bzLEyKHJDNJj2lm23cnpkJ3VpsHY39oEYYe+6J8/y4M=;
	h=To:Subject:From:Date:From;
	b=inM1MJGDfD8Nz+wsfQi/bqE1jYSzeSdIfBPS66OXxlasrSA3uMSpH48nJIHoCMJ1i
	 USYnibRlO7yEgMQg3T7PjvbTJbVNdMmRTNBilLzGdutoWjSlIVRG/W5bHPycyaI9Pk
	 hS+5qAJc/ZfI04P5J729xQ9vzOm3K/oHZf/42fE2blBRXXWmrdNm8V+KGzTduuW4oJ
	 D16LTejRdcI+SIcYYVUPY6zM8HZjrFai3mrgSCM0l0gGpFTAN9ksxtcW9lako0DQ0d
	 YchSX4bhukoCPH+Hg+3JILTG6C+dAOfejx22ABEZvULN/UwBvw7ze500GRc1b6exm7
	 dvGIx1rn6c55w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D60C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 14:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178360731368.7319.14235493944385913801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e55bcbacbea33d981b5a9e9db005ec5194b902c9dc54307e958094e96f24b1e8
Date: Thu, 09 Jul 2026 14:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783607313
