Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FCF3188CB1
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744596594; cv=none; b=luS3FyT1brwu+smdaf03hvnkMtnOSRZmZNWEHZ0hyQzgBEGbPqh4kCptr92MjUOfhDcOelfLQN/MWv62E7iD6q/nYJSVx+oLMK7Wkd4APL7+4HgcaYBOduNkg8DrR2PTNBHNHj6lP/x+IubrgrIFlxigbDvVeyK5/w7Nmv0sz3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744596594; c=relaxed/simple;
	bh=muPh1ayJg78PvnD4uB22w9mg5ed0iJJ+0MWeU9Tm5Dg=;
	h=To:Subject:From:Message-Id:Date; b=E6l9W1M114MLtVUiXIDTZzCrga/6cOEy7mtoNPQSRv9PavK+oI7XD99hZUMni8UPKWJeW9YbDpImtNcqAcVayha1G0ARzc81fDkrcb4YqChyEJWRAGGwIMHw708AT7cI/dMcrVwOR56K1glmw2BdxKz6nP1+sfSWA7JQxpbid1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oq8ZfHWH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oq8ZfHWH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8B88C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744596593;
	bh=muPh1ayJg78PvnD4uB22w9mg5ed0iJJ+0MWeU9Tm5Dg=;
	h=To:Subject:From:Date:From;
	b=Oq8ZfHWH1bubX0Ms44AIDCbHUbU7rWRZ4QFoPCW2IJOV60K0OsnuD62LCHrJmgShI
	 UBw03NwSY3Ks9DPv2UbB9CLSSUdx5u2e6Z/yZXoYCRb7HkXTLST4NQeGhdcU3SPZ48
	 z4A2gE8EBWXIQghK29lBhk4gnGuCZgloQBJi2ZWszIazfSmsqwfFGIOgIScsQDJcEU
	 XwXfbecEMApeFbjtRTfDZZIMKymVdNU2vAsKsOMxc2R8gr7MYnotjjaN9Ajsptb9G1
	 iwY/atyo1iqRSQTjd65OKJBnw4BlvAEcwdLXKln1e2ERA5xBcZzvLdWzUC6tLSe431
	 3r47cSQdeYZQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C937C3601E
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174459659361.1277.5216014646001019815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 589fcea73314b952ad8771d3041cfd5954015a80dea745c4e81157bde3e6803b
Date: Mon, 14 Apr 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744596593
