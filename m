Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AD3E59B5C
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 09:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706002697; cv=none; b=D/nPKxkZogx2tw4YOB0iVinBgtdZjGtMtKkLpmZd8d0GZe++9iksD3af7U6h64T0Yta2TAtySdvFXBUQQIOJpjgita8YHO7hu2c8ZqX8kOQdb4C1Ag1RcE6Kmf9iaGTnpVnNHqxMYhRKendiFJ9L/dyvtEevb44nsYyTjssMfn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706002697; c=relaxed/simple;
	bh=2HDK0TUCstTWZDcnTccInq41/lIrB2asNLcrjbJAa50=;
	h=To:Subject:From:Message-Id:Date; b=EEUREDImAYAQN+rjgdHQpCVcn4OieXOaaaTcuG+jxvGiK8FAuS/CM8l2ROscgQpIjow7Emg5X0lB4PTZcLlPYRtGuPIYibGK5IhcI68sUs/WwKdKz8BcBYWipPQUZyi6yQVGqAQIwJcIrW7/DznnFIU8a1/iwvmmrtFdQn1mAvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A4SIJtgA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A4SIJtgA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 792E4C433C7
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 09:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706002696;
	bh=2HDK0TUCstTWZDcnTccInq41/lIrB2asNLcrjbJAa50=;
	h=To:Subject:From:Date:From;
	b=A4SIJtgASffjbSdPpdcvxQsxw7wqmsJqtTGsfdI1e7nGHtPlfIEbWFea1ctUdLvHI
	 0/Se9URSvovgIp6+KDSVm+PG+uzD2dz6MQStZ35n1GIjkbIYdzZUPwLu3S44oV6g2i
	 SR16RzezqemGPkXCr9/h+C9pKE+h88TcwJSSymd0P+SWkN6n6Aq2+C3CEhTT/8Q/HC
	 CLTgEZbRmqIp32yDJ2787XOigqI7IgHikS8vEvttSU38JrXpiltZWQda46boGWerwm
	 pI/EXJ8Wp7+D2dXX8qBbNINJtba6kdDziVsKNl6QQOs+VSu2g0C+DI4U0SWkeK0Iru
	 FbPGAbPHK+ABw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D688C47258
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 09:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170600269637.24658.43919645582975092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0983a98120bbd405d34df66f2e0eae09d2dd6c9862a89375641c9bbb311590fc
Date: Tue, 23 Jan 2024 09:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706002696
