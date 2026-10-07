Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 496E63DB626
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791406234; cv=none; b=Pm0jmSIEi6l02QmmYP4kCTSAz5CECbJICPKno3t2td5rpqJQL9hpSJIa6H5j+uirRvufPz9pl3cL+sZucOSu8FNhzFmj5PLnlmeyMNafbbFuQ4DeJ5N2WvpXE+OEfwAj+CcoaD1eUtxJyYmiJSIr+v58gjACmGcJh5ggScYnATk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791406234; c=relaxed/simple;
	bh=QpSPNNWViYyTdjLVo5gwQQNjg9XfOWQXrclrLLcGBw0=;
	h=To:Subject:From:Message-Id:Date; b=lIlssUUJRt6PmWsPHyRPEHVLt0ub02086wTrbQjsdvX5QYXKLHQTfGtQnJ4Pvczmdm9Ng3gbpXEHGjRzJjH4NefGiToScWCtUEmjh65+IhBRP8ez0jbLO7kNsCkI+wAV0CrKwJBx48RhSBcy7+cc2VJizh7OEZ6z5iiuOXGnb2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tkq8t5aO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tkq8t5aO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D43F8C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791406233;
	bh=QpSPNNWViYyTdjLVo5gwQQNjg9XfOWQXrclrLLcGBw0=;
	h=To:Subject:From:Date:From;
	b=Tkq8t5aOBYUBZbn9XagTgIntwgVHY789KGC7KVvk2lBBldrVT7Cu6FUyJg1eunsOX
	 t52cCivRVMRRqhjNkNf5F9ATZN+U2RayTsLrFW+oVZlYcJ/EJQTEIZuyaoeb7K2zve
	 GufVEJF5uCBKqe2vwe18DoAHKigkcjUgNKGkCr9bVCCwbCsgTChx4vQvzUphmH0r+4
	 6WfMpwDnAjywmdEauG+NvmzIZvZo+difcQwXHsGCTiACUW3wltJxfSBGc75BbPPV1t
	 q5hdfQE2IiUQjnh4CiqRyp/oK004M79L9suizL6DEkNsFqbFxkFV7qt2SUMHVzQZ/h
	 8/LI0Dnw25a2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC24BCA6004
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179140623369.15450.12930985999414104389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61fc6e32d45df3236ed1e00cce015a1ff0a13ffcc5dd8c4e814644d982388348
Date: Wed, 07 Oct 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791406233
