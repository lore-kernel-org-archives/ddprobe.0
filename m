Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED7128467D
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760717394; cv=none; b=RtnEGTTiryY3IHkHwFwbNaHXKVu154ZhV/Q1YVUxl9yChTpZ0I3qdzMXWSbHHGmlKvBL8zGBzBWsNIlAo/pGu7rKLdW+nXcjC0lKBdF61PdSpT76EwAWOOY2v2acEu+b4RcZehcfTMyqsYff51e7GaS1F9mw7uWgXyLjtEp2lxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760717394; c=relaxed/simple;
	bh=lsnx0jvPHRphMqHKCrKChfdmsDV3sQPB1pebDN2ZWxs=;
	h=To:Subject:From:Message-Id:Date; b=WQfv8lL0KNCUDwJt9v6kw5ztMkVh0bor4rY4JAMBntEfsmvGP5zBD6WHKZ46ypylnAI4HL+U+S1CvBVDss4oKLue6nxefSBhiBdDkkJgIzVbZMtTUdcw0k1Lg5gBr6zmFaHUZ4gH+BzzjrCHItTJvUqBLBPplB5AdojRTNI1U98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JZxlN4Vh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JZxlN4Vh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D95C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760717393;
	bh=lsnx0jvPHRphMqHKCrKChfdmsDV3sQPB1pebDN2ZWxs=;
	h=To:Subject:From:Date:From;
	b=JZxlN4VhxwEXYfSgPISvweMkgd7YwcfmAzJa0piT3aLsATCpZbLM9Ik1DFk0TNqgX
	 YfvGTxrugVerwqJyOCMW4iT1Xv138Ed1UPw/4ikTYHLyYhcUlhi5XCzgILS6ieIhEF
	 +09dWOWv+dDefjgzhWjXXjCCMbLuLM0yBTiBZiVyr4C6dCGYmEbG2CPCmsMmMfYwTj
	 Og46b65bo6ezwdulbdiOr4XDHZMfwv2ushqhSgpVCKte1jw8SsVMqX+LHiTqZ8Ebjm
	 HkCl2c9C4YU2x8D2877V8wAJhAdd4HlKmdG/fCKJOEIAZ1SQd/ui/Yb8YE6zoDJfd0
	 CDAgIJTOkUJBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93636CCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176071739359.17702.13211986532532084680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdc0384b83c044192e43a96963149aa2da1fcffab4943396d6274be83bac0397
Date: Fri, 17 Oct 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760717393
