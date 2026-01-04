Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3131A9B24
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767521034; cv=none; b=TQxHx+RN51ap+7WyPq9CYSpdJ9UQQ/F4fOasMUo+6flabd8tPoW10AkC4exPQ5itC3O+GsjWQ1s/pzCorXguQBxSUVat73PXdhz61Ri5aTQOir6Qj1HoG+ZP3CTc1b7StEc1dsAEdNUsVRgqMbSx/zgJOtJEmBTpqo8kevVLoXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767521034; c=relaxed/simple;
	bh=TeW09Q+kzoFfq5//fYMzgfzoHmEVgAsXueU/deCi/Dg=;
	h=To:Subject:From:Message-Id:Date; b=kGpxitsfgfbmmrbkx9FrnHxkhds3djEtgIWrCkFYJEgW2KvmPNEewafnLPQuBVBbwnkerGlCl+zhf1C41Tk6ESaAqQpJnWPHxNHHEGjN6EyuvIM+4DDTWjesQ/ICrAj6hQLXIyAyImiwMLWbZQWSgTEshJbf+ZZ4TF60hD5VXzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bjpl/VcW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bjpl/VcW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A7FC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767521033;
	bh=TeW09Q+kzoFfq5//fYMzgfzoHmEVgAsXueU/deCi/Dg=;
	h=To:Subject:From:Date:From;
	b=bjpl/VcWafydFW7w5tTtC6MjC5KvkUxvpZSEgyIQOVPS1jofzRGZyM6j7+z+Dappx
	 4ZkdODOODr3V1hmh2b/GLUDb+wq8QbnP88Zt7wvBlkSi9hATl++ypm6QIuDuDSK4PE
	 3mEP+MU8k6bbt2iUwdlIPd+Knzn8vOIxHo2OjJ17PvdMRc7Y7KW6lqSbZWIdXUxJci
	 0McRM6KNmjUAmsP9lv0A1m0r2a5Dd5xTrsuirnex0fWeZlZyqTOlkMsOjRFpcGnPUc
	 YE5N0KZlRI+DIn2XGbCIxRpPWZwPnAC3onhdxTrEISNezQEmzwcJdFgy3IpaMh//Oz
	 8aLTbazd0caTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92912C2A06C
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176752103359.1574.6942166559641078385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95347f8d85758c02533f1d5dd71d1e2839f103d1596bb2223d651f5656e9b42a
Date: Sun, 04 Jan 2026 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767521033
