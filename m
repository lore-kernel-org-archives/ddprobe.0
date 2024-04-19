Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FDF77BB06
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 10:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713521363; cv=none; b=ZS6zsECZVXHxX+TGfyP9u4sV6GSKh7vILZx4hR23k6GNpAVJmPIwmhYVrxGY/1x1Cw+6qAdkFF6Zl0e5YgZv3RNZPNjAqG9lNN6e3xub+YVtcBp88veo10XKuSK3uVsy44WUlLPl2F4bihsqy6ODJJTzvi8cnmtLgwkfeBogK/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713521363; c=relaxed/simple;
	bh=Fp2a14FlNiyIaYzUvZDeSVgzfDcb5JGkivuLUEOVmOs=;
	h=To:Subject:From:Message-Id:Date; b=P9Ho6ltkhVOefjJTvyD872AmRVRZCbGL4d1g7g7dMEmfmNU9ah6w1E/BOtyg+ZBRMBa/q2ItrFvwX3CBPxs3VyK6AQ2jlVKNPDk4Hyfp6Jc0mnbsY0wTw0nMLEREYwC1ileew4cLWhkVXSlsZ2SUyGPK0DmziWxRcCJKUDoeXM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u6wY+UdG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u6wY+UdG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2AA7C072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 10:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713521362;
	bh=Fp2a14FlNiyIaYzUvZDeSVgzfDcb5JGkivuLUEOVmOs=;
	h=To:Subject:From:Date:From;
	b=u6wY+UdGGapb4mhXD8lYqcybMWdNTH59MVAvjW+cSakQXgELfJATt2eCIsjrzcnQv
	 17c+ckBnc+iYpG7yFR6D8BcpW5gIsn1E0RquU9m9Reo+q4CWF3DhpcGQmP/8+COSGi
	 dYTyz8PkUyt8wefUA8XvuVUNI6NBvBU1XjEFbDBf0htXDs7p+07REqhTnChN0wOX62
	 50Gmgg6kT4Crzr/K2wcbPt8PH0Z2zlHrb/NMekiPuIbEIDycKH3I0MvEiDV+lcv6Ng
	 ymXr/h58pF+8SUpIEXgiPh5zA5TbKpKgpzHfMBjEubrjKVk+CgtD9W7WptY+gxsbOD
	 9M9oYwIZn+0oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C38C9C4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 10:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171352136279.25939.8079182771660798087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87c92c04be6249cfca7f677f37c202c3dd82f6f29dcbd962b429f7ce2f3e6094
Date: Fri, 19 Apr 2024 10:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713521362
