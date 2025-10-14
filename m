Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291261FC3
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760477994; cv=none; b=QmlNLQDJo0Q/0VC7m6+3ty8AP0ytDYps4Aqor+Z/54MawmMyIFcnH0AOytudcBgiSYDfpa58dzgeI6GJ/nygwitV/N2emBeUedLx47p/hGEpxCUZGOMJzTQCHJ9Ftmx9yYDcV7pr8bqrVCH8wxY1vgjnsABoqNJmW9ITdTU5hMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760477994; c=relaxed/simple;
	bh=TLqB8VwjCATH/197TEA7vvOR0jbxykTCGIxX+U5YN70=;
	h=To:Subject:From:Message-Id:Date; b=kqYmTcHDEmltT3s1dbRfXw5iGB/wqP8brflrb3AJ54ZnYCqt8pd/9aAsXsg3+NxOp333v7As/dRmrhHEgFliAwmTznSn7QCOLaNaBXgqjH4KFJ+FCntgCok36GpnU0ShZjilZAqaKC/0S0J5sX2GrJ7QVWP/w+XtWgf7j5582NI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uTabbmXG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uTabbmXG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92FDC4CEF9
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760477993;
	bh=TLqB8VwjCATH/197TEA7vvOR0jbxykTCGIxX+U5YN70=;
	h=To:Subject:From:Date:From;
	b=uTabbmXG3Ny90/zaeS8ql6G4xKtUKxNcnx+P9g6KTsRJXa/rFmOJLMc++5f1/YjJ0
	 FMyW3ffdg2AS/n3s4CIdL6mueM0K71Q7O4q1Ci9MDcBalAP12/j5Q3TQkfSlyeJVN1
	 nYqYUGRIDX0EqQh31weg770NMBeezV4mgcYMx5X/gB9TBiyD9R5ruDO1C1iYs824ae
	 MUseMDvXoSD534MH0bF7aU5qIqJiKOGPD3Q+6JbhtZOYWGJIAXETWaFM/C0KHeipOC
	 Um+3jacaHC+r6kcWhl0D0eiNL6/8SqsZmerIcuDHXc2vRBK2FD576u+ewgb/BlPD50
	 nwzAO/5Qy9hIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7B0CCD18E
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176047799357.14602.2275947346388766576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d9c7e27dcdc53b9becea9c12856be7270d9f78de83d976f90867c2654b989f4
Date: Tue, 14 Oct 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760477993
