Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C259473
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724787954; cv=none; b=XnaaBVz7UPH/cGVR56dQZ70eM4XZVSRpXKO5MF20OahxJ98CCYnHcA7IMmdrovHOYIz1U8i703KXNx9wIcQeiHN0rRq6z9cVIqYLRButYFRdsIQw1qo2lGr2VCGbHuCvBpcnGtnB7gUbsc7nbLeEacM/9312FstaE+7XyCwIkCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724787954; c=relaxed/simple;
	bh=DCNIKheYWY9w57I5e11HhYlwr9wa/gSdRjk0q68ugJg=;
	h=To:Subject:From:Message-Id:Date; b=BYqmo5Qrpks/RDq/VEkcgnJ9FCNOZ3ZOWzxtfJL36v/ZJyzqaDni01jYxJOypoPkJTYIK6fVKL3F3QD9lX1G1MxDARjQVTdBEBMYzn1WupIroaat799+tVfMaQFLUOhSf3pdEmViq0MAP4rgHFHnOi/QuQeQxldLOnQz9/Vld84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mzbe59lF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mzbe59lF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5C3BC4FDF1
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724787953;
	bh=DCNIKheYWY9w57I5e11HhYlwr9wa/gSdRjk0q68ugJg=;
	h=To:Subject:From:Date:From;
	b=Mzbe59lFoM2RQxEKEnc7RXTymT/6lEcjwt2Ej0KowOLjZ212tx48wlizjMu/Uz+fF
	 zpb+Wzfl4i25HKB8anI+6WfvobkpaIJGCmwCoz4XM3/5sxZ8v60gEOMqkiL7FQlfaI
	 WqGBy3ZtprLIl8GewjkorRJMeVObHzYPaayyCo2BD9uBdZu37Q4vIdRobQn1fxXg0C
	 pV9hIyIKyU3XLnfLi7grzHrPxNAeUklcucG1qSRT9iVkn3wlrZ0MJpOBsxCiToDkW9
	 n0MVNd94oM0rdwnDbYyJYKbmtIbfhtFc3SBDBNlbT5HkDWSsnJdFLW0zouKfHp3G+w
	 s0R6VEuRIVlMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E969C54736
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172478795363.7131.17369679543605567069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4af91930d17634c8abe297abbd0af906e1dd4c23808511b13ef835d9a3a57f79
Date: Tue, 27 Aug 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724787953
