Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C02F30FC16
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 19:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771962894; cv=none; b=RWgRKGJW987VU10QCe9XcSCKlif4vEDJFJUZos/bkceI1bNI35AWJrLlS4r44NYZk880iekv1jRkSafXH+N6PtnMubUKmNrHH9bZ+0DO/cGfchEMQn0oEjLjUOtIqfoMGapc5pBh5TziYqMzBEHYYBOuTl+WFoiooBm6R2OBXw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771962894; c=relaxed/simple;
	bh=PEdKiv0idizlByGRft0kyr8RNPQvlJrXVB+045mUpbk=;
	h=To:Subject:From:Message-Id:Date; b=pH5qZRDq1SoJ45Sq/RZfECl0U1fSMbNg6dK92d8VmojkbQ4osACYw2ogCd/9pRnNUyQjx2FM/kc4Q2BArvk3T0tw6tyrz6g/LAjjALcaUGLaDN9oUuZkJqZJxFE9sPUQwABL/ixCqo4J/oP0eyBVAkSdDYyE9m9AI53EN0Mvgpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hEhDNSyC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hEhDNSyC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1427C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 19:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771962893;
	bh=PEdKiv0idizlByGRft0kyr8RNPQvlJrXVB+045mUpbk=;
	h=To:Subject:From:Date:From;
	b=hEhDNSyCIZkk4QAQx078DKDYwvqYyPTxYnS4lqVV1RK9mqdc+xxuvYA+Doj/qd/jH
	 Z9zb5zxrCKXBU8rWhOp4LljzBbsLtYMriW/zE1jzhLrGidoy0kdVGmHEY+P/n9mbZI
	 MCwnlFIx6uFyTXVHjNJOf86sRgWso0DIugOHC7eSd8SlP0OJzbFZIM7GJmSz2BZ+RV
	 VbNv1hjEd4OUY+wprXesQdVSsal9leYSbPgIlw4FaGzSBWH34+6R19YMzoUqSKXxVe
	 1MJTputMBsvJxzUg8QW0GdLeVN3gdjBr2bpKM8GVbiy6ZhKAEsZ/5Yy2rN8ZI3MKe7
	 Qt3tOfs4UjS9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9341FF4BB82
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 19:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177196289358.4660.6391659616026628272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c946862031d95fc8201cf846b893b97d78c83ae2c311d35942113f99a56814be
Date: Tue, 24 Feb 2026 19:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771962893
