Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A16316FF48
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722506154; cv=none; b=kRxZsJlBtSZYqo+ZfUyIFoDJ7/Ptxp8v6KFrIqhJ6kcnrRINWBAunDUVVRmq2daOsquxF7Vx7g3Vq75RitTDQF+98vrhkhqiPr1qq+8uAO3DU846UHFcTrj5JOOSCT3f9F2L76wHWjzo1NGLD2fleH5UPlyT2VPjKfAb1fok8eA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722506154; c=relaxed/simple;
	bh=680QKr2+FXTFi1Wi6vW1B/XEgUrK0idDb2cwJI+iQ9Q=;
	h=To:Subject:From:Message-Id:Date; b=eMcxe2qMFNCTuhy8LqQuJyt8m1hYs94QN4CEl28yUfDQUlrmyVj96D2LN1QZ+GCJG79HxOqj9yYias9FPbAVzHuzrps+N2nQWaneSO6l+5i4gxTk6Mj0iXQvnozeNeG2hOlVkPmPo5j93xPm8/MShINktwXrM3ZjJwJ2XRGaZnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ral6gQJd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ral6gQJd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE5AFC32786
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722506153;
	bh=680QKr2+FXTFi1Wi6vW1B/XEgUrK0idDb2cwJI+iQ9Q=;
	h=To:Subject:From:Date:From;
	b=ral6gQJdXXNSG95CTWIFvT6xDqmUDDukhpRUTfVtefTC5j0ehTVcOThMsQ3RZ0BVC
	 4jXJyQs4vEEuYBeOtbslcoMlURlfgxmm1irzafOhlGSQNj2RmkYdGN36sC3PtxTulE
	 v4mk9vzTFKkJRfgHA6GOyzhkyOv4qWQZj9PpGaAAeJ9pHiRn8VtYPZlh8FecN3oaqI
	 Amubb9M08hI/V8C/vyX4HCzEsApqttHlfWtLqKk12sM3MGIuznJZDLNHQLeBq8kSPR
	 HnFb/UA8H4Bj6xBodgB27KkP7nw3gt+eLNjFgMt8/LXTrhv+M1468Qc0zyEEE41/SH
	 uu+fTP68zkyTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985F0C3DA64
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172250615361.24886.13679178454420340612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 235d918df55feb802ba71e8cd9b4d2c586fee40a74d65e6581a6196cbc27951d
Date: Thu, 01 Aug 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722506153
