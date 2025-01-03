Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C3422E822
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735865754; cv=none; b=iU4uVWEGuPmQPCK6jGYTFCudTWX76wnPhcd2csmmDz57Po7Vg6YGetHRQ85Cu7qAy47t7yYdzVDIl0wtFcEYyu7tBIuug3+i4Cx1riZu1SbGawueJuDDl2etDF7x5lvgF1+eA88yhhdXGK6n8/AI86FVwi4Bd0EEJUk340ujxRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735865754; c=relaxed/simple;
	bh=LfCWbs8ucNoz40xAQZ346ulVzhcNWsh2o5GaEUGzmoY=;
	h=To:Subject:From:Message-Id:Date; b=Xrs9IH5TG2eJ62HcI1Jjv3O/n6rfhcrZmqn/UREHw/lrfUc2RROtUwhWKBXZl/athUioj6BNdiv+Hn5EiA2ZLaTMu8ThPsnSB27QdQgVCda2uKASkEEwja1p3Sql2AbU6SQBKLBM5h1RKiyeqHe8sySsmw/FSAHWxvA0PMAWBkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dDSZORAZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dDSZORAZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD82EC4CED0
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735865753;
	bh=LfCWbs8ucNoz40xAQZ346ulVzhcNWsh2o5GaEUGzmoY=;
	h=To:Subject:From:Date:From;
	b=dDSZORAZ9kW2lYFmyZspycXa5uGEI8F0v1HflQG22Odriwq8WFrFHnrKMIOO9xiRx
	 ogvuI4Sf1V6de0PoUBT4RYuVe+akrtbT6HG/ZrJInTGrpQqh+Ms1mz8OOSuXUrb0KS
	 HjNCbq8b1KhmH8hDrXVvrFL2RlIV/x2qqLbCipIbsatpz5CDeL/gicWIJO07bLV3f7
	 IvPfWYgGrgh+q/ZLTh0raW9n42dANJzckRsmlwFUbQ6PDLwWEfWShUm2cnFoYSXU8I
	 8vZsT7nFdZgadAc7qmLIb5QqGSlGIn3+RXcdR+K0//ovIxJ37XSY7Rh801lscD6aw3
	 fpJYh9TvUkOCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A5FBE77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173586575359.26173.5242209320877747357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b3ed73b9f2593b78a3bf914fdd4a231906293705febbaa988b4d52182dbf510
Date: Fri, 03 Jan 2025 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735865753
