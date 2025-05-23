Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 413EC5D8F0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748012994; cv=none; b=qbgpNYqoXeNthU4TuU9C6vDfu4Pj5nZJvFL391aEW6kKRaFeQqfJN0MEf7XoZmoZP7WrovTVPNOgfkUwP80Cv1X3364hNFYOI2ZMHItBncqu/dHhw0ChOUwYd+zfY2Uz7JsR9er/kVRTuYPxpLJTsDBDf89Bv+RiqwvqhzTWr/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748012994; c=relaxed/simple;
	bh=BuJ1vA7V4xls19vaeyzdcdIowg10VUO0mmr5FSUraIk=;
	h=To:Subject:From:Message-Id:Date; b=JXPpdwdvtTrcIzJFW0wQ8/a1EOQ1H2vQaNTJLkShw0bWW94HnHP59N5UVjDTLG9Npq9OsvbZhdSLbrYGBShdDLhY/PJuBWD5YIjpburgehL4K5YXFevzpTmH36B0YTb5//8K9oTEKQQco9HC9miI6BteT1xhtNDMFxNfP/vDCvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F6UZilSm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F6UZilSm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9267C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748012993;
	bh=BuJ1vA7V4xls19vaeyzdcdIowg10VUO0mmr5FSUraIk=;
	h=To:Subject:From:Date:From;
	b=F6UZilSmOCLfm60zURBDb+CWLj1iO/s2YHLwR+NIQb0/d942vcVmahy1k34sbbqCi
	 yCjwPTAdn0cgqrnsViuQFVqC35KjtQYhadL3FX5MF6nGzNPY3CsknkBTD9mn31NJym
	 zCFPkWW6FpAmSgXrqhbbsiYYBeIKTFGlEuV/UF43ciZ1v2QwNBwzYL7q5R38CQhcPw
	 ow3kOH7DlkhmOi60l1EYv9fGhbYmm/JshWPa+H2tsmznxXpp3t48TpEpvuGwNeN/0e
	 L4d0yIuJNNOe2uqOcjGqMEsAXiXREAM7Blz971HEarRkGrufgYRlwwOWI+UY8ygt9p
	 b2qoLaxSBq2NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9903CC54ED0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174801299361.8926.927566806530051579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31f36b3ff943ceef96a664ffc8ccb61d8abbc14da6e58aa6fae734685fe8ef67
Date: Fri, 23 May 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748012993
