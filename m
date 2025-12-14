Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 386A9158535
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 16:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765728174; cv=none; b=GH7jttSt6SHnAnhrXCJSLBf80GepJKj4AtiKQNObanFMd2I+N1KZryQbWBSNE4lPyC2I/M+hVpuzAeBc+Plv62JJqCg8YD2H/yhQ+RHlHS3KMmLnNv1tQirGCq1GQQO9MYI8dZojM9OaVYrOpD15/4NZDmBMJx5lv3eOkiFSxo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765728174; c=relaxed/simple;
	bh=1TtQficezr+UqVH+p++cBZqxQoqo7MuG5KE9XwJuDkc=;
	h=To:Subject:From:Message-Id:Date; b=H8w+VN39mGgH1nsH43xCkJB07lLDDIQDyocki90YhDVnzDh+miKOaE9l/6QoEKsURk8Y+OwDJce+HSl6BTHSB7DnSdHHe/6YNyPgpIyg6RZ+xKrGrf9RmqEeLHf9tP7/GIMFU38ztb6f8J215dFCSIz4NyTK5l+0EQnTAPv8AaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ocfgGeYy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ocfgGeYy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0061C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 16:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765728173;
	bh=1TtQficezr+UqVH+p++cBZqxQoqo7MuG5KE9XwJuDkc=;
	h=To:Subject:From:Date:From;
	b=ocfgGeYyfCt55wrPx7Z6XN78bk1NcNXay4Kkl1dCjOx2FF2dDq6lh8BfbbxVIqjbj
	 3tp6hFpO98IG4Co7s9drLH85eHs5qatO57h6WVvDugGEPxz8vMuVT98YqD0TF2SEar
	 KJc9Sv2ou/Kmh7ayQWXuxoRZ7gqe0j0NflaZvnlVU3VYQFMoDWPzKAMnVBkdVFmv1y
	 /Jyi2sEven5PCTh2QebTq/POwXS9yIoo+Ro50XxUhDKSe3QfYPMAImNq9xdamXSKp3
	 bq2ZI9c0SNqVJ94vtdKhPWcbJyeLC26RwbBZt8Hn1DEHr7iwpoAMrihMYerCtgfJBu
	 4gjQmWorYC9yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FA4D5B16D
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 16:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176572817359.31676.2590795373242660825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a6e99ca07d979f683be51799234f06eacb1f10dde1eee1763745eba71eba9a0
Date: Sun, 14 Dec 2025 16:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765728173
