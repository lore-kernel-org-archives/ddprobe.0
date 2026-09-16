Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55F033E1CFB
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789540234; cv=none; b=Er1+MYGAbBt/hgQ1UST7Nm3iKqcpjjL9jUTNuGrIvuEzMoD2HuNascMehQI1laGDiCgutrjWbjoXTE2G6xcLqUJDromxWHdrWkVlBI2RxG39mUnoM/gTorKUF2H6kInGNBCezfx7vpHR1RLVC2HMIwIpD8eEyHy+Fxf6/hWfKtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789540234; c=relaxed/simple;
	bh=75e/asNu95HqDBC41r8yy9/4dpGnFbytUrPBNjkHIOs=;
	h=To:Subject:From:Message-Id:Date; b=toODptEycqcDV7zo9OzoFNmhpfi3CwMjOvY0/CNVuSZ0Wi9oadfmEvKHMxEag4MxYI3/H0Ms8l2gBS0ypgFklkj0CdYPBbX/W0iIM2XbcagNYGftVTQaYBfuEPG9aXNU3CgXOMVpFswdhoKZLwvxaFqIGBPOGhUOhK/b04AtHuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s2VOPtUI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s2VOPtUI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEFD8C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789540233;
	bh=75e/asNu95HqDBC41r8yy9/4dpGnFbytUrPBNjkHIOs=;
	h=To:Subject:From:Date:From;
	b=s2VOPtUIsaqDlcG40enknHKOTzG/qxFoYu7BwJBfiGNiiFczMKYMaWY3ecJdSUA2/
	 55Mg19zQb5pUKiLOkYYDrRIsWF5bs/dIZhrPLK4q3nwEl/G/LOQHCYfPDjuqm70vxU
	 a89dkXY/cbCh69kduG4Jmawsjc6OTZ82g/IrveTSJNX+PL0Hjs955yhiAUyczpr4yi
	 9N75lIGytu5gARLSJZMqzzsLb4tRT/C1iQa4lk4hschmof3aAbsDMGNMKpZ6xgxcya
	 Lg7FPk2MlHntPZBJ1G4i1g3QNDTUJme1+zLxI71vep3kyK53RzaRN7Th3vEsWI+1nA
	 5eVkhlRpZyABQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2B9C88E5C
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178954023368.20608.17810593811332049908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd242d02b0d5ca5e05b8b87e02def87b4124836b9f820968112c37c5845302c7
Date: Wed, 16 Sep 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789540233
