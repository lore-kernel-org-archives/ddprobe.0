Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C87B29AF
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 15:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708700897; cv=none; b=V/3mV/c2B/K2eRoE9MTne1tMuXQhro7GxX7Da3NDbxrQp2TCqbSUJYaniCWh2PPz5HhmWa0IMLXYQHy+BTeOODgw1HxgIc2WBYEUCNeGpWMGFV31Wo/qcYueUa57HHrkYIMqlqVjJ/Vj11fJmyjYzOdIYSd8oFKWvZ6aVlkUrJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708700897; c=relaxed/simple;
	bh=+gQkx5ODN20Z/R2PH5P/j6I9ynX8ESqdigjvnKUdpek=;
	h=To:Subject:From:Message-Id:Date; b=FouS3RhX4dc9z+2h31igUKbvO+ZievFuqaW1qVhPrvdmrErw4qEEpizAcNFw1RokRmflqLr8x2eY8AGCqIOD+vWFK12/8HpReLaZpMySa02/UOD5Bb8xvlAK8h6Q187zAcaGmUbWxzHgqFdiYuqkxOzujuWTUPoBsnXtOck/zlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZGF/fXE7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZGF/fXE7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FB87C433C7
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 15:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708700896;
	bh=+gQkx5ODN20Z/R2PH5P/j6I9ynX8ESqdigjvnKUdpek=;
	h=To:Subject:From:Date:From;
	b=ZGF/fXE7LKtfB/SzZp+R/AP1KVWmn4mYS6MB7X4O871lDZ9+LEiywkNo/gcAQ/kFZ
	 mx/FCSXlDK9b09HHpwTydkopb6237nFkzjJphIlXMuLIkOTPhRqw+USVi04d/VjEPX
	 ocL0H8XHIpMfMdMF09P4xOWdRqivttcz6s0/7qwvoiD499tZVMdsRKU2lklGWLqsZs
	 Qldmo70e6SLCsUab0IO6xdZE8aDTOL/U+5xqsXLKCuRu7lf8BFfYgmd1u77Vekhsms
	 dxEqthqfgRW8Cax7YubrdT/h6HgebjDMaXpt9L71CecotLkydib/t0ChytQQhJ/M9k
	 iEoNzVXA7D9DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66925C54798
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 15:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170870089641.8310.10118144603369957775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a11121c86d8e383a9f567e6aee68e1aff58ae86429f7e27d5b9967d7d85b813
Date: Fri, 23 Feb 2024 15:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708700896
