Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FDD228E7
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742597395; cv=none; b=bcdLc8+NsICtDkZzvRmbM9wULqp9ExGgbDu0I6LOxeiT9bv6HxVoVM+PZOcJ6d+xTaZ/tcS1y8Y7QUy0gfagsg6nHnQ1tuZxFkHiFFOGk/OGUj3i0OYd1DSEvXK6x5rJk/z0RxVkmZPVwu4KEgFYzhKNpOT81aXUEjDff2m6TJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742597395; c=relaxed/simple;
	bh=Rbh7DPGKICXk3ntbTBC6vLwGpPW8lFpPnk1Ubd+1U3M=;
	h=To:Subject:From:Message-Id:Date; b=RkzQwaXLB6WWJgD6Ha7G4J4V15Jk55UTRzAYkeS0IibLXg02c40h1xsgcHm/xRQNjUXdwlkCzG+GVqbxr9G8lea6S3xgp3Syvw+HP4mD5/qxeqk83looxxfHHC6Ako06X1FkUTkvqoKC3X7hDldXn5WVDEvhMfyTOAv6MPeRbXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UGgAfVvW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UGgAfVvW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE94AC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742597393;
	bh=Rbh7DPGKICXk3ntbTBC6vLwGpPW8lFpPnk1Ubd+1U3M=;
	h=To:Subject:From:Date:From;
	b=UGgAfVvWD2TxXJEMIVaJHOVwNZKn06394yj4pJSIT20KLbvknYW/tfIT2zrR6jySa
	 KQ+lvmoAyeNKzvSCwzcwrE9EsyAqONzJ1u6cQLR6C1PtLle67D+ObgqHdxOYfyO7ej
	 m/009Qch/o8yusSQitVSUPvPYoekhirI1fPh+edLWoNx8u9ZBGfxbiL9NjMZ/mmXvv
	 OTPlR04nNIfD9nIfxxGOV7ztCkP8z8+wJHJDiW0fZnM3zNW0ceuoo8Zj9wRiUSjXVP
	 gUbguZDw84IpK9XiIeEB4ehfxDkQY5Y9saI6oqmQgdCb7CFxOBhP1WfXVGryY6ZsUq
	 YdNhPtfs9NP1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B1EC36001
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174259739361.18479.7610116527105664558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8469efe3116c9da52ad5d1a494153f4e1c353d70e2c57070071b583b62557c0
Date: Fri, 21 Mar 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742597393
