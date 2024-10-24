Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E24422B641
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729811754; cv=none; b=VnALP0yQRZdDjO4GQvqO1LQX2HzTwwyhuKhmmNe6xP27CdSlPmcQnseT5MTvV0iAlLB6cyJIKZ/LwMyaYGLrLfZ2FAJelWOWiDftDEpYCSawRUNSEBvqkmOSkJrINpbFb66K7+l2yszl6uWMm6i67PWRMb/dv0UMQJcViZutobc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729811754; c=relaxed/simple;
	bh=7d+NkiunVaMSKfxqX3mJIDbV8lcI9c53k/MR67gnnI8=;
	h=To:Subject:From:Message-Id:Date; b=Vh3E207PlR0OdAZRT1dskrKA8w+pybtSpq+qVEcHpGO7ncM7fOy59Lpz+0GApK5K3yuW7NmAjTM20mqzrvDsRV8elrtXO/pToI32/PvZhFVXuMsVyjBTY/QVhtZnw9bL3S33dmZPQ3xtvR4NlCpEZp0iXFdGBR7eXUzNhYXQdyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZQDR1f7j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZQDR1f7j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B239BC4CEC7
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729811753;
	bh=7d+NkiunVaMSKfxqX3mJIDbV8lcI9c53k/MR67gnnI8=;
	h=To:Subject:From:Date:From;
	b=ZQDR1f7jaZtS50u+DZS4U7t2O6zcnyg6zpkoQBhbS2uO+Q9YX7RmuG2YXwVa239Sn
	 rvFi4xY2CbcM9xDsVAOGTjCiFBvh+dY3/QpX65Ipn/Jhfa1cth505Fbtcu06sP4LY0
	 teonQ34S/GOKBhRmmewFMD1F/BGgUxhiSDsMs/2avDzrLXTlsyv8J1uombqlHfUFKU
	 GYsk3njM7uMJgALa4fiHiTn3EJAfu4PzHI9uqaKu7lcxJmOeUnZ6tCX7rmP9XNcGpP
	 k/vJQompzuSGNffLbXEA+Mc6by9eIRRMqn4WodyKZYPEEVlW7cpW982E/sM8bsLVny
	 exLA0AP/8f97A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E68BD1038E
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172981175360.15876.17816636681809521831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45adae01b596bfad718c1fb778bac1bf31a6269a54b706d1d734a8b834605302
Date: Thu, 24 Oct 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729811753
