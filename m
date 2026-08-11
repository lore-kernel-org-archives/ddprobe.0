Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B7323C516
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 12:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786452634; cv=none; b=EkGZ2/IcT5wrbetncwPqhhAb9jc68F235X394aTj9f6LNk+GwDv/sonXNhK2eeQe8J5QM/qmr/Zm4kCZ/idD48X3jJFIsUSCgTZdCd/owfAYhJ/nnyIE2k0GPVVyf/Dtk8qW0fTROvQyDeWOok1RUceXKGoyiA5I3Jlr4lBPW5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786452634; c=relaxed/simple;
	bh=yj78UWJ8/4uGweIEr0xv87etSk1ofPjusEVgBSpnC7U=;
	h=To:Subject:From:Message-Id:Date; b=PmVp4GULmE5ZIk0BTGzHE091JniOFL7BZinrdn31iKqtZUxeUpwjc0zmLPVYCIdO5HH2OIJTMkiLmy9YwmCcby7S+1yjj9rGqhU74aE6l3MzCr9tOEdkfaGBpWFAzmnsgXNRBfQYGh3VieurhnWUJqWB69vbE0uKveitp70Tjyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Le2+4QNG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Le2+4QNG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD7B6C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786452633;
	bh=yj78UWJ8/4uGweIEr0xv87etSk1ofPjusEVgBSpnC7U=;
	h=To:Subject:From:Date:From;
	b=Le2+4QNGPTshWUBH179LT3iBjiz6iKa5oL6D0L85Amu9LZ+4aWE1v8tMwiyYf1h/N
	 RBkq4DToNHPaldJjtKXFhywyGv06cczK9hEDmmIXeNnDxL+wnTXb92YX924lH/sclW
	 p0pb0EbH0pk8z1cbgE9sHpurcLYISM6oeUMZLYmOcU08y4SiN9ccRYXyWBhnZZPJxf
	 RUgxvKZ8C4jmg10WFkozXgP+KE945qsjRtGcgSX5XXlQm8Zsb6tLhCVKDNr6xFnF4x
	 W5Itf3KgiqtDriGnHOmXOXvbO18rh56PAOjTugjh3F7D6oHA069U3igM7nLcu8LnCc
	 QXc4uE7SRq9sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1AAC5AC67
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178645263368.4441.10318763746299173167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19088444e85a9532732e62c2430ceb8af140efb76fce835c6c160ec61f029bdc
Date: Tue, 11 Aug 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786452633
