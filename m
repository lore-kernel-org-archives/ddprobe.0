Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C8821CC4A
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742473194; cv=none; b=qGRwji7CONOnpgPvrVPAqcR0FAQ5LdMfFAe3ay31oeuLv8d9zboXSekWUZj01fAVBFmOvrN2NY6tVBtJudbb41f7Bu+RLvfQAT9WxhbTDD0RhElXXa5L2GXXU8NbpIeV+QBnNMNUpmPg1skJyzLH3lTOPqKsEB9Bq79s3ywRT34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742473194; c=relaxed/simple;
	bh=5WZb5Vj9uY8mrrTgMJAwNbYTeOALp1vtSGP4bSfVuqA=;
	h=To:Subject:From:Message-Id:Date; b=V/2+IzJJzqb/CYeFRKhX0TZGjuUhUIguSkGJg+HohreRXHMgZxQo8fidxGIhbMC6pZjbaICCgFpJtzooYzf6OqyDxJpbd6EEnuJug7bh5tyQOQYPUJHayaRtEj3hvTKdduy0ydDTAFDnDhziSws05uzuF4c1WuLOY2h6fkRGudU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S7Q6kHJr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S7Q6kHJr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA347C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742473193;
	bh=5WZb5Vj9uY8mrrTgMJAwNbYTeOALp1vtSGP4bSfVuqA=;
	h=To:Subject:From:Date:From;
	b=S7Q6kHJrUNAsHcinnLW92fXCxHoU5kKWZHg1NOdr9A8wIPKhv8qk122f7dOwJfOVL
	 S5NBxC/TvQdH0gD9fGA2pUS1wuFjiIOjf0vKHsENuJQ4Aif/eGR5MIErQ57QAJs4kk
	 8XhY6a5hhRUp+x7w558Eoi0mj6ILJwr94Mf+VtV0tNHwPiCmT8L06ME81CCqSfiKz2
	 i2l6DaaKcmoMtJcAggvW1kbUB+3HoMQ/1ZAKRBZfX5Xg5j7FSmSODWA98kdTifYVR9
	 gcaS0VfHLF8buvbawJUlz13D6uJIIfZ83sPGq16NY1c4H3eV0RCM6mi+fWaHY7mNDu
	 hFtn8YVMR3WBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98799C28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174247319361.7326.13608125344093426251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b85ff39d8f769fa4a03aaa5cedf814840835637e1483ca271ef2842f1a7fafc
Date: Thu, 20 Mar 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742473193
