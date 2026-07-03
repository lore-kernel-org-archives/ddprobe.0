Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F813090C2
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 17:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783098514; cv=none; b=UHr9vEK2oGU8384GdnuOBRCZlHo3tqngVjsJA5hIoNrZgabZKhLe5HsDTtGobQbJ7J6oJQQjiTs48VXbS/g6yxY9lcqjJwQh9Ia9hURH1wJxwXD07jERm4F0Q1mY9EH8b78KTgjH6/sjXlpH3URbi6O8OdxX2yndrHc6Wk8yUiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783098514; c=relaxed/simple;
	bh=ol+pNdVml4uzHcPvbg+sKFg1uGm5uxdFBySRybI3QtA=;
	h=To:Subject:From:Message-Id:Date; b=XR1iEAKgpBo6mTCmxP7zFS59p34ZiKAtq0zAdDhoczucqwInY9QjYst/ZU2n4nDHVATWhvgdo5mngGeBB/87bEjB2ZivP6zuZCUdRxVd+LG43svMN9c09tjl9K5sMCsnTpKjouEmM5Dmz4bYeqBcfCKfk6L0gXdvLmaWOuOWqtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rHjVXo/G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rHjVXo/G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA3AC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 17:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783098513;
	bh=ol+pNdVml4uzHcPvbg+sKFg1uGm5uxdFBySRybI3QtA=;
	h=To:Subject:From:Date:From;
	b=rHjVXo/G4zaOtGhpY16wyauMZLCaJFnGT/mYaaWcldCKD6638F83hnpd3A5jiF8SN
	 uMuJJb0w7iU2mRg6upwAFQplgYLIAJEHHuNOV9YbvaglswE5y5IsVII+x/Hie8zxa5
	 Uvl5pFRHwL5oXV9eKbgcAORI/EnXJ12YVx9AZL9ZlQXXSnlATMWlxhIOo9tSipJj6F
	 ESlnMvQeD6IAJxBieHD8oM/MTF8qDlC+NRq8EZq5fv5bwNL+G73o3ifzemXeWCk35r
	 1GtXPuEDgKsyJ0um3A1dwmqQhikGrNgZHlOJcjZqD32AoHASpnoIAQ17hzFKCTlAcy
	 +lYBNOvhOXHFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF5AC43602
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 17:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178309851368.26131.15897615544967820550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e33de32c964fb495e1b28e0a9d4049bd01e3af42476549238964d8b926f4dfe
Date: Fri, 03 Jul 2026 17:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783098513
