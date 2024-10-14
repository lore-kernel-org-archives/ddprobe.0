Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF06231C9C
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728908754; cv=none; b=pQsSREBkfB4iyI1T5cuT9nZ0VRQSRo0y7Xpo2OWWjvECrtK2l7eiwIgnida+PPeZVPnN2h9dH0FSQEKmXhfCHqtM3poYFzzF+9466o6rvFEPe7OqQ7tbffVjuWXYtuDW/ncZxfOhkTEWqP33/djs7wdv77YY3lMbi0MchZ+qWAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728908754; c=relaxed/simple;
	bh=deUCimw+ZJ0niH5JIu2knA+Fxk3QFq69ERYL7/gknb4=;
	h=To:Subject:From:Message-Id:Date; b=VIRqmTtcVLL9bQLi9EWUiNW3qpDgtphSfBl8kyp25u9aDnucBKUQpMuiqzsvHIAqIxY5yiUDtZ1KegD5A13dlTC5LYE1si27eirsrfsAKTw+U8kff5n1MOhb41jMzhP6IajrppB++lXtRPw6+cd7Bnd91gsJmXgqn6DllsD1HyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WRCXIdkQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WRCXIdkQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B54DBC4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728908753;
	bh=deUCimw+ZJ0niH5JIu2knA+Fxk3QFq69ERYL7/gknb4=;
	h=To:Subject:From:Date:From;
	b=WRCXIdkQ+2xdGLIGXI1n5HdPkiHaau5DOTcZSVCdo7EtuK2Hiovq3uJgvRSjeaVYi
	 ZdoTyuelwz7Ejd0kCyHbAZgSlhH3qJsEc2LKCFDkUQ3kD9fF5+PYMAzaONSLjFaUa8
	 TzndK/X1uvKi+Iai0bLH3zCToArfVXD6HokrZ7/QPHce84FXL01shcHzR9jvM3tI95
	 h6SRxBb3YnnPVnZfOAHDkOdL5H/EsHs5rsjLjZhuvy0p4kVfQSU5HQSTP3G15wq7M9
	 BVVe+VP8lQ5xotQ91AejHUmb/V0BFjzO8iIGLU3QD+7Lz2J2SdizaaD/MICS4+oFaQ
	 FrIt41McXadMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B4B3D16252
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172890875362.10748.2068567366232805080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b840f7418df1e084a35f4ebb8bf091efc0a990c02ad318daed323f53abb3cbb4
Date: Mon, 14 Oct 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728908753
