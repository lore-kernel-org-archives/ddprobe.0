Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EA7D1C6B4
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761352194; cv=none; b=uRqH1hl8/82+zeZzthweV72EuPWM92AYgXUEZRWIM7mRlGGMQDTXEdy6BMYh74Hv2RKF0dV7ltAavTz/HCmayjI2cBsR3/7VVxv8RkOTZwa4UDIJ6s6Tsh57CvCP+Z+lmghSfRwycjUiAc9WToZy6O8hHJS5qAV7YG4XSQipjW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761352194; c=relaxed/simple;
	bh=HxgLR77kmioEirFgjrcyKqdoPUQJ5D9fY7Y1s3FBFeI=;
	h=To:Subject:From:Message-Id:Date; b=LD0CVjPt/bUIGpT1LinW9yi6v2THaoENKpwLZ6RZLihLg6u+u9uoSFVy3yzb0KLIMn+6HaSuyUTXYcytT47Apw8TiOBMP4apWsYSKG0TeWsvgZOAeSTjNKX3bhCyBihxcTo4FFLzYxsrYHL4zgezXEgFmsm3GdUkVK9rIr7RdW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j+awnQdp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j+awnQdp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1E56C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761352193;
	bh=HxgLR77kmioEirFgjrcyKqdoPUQJ5D9fY7Y1s3FBFeI=;
	h=To:Subject:From:Date:From;
	b=j+awnQdp8DVlbxNuWAG8gkEnLaesp3XPxVDzMtMixlxHcMOhcWloD/OGE4YNdef0+
	 ohCa7QJsz1W3QdHJrlP0O050ZbV9ivkIMwOAqGfWfjbiUWAiKFF1NIFj+285qIlsnn
	 DfpKV7shktdjwt/eH2e8etnPMtIzH75anUsDEP71uMSuA/Uji+NcR8bqzwxtyRIVPm
	 c4FjRVVLTYStz9kkvwUpOvesq27abIxP8albCyb6x0iFYvxRp2HQeaiV5AX4lbqZu4
	 69D5g72ik1rHzG4uC72+YFOnQ1MvMHKcPDaMHux5jWY3RS5rceZw9Ly0CXG7ekUcI6
	 bU6yFNBzoNHuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A028ACCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176135219362.13736.18349489801401337283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8e525f695d3a760bab02c0a7805809d7207afea82ef54a47af9385878af15d9
Date: Sat, 25 Oct 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761352193
