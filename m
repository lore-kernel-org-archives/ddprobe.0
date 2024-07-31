Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292E419478
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722405354; cv=none; b=T5H24CMJIwR85Mhmx+fwAUBWwd6Y+hhWn+yw9umny2/KJupIWaoMQh7TaJJ8VqZAf0RsvbOwFtPZIcJ/rIf+06D4l3ELKwgF1Wa+nyxeX2w9iYu6RkJslqQUxAVB1OzHmilmx0EJhy9tBWWfDgzxKgffibopTKxqHxMkH5J3Ssw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722405354; c=relaxed/simple;
	bh=4ZUVEdKbPTQ4aovRIhagyr7vOpze9Air2uN/iEDzQlo=;
	h=To:Subject:From:Message-Id:Date; b=sVwaM4XikcnmqcpoMOOk+7mCG9ByjtlhLK9dRpdV1AKHuinbLTtmfYdQNNm1J9+VZzYF0yPL0sZ2/9WmL5wSy1tsJVtCvuq05ba10aVrY2R9Q3c7ILVcbOneAM1CiKNveHaedzZp9gp9V4bAMZcVYR3uE8sGp9cFKk55iKVOo74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AA6bLSni; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AA6bLSni"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF190C32786
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722405353;
	bh=4ZUVEdKbPTQ4aovRIhagyr7vOpze9Air2uN/iEDzQlo=;
	h=To:Subject:From:Date:From;
	b=AA6bLSniX5tcKsp/8fyWtuR20ckvGQaQV4a9jLLhnIcXiA7J/0YDdT67T8xZhyb9Y
	 YDBDKFvDj55+VQ7AZ41JNUTcQYr4D+uwAm38nfv8Bl6kVSAeNutkY4LD0jcYdSt2Kx
	 VZaw1hGgOCa/9dNPkGadmFMNi7UfoG0UkR5HwjQEvuQDXSjUHAXrA5KQPFMTZw5J0D
	 KYph2ETELpxpiFk+FZ2qTVKFAPZJ1xF2UHugZ9R/p1CEz2rpoGSastIqg4/NUeQw9g
	 ie/zN5O/b41PSR2MKmL4mA7UWN+NkU+9JDBTPoJnvR9Vm103ekVba274GMygKiSlOd
	 yFMDNHh9V1LOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96691C3DA7F
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172240535359.23479.9984435511232311822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ed897cef48015174873d823231ca2103cf903d03c92e0bc9692a02d79e1029f
Date: Wed, 31 Jul 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722405353
