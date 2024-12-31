Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F8526EB7D
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735671954; cv=none; b=Ve5zmIL6kbrHffUZk4DtdW6tfA3ap9+epBdLi9mftMiCOmJmxpUBADrwjcJTUQ+TPuNJ9/mjA54k4EJVc3HKonW8ZscUh27Sq3gKLsPvfrHzMNzfatP92aro8mFoyfcfT/MGhBJlvsHAyMM93A4yZAJ7cxRLMzoCk3gZRcdPcIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735671954; c=relaxed/simple;
	bh=5rdnj0D5ag8HGSLVZSv0LCTlQBUosZxYlaFRDMeYRXc=;
	h=To:Subject:From:Message-Id:Date; b=oV/ZuDXt6YgnWkt1d+npFIwRebH7cldcdPfNdnLDXS3Eopr2IPfbFw63h5rd70nMbxck0Av9mv2v6mKVsEZamegjBOE3PWEqDjYfKGj4hki+a5LVJKoRvTgMCv5RLbKij1jEzVAFIIb98s0FduX84VAtQ40rVHLkOzi9zuTCoUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I6KOyN0G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I6KOyN0G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD8BFC4CED2
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735671953;
	bh=5rdnj0D5ag8HGSLVZSv0LCTlQBUosZxYlaFRDMeYRXc=;
	h=To:Subject:From:Date:From;
	b=I6KOyN0GYNwATCXIlvCc+YErOkvY/YfXvGBLmLpYbzW0ibaT+ur8NVDQumoHaWlFZ
	 1+ltu/h4RHhe5fKqeeSq5T1/a+VZgYzu6T1e2aNeVKv83+76UpsZhkD7MKzWR+nCpt
	 rHxVz/lB2F5O/s8kvtg1tSrHSxG/ehI0FalTl/GNI/6idaSM/a9004a+JihMpawDM8
	 9M2IOAJf6LPTOyZxHRym+07KS/nN30u6j1Jmu1ZHYhkUsslRxk2WyNI8gZnRCDG/pF
	 JIf0TOQqkrrBdVjUAvSD9jTBmQNIPeGdrR9OHknKI1gtyhIgJe4XY2gWGmEQhh6SFB
	 0nvKaSil4vzEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FA3E77188
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173567195358.29355.3879013485392517704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afaac698b1cd76742e0d88f98e8c3c0b0c3fa4a5903762e2e31b3b35e8c9cf2b
Date: Tue, 31 Dec 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735671953
