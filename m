Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 074C433F8B1
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 20:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772744094; cv=none; b=YAb4r7/Ym61PVY1Ane2FrOWfHCMD8TyTCLFZJZgkQ9rWZKN1ayaOcsxSXXEo8S1Xs2k0YnoypsVkWjDo55ImaxL6aATnOWIdD/oEEw4dsStUFZoeyp1x429Lw1+ln4rWBTLLS3uHLfBBGnxcUZJxq+DnM91e126rM+XPC63ZTOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772744094; c=relaxed/simple;
	bh=97IBR9njEXMaeHZvI6rGZAyD2eeUx1CFGSM5nugEAuk=;
	h=To:Subject:From:Message-Id:Date; b=T2o8ckB/dg+eQgxK2J2/vYpYsDQYcqh+QR9w86tTqRRVP/q4uo1nJT9ik/lGw3Q0HxrNH0z7sPFdyOEHxNQ7tfGkFLYesCqGwK+s+yWGkiVu/R16A5ejbm8cUZwVFbsrUC16yqX03lC76veeZ3VWmCDS9XrOe6coGTJlATAA0KM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pzLG2nsw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pzLG2nsw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36EAC2BCAF
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 20:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772744093;
	bh=97IBR9njEXMaeHZvI6rGZAyD2eeUx1CFGSM5nugEAuk=;
	h=To:Subject:From:Date:From;
	b=pzLG2nswpe6o4WQUjAq8sw9d5NuB1N7qLHzX1T3WzppingYAE59IjQUMD2DIG6oYr
	 RA4woqV8qSFL0jIg7Z7R9MTKhQId5+mclEtHKlcCNRFgF7FcnKAd5XdvPvhPKCeQLz
	 7oTa55XAXEfnTOyF7dkJIqFWowH9w+/ISH4yDT9dIwPKQVIV3dutn4eHYKhFIZ/mfG
	 JptwuD/U1tageaJCNF2OdIHJLWFpSZDR6+ZC+pykdm5SgzYMkEHCBL/+ZNGrI7llz4
	 9Z5Elmu5DDQnfP9TBTWyaPL03QKx4u5LcV+P7rQpD6iB758DPE3ISTIi1QRMcKdcik
	 MvfFX8O9lsCFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC0BF47CD2
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 20:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177274409358.24572.12193601439264689327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fd351d5cc63a805f9ebc527d17af4c9c5ccd9ef4450e6bbcf73e796192edfad
Date: Thu, 05 Mar 2026 20:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772744093
