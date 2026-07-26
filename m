Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D7E81F3B85
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785030034; cv=none; b=eECfkmpD41RCQXRSHHboyvKiFPXDochRoFVpcwIWOJRVXNC7rUVahypTt1RrqVUju7uwZiHkS05XnCrVg46MlHeRZIWNwNAJTe0z+ti+GFbFFfh7lK/uVQndTqCEXgbxD8DGJOXaMA+38tnTwHt8151B11vV1ELYAxX+ZZ4dn9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785030034; c=relaxed/simple;
	bh=NeAzRTfKYYB8SX7Ta9yXMqjbTglJ8XTGTwBvEACU6o8=;
	h=To:Subject:From:Message-Id:Date; b=FoZzLaPlKRlE297ANVwf9+18erYnHFHoIgHRqipDYi2iNtM7PSBnsUlFDh/PWEQCcXXXfuLYQeTJNvokKf5tx8ce1kg+yGKh8mFOJs+0P8ci3ncC7fukP0KJPzilPWtc41+7FZbEV9uodz5GOBCadGVzX9TqqyRkFIfwnlKU+h8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WhCZW1hI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WhCZW1hI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D68ABC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785030033;
	bh=NeAzRTfKYYB8SX7Ta9yXMqjbTglJ8XTGTwBvEACU6o8=;
	h=To:Subject:From:Date:From;
	b=WhCZW1hIeXLeMfJQ9UKLGkMjBiLY1+F9qQuOMhZruWneuHRKfWFs6u+biY0zT6kS6
	 hXAlHUGUTW4FneDKiPA2YTPXbZvAal+EJN09Wv8oz6B6rzHJi07hjjDhOl8PwiGXlQ
	 02A+Y3/aX8dV54Hec7YUlx5/DXeFnoER2rab+V4KFrn+XYSHiu58Xnl7M20IKWbc1P
	 B04FJklCgONN1MJGkFLcd6cwbE7IRNyNXyMV8s3i1cOeply92cTqUdDuaQh5Onp6/c
	 BsOPcS9oXcmmJ/yGi5uof2ZbevwzvYpb9zjqWLG5q6/oKUb7YN1ZrPRljgO1zq41dP
	 DHsBpAV/vEYFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE230C531D0
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178503003368.14539.3880833281441835382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 225764668c143fd63a4de5b8bccd913bff7ed9de53e163039a03705b43144141
Date: Sun, 26 Jul 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785030033
