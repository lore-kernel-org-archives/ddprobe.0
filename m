Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D03213DDC9
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 07:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719559463; cv=none; b=lZ039B0MOrQk5MVFOvZlaPGn2HkQD6pyZObD79QOmp779I8MG5FLdC5i7O0I2aNd1TaOGsTN4JLSC9Nm/j0nXLa2Ra9XSpnY1TF7oDuJPYUk3zz3mH/jmFvHLrYute+qjCcDctExz9xzElH1q0lAeaBu9wDOhiyqDLbVLcpsp4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719559463; c=relaxed/simple;
	bh=hw68Yp/Vqt2OHSGVruYmME1mTt/wQXqSYar+FB4hI3g=;
	h=To:Subject:From:Message-Id:Date; b=kQ3dWSSX7wRTjTEtXRKALWzFGYHRnENtGLwBeqwN4m+fEgOTBattzV+y3aAAYxSN3Cs1J9gSIzLRXvFQX5WHBsTasAY84LVTYGLk8o3sV84aRSDYVwUSIzqrlsWP6UVfPflM6i92Fpjx72yQaejAeR5Dmhgqzuc3KMNFt7/APDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wasjzseg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wasjzseg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5783C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 07:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719559462;
	bh=hw68Yp/Vqt2OHSGVruYmME1mTt/wQXqSYar+FB4hI3g=;
	h=To:Subject:From:Date:From;
	b=WasjzsegrAhURG6xi/lQvw5QKgaVYriZBJZV7mB7r9ShjaoDla8GN90lS2FOi6Rt9
	 6PNdSFXW2F12JAsTlq99dvu3ZvBr2gvpGeOtW8mI8IwL78zR355YozLoNRyl1RWuD7
	 OwTrMtnoF1hclzRyOlJ8dQvoCEYACIBzoI/C0c8bNTT4wQK9P33v9ZcEwxaaQQXtzA
	 08FGhOoqaU04X4wb9Q1LyswkHtmDR75Z/ORZi9iSXxpAlDxCr4yBwu9FA9D7sqN5ZQ
	 ECzyCDP8yO3KAmUCwM+R2taw+oeuV8T6+fi3BylNYOlcF9ox+TzqCyTtVcZgUHNxkt
	 8iFrIkErWULXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C15C2C2BBCA
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 07:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171955946278.19270.8345551199850189881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ffd2c5698d8e83424495c63d2a4043493d2a73728e01e793c8441eb5888d9da
Date: Fri, 28 Jun 2024 07:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719559462
