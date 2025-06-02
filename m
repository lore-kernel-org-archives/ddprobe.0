Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 336BC12D1F1
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748904594; cv=none; b=OpNIB7BKv3AcKYFK2DWJUDvyBX+MTdelHyrQ/K/GxnLqzw5ckEJLoYsml65LmwvPzQ17Xkdj01TqGrGmiLQ+y08l8y9ROS8341Nd7tQGoLdQhVFPkiDERcidXmdJ2pYARud1x7XUL1xBFuvkmF7XiIknRvIxjGlm088jvzsoHDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748904594; c=relaxed/simple;
	bh=VL1vLlx6VEcFDbbjB2RBP7EAbQep1VGambxiJYL4bV8=;
	h=To:Subject:From:Message-Id:Date; b=RkwxH4QcM9AtYjjwiY5mU8uYA+QUACa/umqb9rqCG+jxhlef/ky9i7nBxBRp2ZN0nJdE/FPvOJ3M6LGafqbL/+yVO6SU/KNQ/wXo4jEVGrkRvW9R7K9ZToxn6C5Pe0LR3Gmueeqv74K77jyCcpm8nqy/Hy0gcPWFcHteb0VoJ2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FF3OkkX4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FF3OkkX4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E427C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748904593;
	bh=VL1vLlx6VEcFDbbjB2RBP7EAbQep1VGambxiJYL4bV8=;
	h=To:Subject:From:Date:From;
	b=FF3OkkX4e9aCQQ0++i1Y1fBJymJoi05yRyOdNCpHVFTpl/sDyrcBcAqPFRqDzjMI4
	 hy1PRI84ge/n3rrUIt/M5X8bXR1Dcfcir69mUKGNpJeJ5cAEhAzJvPV/D14EcG4bk4
	 LX9qF9NHRfQi8tzbOJNi6zMufKv9OvZXES9l6vMjELTRNiiM/ZP4/n1QWcXcZS9Ss4
	 jxF58GhWcM0jTgXy/C6pFunALWgOR3JagR5xwsMhvjQIBxiHmXF1UnltyQX2LmfGh0
	 G0KKzp4jJ5+5Gv8ic+FdPwmsZ+ci0CrbmwcLCmxa/3pTsGnhJfWFLlU5ghiru2X18F
	 fjvcYIDTwZS+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F651C5AD49
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174890459357.8255.12855510752682530799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 391a99a7e4b468b3fe5bc56021e8f9dd4823bcb1512d52210735a31f28537bb7
Date: Mon, 02 Jun 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748904593
