Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB92E28E7
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726289153; cv=none; b=Sig4OElh/Z8txtO52Rmga/i3v+tMA7ujtKs7M8tZ/xW3T6aJHVFpPdoAa385qiNUk6T02iy8wnPkosNh22YHW+spWmah2iCHtZtdeG/s8pxu6a2zXPYMINxArXf/iBOen54j1NhYqIr+Cdigkpax/v/2nHlW2SE1DHr+8e9FKWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726289153; c=relaxed/simple;
	bh=3BlIo1nvzs4L5jw7FauOyKsViqvQ9yuKzTXrcPCfwmM=;
	h=To:Subject:From:Message-Id:Date; b=H1kbLGwzo616e7jVWq4/+QiXcp/X53FsNrXf/2W/pDuqXB8pJBfiFjWO0hnf24lIjZuM4oL3s0wVEqJlFcygjHJvbYrJOg8c6tGNHAQzgYINODCjAVPSizLfDWDYWN9Pf4KAfWGPJohQmpcjjIR/y3fa2dOEQGQ2Yx8dTafhKJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uvuu7qNW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uvuu7qNW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC3FBC4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726289153;
	bh=3BlIo1nvzs4L5jw7FauOyKsViqvQ9yuKzTXrcPCfwmM=;
	h=To:Subject:From:Date:From;
	b=uvuu7qNWQnWkzK/TnXs/XqiMY88kf43+L9e4bm/3yLNYHGrfe++zw97yt2Ck2H1ic
	 oV3JQ+vLBzEUtXf5iouOptOa8+0f4Iz6JVSzkBLrQx0zKLWLFFMb5wDqnvCMwhISfQ
	 HNeMBcqKcEG4WBO7Boxw79qiQHWzV0G5mqn/xvEEwZ0SSRnU29LRp8SosF4gLe+YkH
	 bapouP+e+XrzS582LOq/hYHhJxqS7I8ROH8oW9NJvVDIdwqHq2M5XWGxDp97O5pd1M
	 Y0s1OvmynoOTDIC/V/bMixO/PHF3qNKq2wF7t8XCD3kQCWGXuTQE68EVtHxYfHHGoZ
	 MuNa8AuTujyuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B02FC618E
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172628915360.24344.2755558634969157884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d85946d6b6d16368bf559e04991667c976c4ec81c7c9434ea45fda9efd7de8dc
Date: Sat, 14 Sep 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726289153
