Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 073CA381AF
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731264354; cv=none; b=YvUJSKr0MP3uX5SwSjq42zKP5IlYbAuwcrLJydSxSZFReirn0Q1janb97i55V0vnXWzMnQADQmaqBmxcDTfrZZLmx9JOFMBUbhGCn0Rk7F32wHogwHtH9JK4hssV5NpU5zMxghB+S8q722/Bua4/lkpCROHS0/av1H130LKScF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731264354; c=relaxed/simple;
	bh=O38nXRnfa85fvWzd8eKcoePbRZoMCA/4BPzy1N7Gccs=;
	h=To:Subject:From:Message-Id:Date; b=aXiNbgW7qE59sCwStTdDZr1KOnGyIK9J1zC7Hg1dlICHUVHTeIxXNHu0NG79ZbsTOeeBMKRuJJFme+mCsk00tQvXoayoYYbNYLY4QOmGsNAUuszWCIdrUGDJ5cqjzdJD9f9698EVhmIkEeGxeE6q92hKQF0RYGga9X7bVSK4miI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y8f+3uZR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y8f+3uZR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0285C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731264353;
	bh=O38nXRnfa85fvWzd8eKcoePbRZoMCA/4BPzy1N7Gccs=;
	h=To:Subject:From:Date:From;
	b=Y8f+3uZRz0FWL72brrubXm+TM53wC5Sc6B8Bw/2oGyGtBF40ip9i4RyhWbo8+wPC6
	 n6zNloIZNSPeuepyL7hNT0YzVEAE3wJSfDExMHNXU3YCDFb/fcjo7Eod1rnqwKOK1l
	 /jHU9KrKT713wjZtHQC8kcHbyFqfzplwIRFZmdKVCIYpZN+9Ca640NsWkJxDMvxyRD
	 avwGds3DW2BA7GbCdGlBCNyQcD8enhZ1QD4HSbTUIeV2qFYENJVHkwQlMghiLMi2RT
	 wmIKhxK00HkecdpnJlWaQnJ9nNuEadNMxivI9CvC+lw2aefKdxr5aWPjA08P7ft47h
	 /6X79OHv5l77Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F04D12D4F
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173126435359.26990.13699092715720578013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a854693afcc9726f4da2f469c7ad8ef919a8f1a50c85e1b302c534299ba510ac
Date: Sun, 10 Nov 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731264353
