Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C18142E7C
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731995754; cv=none; b=g1OZ8nEcJbmc3uhmTGzjPGaWixG5DrIKWsySc/YQ3FluOP592GmLVhPMOZ9cIoeyb/B5aSMO7CTInRjWVnzX+hviNBxAajLIHHXT2TlhWLrymz8mxBwNHzHbVdhK23CCBBI0k8jWJbNKrEQjNRttIo7bDB9OkuNAP7VcKcTnsXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731995754; c=relaxed/simple;
	bh=n25UQUmeceSOWjsIGh2o6ooutsdtM00be8clSce3eWA=;
	h=To:Subject:From:Message-Id:Date; b=UlL6hMmTiPIce4AuHoRoRH8X/d7bBzWztyI30a5ndJBP3VirdYtYFguocSGP6q0FMS/tCenwJPbJ0MegsgAlDeAlldlf0RqaZhxoPzm0nZhVylkY0WqWwcSjJR2ZymUMd8YfgifE64ywcxVATXDxG8u+SoLnbxwl2zFjUQlrIsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nrTdnKEZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nrTdnKEZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4AD4C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731995753;
	bh=n25UQUmeceSOWjsIGh2o6ooutsdtM00be8clSce3eWA=;
	h=To:Subject:From:Date:From;
	b=nrTdnKEZgwcb+LjGp30VRmA4BcQ0H2AIdiYJjCoLQTfEK9EgHa5IUaLRDLm6KdMm3
	 LyNIQXubW0UUSjO8HBnRBMZ4JVrJWBcyLWTloTaS/lK8zgHOv7sMyaBDWdqkWWKnXl
	 nRt2wMoFU6Uy+6/sgnbzOYboBzHaRm/50//CcybtDnaV/J7QlMh26zp0h9eERlV8rV
	 KC6gWZRP9qoxWWKdr7fCCRgEGTU36BZFiM/6FoQ7izrMu0Mk6ukq8nAOA6k271LyPE
	 himUK4b7kLDOx7T6gwyCrILzt8/t8+xVZEMHBjKOo6Wg/S3LRAxHyXSb2C5t8+nmHI
	 Jj5jbM7V6N/gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EAEED4920E
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173199575363.14595.3997182229199254484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d761ded4fa42d3199d0439e22f4831c776ad3a34ed6a5a1a9f722d0161f1a4a5
Date: Tue, 19 Nov 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731995753
