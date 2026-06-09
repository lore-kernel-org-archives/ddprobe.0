Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7180B31E838
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 03:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780976074; cv=none; b=qG+hh5i61oXFSagho4uOoq6HCBFos0HrXQ7bmSvYfoXDMqQh1Ss9V1DkIZtwBN2W3ELSa66Nm2aDDJmNmAeTWrGjdRspsH40R+7ZpO3e0TbyuIpyal6WGPconXV6bJT1HF6EVm9pHlsnSjTpx5+SxegbHAIYcjqX0pYhmFJskPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780976074; c=relaxed/simple;
	bh=Nbtfv004y6BD0eKXzkDQz/tueLXCTUrZna3bPiftqTs=;
	h=To:Subject:From:Message-Id:Date; b=NEEbKr7Z+1D8m9udGIXKlgvLEaF7JDjDh5/iiD04ZCPCiuZ7cHAICLHjP++oAhxaituAigo2PXUJIZNMfN9WSpnbDvfgFQQp6XDMDlfFeyHCPT2M9Bk+jiVL5L4Fjzd8qFZGki1kPKC7agZiwDx0nimAfShURrlXgdI1Jg2U++I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lH8DfWSO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lH8DfWSO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8D70C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 03:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780976073;
	bh=Nbtfv004y6BD0eKXzkDQz/tueLXCTUrZna3bPiftqTs=;
	h=To:Subject:From:Date:From;
	b=lH8DfWSOFfFS6mXTYoPImxIi91Slw2aamdQoveYOYXMJrMs4aB+sRDjAqxxvpNY6Z
	 5wJ2RRkBS1DXrptOlRV0Pwr9JVj3Z8Tpe0vcn5FtF2KZw76gPtqlcPExI4fb0F1Df8
	 DhVEAa+2GwP2jRJoAGedFOBxrbbDnvvDUsCD3d3o9dqOhqSku7elZHEjlKWuPSyZKX
	 exjZYTyDTL56NSmRMPujwqhx8QH9PrZ8R4OQMMgLFFKXq4JlSYV6qX8OfjFpPGgaEd
	 sHditBtq6iXWRtk+qit+lPS6RRAutbttCfuqIB3z/dkRM1dr3i6VjRNO37A9MglzZ4
	 3wdqMS/rslXIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0516CD6E79
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 03:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178097607371.32284.17168495161387865930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f27109ca68c9e080e07b1e8a9e1dc9620c943f787fbf83420bda44e030238b5f
Date: Tue, 09 Jun 2026 03:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780976073
