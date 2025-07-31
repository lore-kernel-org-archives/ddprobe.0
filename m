Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DF781DE891
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753943394; cv=none; b=IB2KDMf5d/UZfDWNk2aLUtIbHjQZ88WF1NRmUepGRCJZNozJEStbjKJP1sp3KJLEtYWAu+J3c9yD6vFkfK/MJxKDkSQ2FPWOJq/QLGdueeX0IXwG0T32oAhtgHE8HKJOUms1zl0iz2wCxhTFj2y9QViQK30DE+1s4939I1g74Qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753943394; c=relaxed/simple;
	bh=TejOgW/Ljxx5GKwfn1+65jkLDTp6Bu6fKyI39SvRU9I=;
	h=To:Subject:From:Message-Id:Date; b=btFDcbmwUhqjP8t6MGKoAygb1bU9fULmWTuqofVqueKW+ezzH5yXn5wIChAuMIITeMoR5iMqkA072HayIFF2VlIGEvBMNSzV84aYmrdnVYxtNRh2EICOX9lvzu+zfM3ixjYYpXsKUMiICBJg4u6rCgkKRIcek+Ym/RFAmZSEbPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mxydoWAd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mxydoWAd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D93C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753943393;
	bh=TejOgW/Ljxx5GKwfn1+65jkLDTp6Bu6fKyI39SvRU9I=;
	h=To:Subject:From:Date:From;
	b=mxydoWAd3CaGsHL5rbfVD/aBIG86CxVH6JXwBczlnLCh0iEbwu2KRmTsiEHNSbTm1
	 M9mIkm81IsElicXcxRf0sjsohhOZz+X1ah2+g2SZl8KyOPMpkTGNxV9hiMqt3EiQYa
	 rovof3m5iE8ziJBwPmOSRWARos/SvtT67/l8Pj6GokTLENbs//OpnB23NCkh4uvDoA
	 bTPd64m4KMJhx2EUhUFAype6wXvzW6d4qxODLaiIDs09YWl3ANxPY3DtHBHJJz+lLU
	 sKooojzA+i3pZk1FD/fVQdTXizs+ktmpzl+B5bUg+qrFUU7LrlvrV6/sJW05IEsbGi
	 ai+2eIBidD7sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CF6C83F17
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175394339360.786.9399759047469099830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdac34ff45758a0e4aa6c3f2ebbcf4f52de4e860078212e068e80292a3cf4d36
Date: Thu, 31 Jul 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753943393
