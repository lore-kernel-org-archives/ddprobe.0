Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38CC217C8D
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728095754; cv=none; b=biKjFALY2sWmhp7TysrrZN1eiixnOdKhUoxocgiDFCFbt9ZaV99+Xm7CcZuaPXzaZA0I7Qh4miY9JupwiyADolP9ACPtAzs5AcEWxr4SyQXoPi9fTUiM0sD4rMNIZrj47yjvydhmLwSB+ZbCds9zTDRtsrNaN5pW8su4zTnnU/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728095754; c=relaxed/simple;
	bh=J/pgJxw3kBepOdINCOl7TtYeML+Eij3O2bS4b7+7X2k=;
	h=To:Subject:From:Message-Id:Date; b=HwaSbIdoa4MkkwyOUN15ed2cOCJL6IFlSDBeXdrcUPor7gJiD7OULvTrEm7zKm0g964tbi8JLhYMuwIzJK+qo6vDj2qFbm92YUAU69i02eCMQYUr65JCg+ZVxC5r4W/83nIlKIRh1Vmi+nS9HmPFefMOjw5xYQmRc9LNfc5tW1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fQsXwhys; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fQsXwhys"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE0C1C4CEC6
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728095753;
	bh=J/pgJxw3kBepOdINCOl7TtYeML+Eij3O2bS4b7+7X2k=;
	h=To:Subject:From:Date:From;
	b=fQsXwhysU6/rn1yagLrVQIEWE28FUqP1sgAFaqaBjYXrZHFuMyHy+/30gA8NKq6D9
	 v9OoOYDBO8osVtz9X4op1G51bzuvpNhgEAzEkBxobDArga/f7wIxclb/Cmuz+CoEKn
	 n5fPMZ9KHqa2uw/1fY3NioQ2hHaDawXBnCPBgmuQK9XzX8w8ZWyPuipGGi1fx07k+i
	 HeYfeHeRmrcL7ln9fWzklNUuiIAPqN8COHWRGjN3t8pB/xW/FjryhtJ8v1ZiwnLUdz
	 bZtACLcfTERPWtUGIEmV/Zp4/tN6v5Eu+IAg8BiNdkx30rpk5y83OpKSAHC1bliqiQ
	 d7ecZy5kjtWHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98636CF8869
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172809575359.3209.7564827048966541222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 860edd6ededcdf1eca228b62559e14841f856f1ce49a21bcf040d589061bd494
Date: Sat, 05 Oct 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728095753
