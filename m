Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 186711BE857
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728648954; cv=none; b=bVPIIPXeXCyHVHYrzmCbetnKcQoSR30/VAgvmnL4AXDgeFfnTiR38UZCxPrw2fgRnki+8HONoa+Jpn44Czr3LTBFexaCwPClmh9mTXdto3zQy5A4E7jwSlwMuqou2A5ya0xxa+3lLsufwg0RxRaDHxkjz6h7lGJndJLZhZoKrHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728648954; c=relaxed/simple;
	bh=U86+v7u9PiHItzsajbOIQh3/I6dRqM/NHSWV8lZ8ARo=;
	h=To:Subject:From:Message-Id:Date; b=gcDl9HI+tKuszrOfKk2dWBZshgSwMQKHdPCREQ2riYWIl3coR/qLwtRqaD0FQ7ivWw+Seb3nGubV1MXHlg9IDBZu5twwrmxmDTxZEZmPpYdVZBfQlQbXgyCu8EuKY2lJpEJDeZA9zOvFU7feCGc04M2zv+RfAwew7fxbTpj7HnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QwqiXmrA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QwqiXmrA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F0CC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728648953;
	bh=U86+v7u9PiHItzsajbOIQh3/I6dRqM/NHSWV8lZ8ARo=;
	h=To:Subject:From:Date:From;
	b=QwqiXmrAAikzJYbm7FGLzxGuz1t2l2Nu8TUySmMlAxdlye4CutA4Z9uhfk7sY9QYp
	 xMm1tQoPMj4lRhzgMfO02Hxsc7j4Sj7/W8mGx4NgNMJ5BsgAK/T225ocx5645apfE5
	 fzP3swZ25xa8mKmJZHFg2tk8xjswLE0pH5zapbASlex6xlsArkbm/v6CTwFb3b476t
	 txxpSccNs4A9/loNMAovXEL/gvBKUjdwsvuwagnxqmiTO4n7DAyda4gdmMLduUmJIm
	 J8FeaJnd+tb3Y/o5Feo2K29RCYhVdDDmNf745TrkbfUc+EFpIbfoo4SbXramcaRM9X
	 Ng4PtKwNY7VNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971C8CFD36B
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172864895361.10688.13204861312885644217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f13c10e2971709a35ac19b0831b6f28b60c0820ff84c8420a30234761348309b
Date: Fri, 11 Oct 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728648953
