Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D5F2F363A
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758073794; cv=none; b=NMXBgCo1OrJD0O583XAtxULrkWrvgrmgdhcyjZRC/SAI+SZexPcRh80wdZmh8rXD2fvEzleGp6TxHfXIFZJIbrzA4N2GPN2k8fnahePy3WZ0MspBbMK+QKeUIuyEhBSlorXY6d+aKQgDCwCSjmQoZM2reBmiGojVrmsaF68H5Es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758073794; c=relaxed/simple;
	bh=z9aHdrJQ4JRszTCKK3aFkLa9blL4Ng5opgMCb96fqvk=;
	h=To:Subject:From:Message-Id:Date; b=JLF6ibvDp/wbSdIotq5787HyQpD8B1EH5oIdic7LvZDJtOKLMowjcNz59HbVe97JT6dg/46p6ryZDErroCoUiIqWKEJC4WqfvOz/+FOQqVFVNfcAocLx5h5laCODH2m0Cmu5g94pESTpqrSqF7w8cShfPUOaRDKxKBA/suImRGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xmou3CRZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xmou3CRZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EDDC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758073793;
	bh=z9aHdrJQ4JRszTCKK3aFkLa9blL4Ng5opgMCb96fqvk=;
	h=To:Subject:From:Date:From;
	b=Xmou3CRZT5HX74bYpO+iug90IVo6E6Xzovsgr3/+RVPyHXh0K3sJYNuuYgocjF7KK
	 8tfn3rYVxawDtDW7QQousBtXrgqcHbJnFBPEMjQlEnyX+abozosHjOUu54voEDDnzu
	 iZf73DrZaFWSu4EJSis69etO4eygWmL+zZ84f82/g6rgKt4VFgRC9pWotuof+hNxm/
	 ng3vFHJZ4+MYIDkX2Ge4JKADUsamNsj1kXc4Yl/Ad/MrmwpSPZ3o27Iip5COhFn+fX
	 zcTiXISLTKQi8uv2z2iyxiQdeIvmQDaMwIWIDXgKmnGoVE2oXuxItOhCRkhe0+t5K9
	 BugmyFI2pQAKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9404ECAC598
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175807379359.9208.1012621232719306248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b2d16d6387475b987faff7937c906dadc343231af2d6dfbda69b14a2e63ad87
Date: Wed, 17 Sep 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758073793
