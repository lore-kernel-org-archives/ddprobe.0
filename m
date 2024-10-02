Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 173142141B9
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727895354; cv=none; b=mlTsvc2bWBBkpgo7gS9PK9P8V9MyXHPG/cfVkO+2wz8gH4DaEcmrPV/UbbdDO3Rr8qruOYr1cHQiU2Ligcgx55nOHUhEh3WSmyoLBd6+mtkVNvhGvjnVWSWE9FzfdSZjpGB5DkDF1zd1YAdwmKAudKlG1zi9z1M9xpddzuEdFlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727895354; c=relaxed/simple;
	bh=39/U3JutanmOufg+6ZXUhf0kEYqAJPWOrX7MHszjwe0=;
	h=To:Subject:From:Message-Id:Date; b=iizdhw2dWHH5L7nYJG9XnRp0t55PXEQyngFWWqQP454VBhjabhyP5lxxC8C2z1TEVtLyY36Op/BHkNoc6QvqTX8yyYJJp4NOQBc+NfZVd3cV0kxJP3fy5ltitlZKE5qWfeOBjfkLs3MpIttp8AMxulm0kIe6bcRpGj/+NQlh54k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J/D+AsaK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J/D+AsaK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58F8C4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727895353;
	bh=39/U3JutanmOufg+6ZXUhf0kEYqAJPWOrX7MHszjwe0=;
	h=To:Subject:From:Date:From;
	b=J/D+AsaKU+ED1eTgvqVA6D/L8c8pUSznqzZViIvFCz4iQbPTMNaA8Q9HRF2KueIWc
	 DJeInT+bR7uHWSMDiBF14qb8gJsdCdxuLLgCIOw1Lw4ZrGe7XRjjHEfvmkXGSIHZtk
	 WoGJSV1bdmK34n4+DqnJEudXUWIb83PxwurAkqltVBJ8qoNlbsUdjFoQrg2WkHRp6Z
	 NHzquTC0yCmRrULHVorNNDWWN0qqgLLLK2codmb8pOpdH2SrQBYJcwcc7QW+0g8Cou
	 ZemDjBz576gUVTBsSWOQKfeRxpoJwJT/OFd+f2DG8RGgCpTrsouOuvnUz1MgCKCXTD
	 fhXGiuQQnEIIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DF6CEB2E2
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172789535360.26197.7648039396907295983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbf6f894d734ffe78d0e8064cd1b69d6058dd7f726eee19a61fc2033667c2ced
Date: Wed, 02 Oct 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727895353
