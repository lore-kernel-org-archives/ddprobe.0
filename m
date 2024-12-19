Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 105BF8F6D
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734645354; cv=none; b=kaKh3T2um/BisdyADhHPvcJt9jOkwpH+p7E5wIl2+L8o28eyn35aRJacvqAsuKkey6MF3q6NWvbaWbroQBC53dGKXzu16JoykkMZwbaRnoxq+Ma0aRJSUgeupuqnDYOAY8gK3f9SDIJsGLW5MDNcz+byrPzbOv/T6eg+5i6Wc5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734645354; c=relaxed/simple;
	bh=IqGqOxD36ZhfLA4Me3HD+NLFv10+Y0YqhxBqyfSnnjI=;
	h=To:Subject:From:Message-Id:Date; b=negwFudwrKqXsVajSa2PuIApoy092M8n7LnHe78UP6TJ4Wpgn94LfvrdFIKMXwiDTfKVtUqYYOtVb2HLtfLRGlYznQjd4kOIoBwN1EPWa4HvvVP4lglxsxrs/d/2YMCpobxDWwBQpu0Nj3IHZWfDA6CWDY96a4yFfM9sRaW7Z8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qMUdGM2a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qMUdGM2a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7110C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734645353;
	bh=IqGqOxD36ZhfLA4Me3HD+NLFv10+Y0YqhxBqyfSnnjI=;
	h=To:Subject:From:Date:From;
	b=qMUdGM2a+9UE5dueIXyWo4Qh3Dc4Mok6Jor8O/qdb8eqfUpLdyg63dmojs6vH5+eB
	 BHT50OQWFqcxl2Yhq2muBZK/Bj1Mp3GYLLrlARAIjWBy4IBUNDepYa7k4zR/JmqTRX
	 1O6mrHIsWY7sto9g1lVwmhUqYCWhtPHdQAq7a27Y3DZbHh1adCchXmo09b0YvasYJY
	 ZJSRaSRbFhKHEOk5kha7+RFznniiY1em3O2GW385G26BLxLT03roUZqMPn9UW8E4fL
	 genJdcB6sj5Zad32w7CONOwDqwtMYUzrm6v/x43dGch2GTP9fBoEshWJJJvgqnS3ks
	 RgduWohznIdZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990CAE77184
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173464535361.15710.8401914992143316063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79a0eeaa8463ac39d5ad15140331159c16cb5766916527e5372861551160bb74
Date: Thu, 19 Dec 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734645353
