Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0746614B953
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758931194; cv=none; b=j51CJhMWhoSzD6RFWxQoiFSgJWksCuIyyIFnHloX1iosZZV5d9tCzQT7lcTmUi+WsT/2cc33ySrvjg/5R+DEvURaJE1DWzb9QrdOa282q2+5w8Xz9NVShpqYqJvkmkT+EmssRGF75uHFK5uSd/FyDUimysylr7KQqImg+eHLvMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758931194; c=relaxed/simple;
	bh=gTV5c2BRQm0Jfkl9gND5FG3NA3FySGqgOu5aznDEeS8=;
	h=To:Subject:From:Message-Id:Date; b=Pu5CPxST072D5D9gYRZ5XFvv/VcNNFmlgduaFo3jWU8hjSqUigC0MEhUe+0m9hO7fykgqgO6XBLKX7ITAY56BZNh/EqH/OmGrnTQfuxQODVtoGUaWcL/rvjm7j33GsH+TnzBZWoSZbz4Cg4Au1KsaZ+vVJ21ZXTZytmY6TALP1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IyweEVzy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IyweEVzy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15F5C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758931193;
	bh=gTV5c2BRQm0Jfkl9gND5FG3NA3FySGqgOu5aznDEeS8=;
	h=To:Subject:From:Date:From;
	b=IyweEVzyZuFZOWVaut0czd3Y4u+Sjf03iyEoclGg0ZYeNSq7KtMYTKvBv3FCcbIbJ
	 cM90ipcBWLj+QtAIbDC03GCHRq2/b4XJK3ItfJY1lrBQCur9f3ehNPHrR77IGEzkWV
	 kKW1prRHxOsf54woHb/l0RYqhj6vnEMjLD4Zclp+6Lr9LoZSzrKA6f7u3tFF3CusoN
	 RQoqHxRcCPV/HfiEdGsf3q7kxSiqPsoVGh1oBpcZGykD5mgGUwVAzMTzX010HaiUQ0
	 5L5XlD9q7lyWfSeJaY2EOUWb7nZt6noiwLzSWb0t2ErnjP0lL0jVZMw0XGmkar3E6Y
	 YOugSGDxNCZBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B5CCAC5B8
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175893119358.30665.11565048186124363468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4efed98977a5e61a1d724053078c0e58bcd76226e05fcf99507fbb70bb81efe8
Date: Fri, 26 Sep 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758931193
