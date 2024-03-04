Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E10041AADE
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 19:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709582297; cv=none; b=tHHbYYah2o6lr0/SHlDPvHpPA5vPUKucGeXs0bUM3j554HHeRYoyYjZeA+K87VhhvfUGa5TLHL0tueWPF+LqDPa75FXmYHlI6ZjlCl6x7HqO0lRKpDzTMqjrZbogh6gTYfX5RvGY+mvnthd26UA1XsqZ+3LzHKaVCesXTDT5nO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709582297; c=relaxed/simple;
	bh=YyOhCHJLK36ejaiTcWzrgISJIPHwYZDcAa59QO/O9N8=;
	h=To:Subject:From:Message-Id:Date; b=FRj6uqBhGPjk0t38TOoc6YUGVp+1F5ls0koxuSSqPliZdpUyrxXVbwbpeLKwMKv2dPiTl/7zqFSP6qP98k3WZKEs6gAblXB6FnJUhJdFvUBfIsu3JsPaaonh/S9JnIoP4ijGIuvJmFsq+oC/nTwcE2jZ4AviT0LHiZyO6LSfNDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RrWJyIr+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RrWJyIr+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75CA5C433C7
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 19:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709582296;
	bh=YyOhCHJLK36ejaiTcWzrgISJIPHwYZDcAa59QO/O9N8=;
	h=To:Subject:From:Date:From;
	b=RrWJyIr+JRFqkviHnzCtnXGSiUeNzaqmM3hLoWXJz1bgRkNEoXKdP9WEYiBEGs8Wy
	 G0hovaPeX3jzShOm67umCB7Jq36BE+0o2YW8I/IB1Z25rfqxd3AmbF5B3pzpH4ytIe
	 EEmqPg7TUp3zFs0UHYYhi9C1azEb2y8qnvcYYPKxYvXqo0Ae5Jb6KqeOaP41fRPLRA
	 tEk/U8uRRgwmET2zkllncl2NhjU5X4A2BRRgXfLVMKeix/lH4V6OGR3VmCNd5JF8lK
	 mHTB+rBXcqQnbDwPcdzIgaxWUsqadeuMAi7SfgnMkNDjWcArpdI0ZYoF/KOn/l1CLk
	 o3jFUGv9j208A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CA73C5478C
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 19:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170958229637.587.174484944846032753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e51cadadcc4e5768bee8bc348cb0c19557a84cf338f2ae0c3431df91a769cddf
Date: Mon, 04 Mar 2024 19:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709582296
