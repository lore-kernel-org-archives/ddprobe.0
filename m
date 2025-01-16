Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B4D71D47BC
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737020754; cv=none; b=JxBuWCC/tyPjU00o+i5diNxV9VOrveMMuywXxl9453BQMUlvmN0/ktcrbB4MBa9UWj+MCMAphKhMWaRGVohLn6GM/nu0r+K3Y81/KJBbORwgSFAqws5mNniB/St0atEndtD4tHVZwDLm+I4l5dpBROzX8qqbWouxuWEsah+rqLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737020754; c=relaxed/simple;
	bh=9X+YQUAnfmPmkYTHCS+asxMOQPJ6smPmulQPCgcFKrc=;
	h=To:Subject:From:Message-Id:Date; b=sPNbEmCcUty4ehyM+q5gPK1Ju2Rel16z8yE2DrLIbEqgzphUueffqbxBV/M/kKw21l0X+HxDkDkLII4pAYgf4i7Jwm9yuYOPuIrFhu8Pcsrrxj82ImDY35m1CQ6S3Mdd+/GDN4OTAhQD6aCHj7Gxr7/ReW7Q6soUJbcje4KB+iY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SQnXTi94; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SQnXTi94"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F163C4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737020753;
	bh=9X+YQUAnfmPmkYTHCS+asxMOQPJ6smPmulQPCgcFKrc=;
	h=To:Subject:From:Date:From;
	b=SQnXTi94seCTr4eliYpy4BJJC+nV3pIffvDQSUsLEIVp9Eh7ufbEVuK6f3IcnCeO3
	 m733LM1rXIT6+TgAcoUJJ8lZoGgEOQqD/MID/7ZHIc1GBQ5Zwg2Sm/15YnXQHFC0Oz
	 4oFa1fnpay/50UGWEF8TcFVbpJHs9QJYSqCIPN7Q7g85qZ78NGflgsjRfosUdGsDRq
	 v5opt5HJ0nH3icxRdPscQyAT2AQdWzPUlUszPKPar5p00JeQvj4CONcXgslSUnSY2Y
	 2PYeEWlEJQcw8OVjpZEIbYMfq9WMfWKicnvj+zv//4dwCkoe6STJitBP0EB+vhkPLR
	 ZJqHt3fKFEcVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6C3C02180
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173702075357.19924.6248708875510250658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7150573b51d06e41f4286bfd937802ec6ccd6ede84fef5dc1a0ea098eb1885f6
Date: Thu, 16 Jan 2025 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737020753
