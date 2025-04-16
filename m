Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420451D5161
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744763995; cv=none; b=sBmPmD02/E4JAErKSgytwPWsBr/6S+9S0kXcVoG1efUWDnopYOOQcVrAyDTSAgTTmYeFbNNQsr1mAw5FdqNPtcLR5lI5RyU238NAMjI737w0tbDMPq5DvYgLjgox7XgXORROqBEn1aIoEjRvjgFRHbitYoG2pRZccp4jTLSMsCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744763995; c=relaxed/simple;
	bh=AT/vmwPLaFzzdx5S4xkVuxvBmYaYhQh6PkUFfyxVGI4=;
	h=To:Subject:From:Message-Id:Date; b=CNrnCIWFqpMUAPhNWwgp3rBXgWqtuDFekOmAOb7bfuuqZywQEs1Pl3hj2CGW0HU8//uS5EW0ir+hsQdgPoZi4Y/v4EzMtm1GVxExbh4Mf9tmT10Ex/qVkBJmgOV7AA9xBwNDVfxlPXo0YpPz/GQyoteUcPIhFijyiIbt7/OH384=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E/hsQrsh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E/hsQrsh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE875C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744763993;
	bh=AT/vmwPLaFzzdx5S4xkVuxvBmYaYhQh6PkUFfyxVGI4=;
	h=To:Subject:From:Date:From;
	b=E/hsQrshcEcqEUP20kpGsnpv+yNXdV6OlsPJnaaICYxa6ED3muf0bmQ1ChKLBny3u
	 q23Zr5tVkuoAWviTZEvxgPtNWR5hqAl3dUJFYWQEUgc+mpOkM969xDmzdB6UQwddLh
	 96Ry5e52i5xg8mg0krtbTzWJ/YTRWatsMPzlwcgycaGmhmoj8HHAKW7HWK+0db18Hj
	 4v8oJufFNndiFDNLkEwkAo94C4jfQDmvhWbCkeitUAtjMf2tPbNnhHt0UXvn0RMLSC
	 5Jg8CAI+vRa9VHX4eVYMc5kiCv6rK6W4pLEvPsBGB9sS/oYNkCWJGKzv37O2briWVM
	 +RpcwsB8HbWiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D609C369AB
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174476399359.26881.14825480348671365558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c1fccad2bc3cbee709bcb136ddf943abbbaf14143b70ff358ac4db390b082e5
Date: Wed, 16 Apr 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744763993
