Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45EC11891AA
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747839594; cv=none; b=GUolJdPK5ijhUwUURbcvoVD3HsXgQHtF8lFYkRAlP2NKjt1vfozNOMnxAkSp4N5AlX0NTEtdTbi8zYvZlwZzwWhW4XKTXlI9OcHghXHqQo1iuyfuQs30aR6/QPXPzvYr/StqfQtoB76C70mNTVAtnQeNhUpqk9NI/t0ShOIh8js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747839594; c=relaxed/simple;
	bh=xL3GO60qhEgX0MzupujDRg+jXyir2hE1huPILmHvyGc=;
	h=To:Subject:From:Message-Id:Date; b=Xv0UV6V72ZufNEWwfszvxmZf9TVMRQvvmjkoDIhpdRXZH5bB+PnOCFi4ullYZALFxvKBCzRn5S1eXgcFrkIB5jejYNDwwgpOzU3is7TQPlg34fpihkjKF77w2OC1I3NiIiXpF0qHZjZGG3b4KGr/w/zemz6BoVycdzQc5lZyM6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a/oZsjAH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a/oZsjAH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A9FC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747839593;
	bh=xL3GO60qhEgX0MzupujDRg+jXyir2hE1huPILmHvyGc=;
	h=To:Subject:From:Date:From;
	b=a/oZsjAH0uDpftAn3Tr3AdlV6FcwPR9/hVB8oX8fl0BvhzEMmg+PHltAcDTtVw/U5
	 sUKjAPrXfiOSVeCOwVkL7bmm4rgAzPnWuKJZmx+N4HRuZ9AewGC0/R0cLW6PBWiaUW
	 JmzOyusBwEyDr9HV/gB1VuTmNvvPZPd3DAsmwvHOfWGYrJDC0TEXfppzOgGmBKFvON
	 Sim2Nj5KXIBWeKp6lXW7JjqeSLA0brWENjY7W/URp919ryu1DwATjiJbS/dzCvJ1/m
	 AwuOhxOrlNO47klC5/Q8CsDQH8lttvu4L5mfXWq1xhW6bb6ZB7CcUmcJfoQV7BOtIE
	 kPMin7LX16kGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF32C54E71
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174783959358.15956.16449895631595413120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1a993a7d94fc6b68b57ad374ad632781a0e83f75cc61ee612312858a87b02cf
Date: Wed, 21 May 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747839593
