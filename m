Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 470E51DE2A7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750221594; cv=none; b=ol3lIgQR9AWSfWDiuncA3Qw98Z7dsIO8IxYTqCWtaU2BFvRp1eACNPByNl+2MWhP/CJ50m4+ZjxicXaeAYJypxlmTHlrcAZiI2E5yxztaMt3EKlRb26wfTfPIEtd6JHTlfQu4U3qi6DJdMlSZ/EICuD823nTU/wnlFXzwGoCD7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750221594; c=relaxed/simple;
	bh=ma4oQJLzpbAFl/AWwRo9Mvrts7EowJyPbXSYygkWOu8=;
	h=To:Subject:From:Message-Id:Date; b=UJ3lJq4B/5x1tqjnELs9qa0j5wl70LWsR18MyHTPI4VzmQXa+PD+oLTCsoQYNazNMpUTa0AvzPeNi09YjvfrQj+InF5h+dRFLqNqbhsjmSufT221Zc1I4QMNJXA1+Kdx4FrzopaJF97EMf4PCTjPLZ0HJ0JjrFQasKMoo+FsF2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lyOcVHg0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lyOcVHg0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5EA3C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750221593;
	bh=ma4oQJLzpbAFl/AWwRo9Mvrts7EowJyPbXSYygkWOu8=;
	h=To:Subject:From:Date:From;
	b=lyOcVHg0h3o83Pe9wqxAPDDQzEmjocIwO8zVL2+pzpZY/lTuRBgojIJu2LE8ry1fp
	 Wsoh0f0OPBMVzkHruXMkaya+Jw3GSsFtSddn8bPkF0qn6uFxOhXebG8o6TeHiagO8e
	 peTc9f2xFAH1SrxrBNdSFkgxCUP+GFX59jZRS1QPcpvSP/MVjCErQLo2oXbi7TIhsN
	 6c8hwyfZC9SG3RrnqHBFyFot/+YkKDHfM48T2f3kJMv02ILQVfBOxOVV9n9RAU/t+7
	 cW8PE3Fucf7fm/Xx0SVBW3lrfYjPTkchN5Bn4+MQFDc4r8q2/oy8H2LUsybBLu/IJB
	 /DrIxZMsSYoHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0C11C7115B
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175022159365.17232.7046594959525863276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c08b78b318f7289d880e8e37d3bfdd691a40d7b4296488ffdd96b0364a5a295e
Date: Wed, 18 Jun 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750221593
