Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 528291991DD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743755994; cv=none; b=KLU2ocB9MAAxhCONOOdHoMlRCKtGHrXpEUIzeeJRELTH6WcB+xYxjF1UA05S9fH465JIfOsSBAdOFP90rl1llYo1hW/1ETKWYtkyLTGs8ool4TgPHuixcOjW+UEc+dm1S3aTPNdcjbW3JX9Y+zHWZ2dt0cJc7aemGrUtF15gEhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743755994; c=relaxed/simple;
	bh=ke6cp6pqmYSjA882crhakYHZjhO1wxtIebU8rd1z3gA=;
	h=To:Subject:From:Message-Id:Date; b=KxIsnsIUUB0rNxAn5JoD35LjdiKDGuD5+svEEFp4PAv1iRuL33Igh5BfjUByqecSsxLTFn8TInVbD9mG3lgpuzF9x5E5+J/hTwHhfEHZ017AAsNh+KMC6MZH898wt/WVvtKmuOnrlr5Q/XbDAibXJE6w6y17tawDh28mjIn9Z60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=azh2K4UA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="azh2K4UA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8400C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743755993;
	bh=ke6cp6pqmYSjA882crhakYHZjhO1wxtIebU8rd1z3gA=;
	h=To:Subject:From:Date:From;
	b=azh2K4UAQrApRP8EKZIOzl0Gw7SEtgk/+mBYuEKmXYY4l6Kzu6qmeddGpzFv61NZD
	 d2ynf1JTLgu/MGBr23kiK1/44HhQIxg1VgQFPtJT+Jozj45Z0Brq0MuqI5IjQbq1CN
	 Gi4hfqnfZAObbPA9PveDyEvFdhH/zohjSrIjwGj1dSFqy+9xNVn1WeYtB51fEmflXL
	 kMP04UL6Kg1rZbEjaysUum25ft+QVFxITZOf5euKpxT2Xh3iZ1V7aZfSXunB02P61u
	 Qp/AIg6epyDtITcFah3D6iCT0fSARXt26BdOAzQzXHFgeFLFxW7Iv9RtCorF40Iiv/
	 5mU6//WIqLO6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E5BCC36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174375599361.29206.5624654855493347688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27e011e082fb14b43742d99ad254de14af66f4122874a7f1061cc88526bf1bc2
Date: Fri, 04 Apr 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743755993
