Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E98D3559C7
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761822594; cv=none; b=LOCMyXy9zMOheRU+Br5Ru7/+GqmE910+8XOK4GVQoUWvBOf9uTz/VAnYUPhNqP6IiSK86nqtZDKcGWEvQ3ZrUW0aqAFhmMmAwLHcbY5zJdeCk8jwU4MUAaPeH2uCohVQYZVPTTps1hDQC+rUCYbocsPVcgcrutpZ2M11GP/X4/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761822594; c=relaxed/simple;
	bh=jcwoAnSImiZ0aCuHCNLUlvzRHpOTpiE0BW/qIkDp8gQ=;
	h=To:Subject:From:Message-Id:Date; b=QuhwIiDyFG2J+PVrMPD+ztVKBlwvrotvItLYcZZrNc08ji/2v9ZCOSflQXrcfvat8+YG6kFNw7ufhj8xndkMOu+EPDXTOxsa7BDJSwe352TnM8g3oo2TwJvGGI2uhTKhIJdA7W3xVI4sAZ2EKbAH2wk5q3rt+j6UnRiBVFEAAwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i44oBQMi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i44oBQMi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A001DC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761822593;
	bh=jcwoAnSImiZ0aCuHCNLUlvzRHpOTpiE0BW/qIkDp8gQ=;
	h=To:Subject:From:Date:From;
	b=i44oBQMihAAhV0gLETujWghWXL7P6dGlVnLO9d2UWIDbEXOZQ3c06dbTOq+Oee5hc
	 D14na4o9GVTJLi7wKR5P+JAYm8nSVNFIEzOl64h/fMOgGUKIT4Uhhss1Ruv3dwcbDm
	 eVj9VqdbHSt3IzpIT8Nnr2n7HsSlF7jNxxlP4Fy3uiDDvI2YJMSbF9QdJz0ya2fu2M
	 i8SES8/1VZ+9RIRes9d9MCMBUEvYFgnZQwh4v0ZB50ympKSWyFf9Z03gHHgZzRH8BQ
	 owFD2PlirCAMUN40NbmIpWRVA5HGx6tHSiRAPOoPGzSarEpwb/t7jLgfsJz3oJMLNK
	 VT+TY6vE8brsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9077ACCF9F1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176182259358.20779.17732388273546218223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d52ac1b2046c04a5fcc5f7c234c04fab5c7bd2a3b17e7e9e1e9b3390dacc165b
Date: Thu, 30 Oct 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761822593
