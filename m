Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C095176AA3
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723735554; cv=none; b=I0GZsyoAEs7mTLs+LGas5C9RCJ+075Bt1u95StltBPDUsnoiOpoGIumZC8+6V4aOmArENTeZvXnczLosJKtB51ON+drkue2uIS+7mm+zmh9JLxobUiJ2WvOhYQ7rIgzq01Rf0FZEhdwZcOkHRlLpFooKhB71/wA+j/M/PPZD/UI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723735554; c=relaxed/simple;
	bh=MnGEg0GnjnB3q/2CX8BwXSJsbTnmX0ESgkC59lL2LqU=;
	h=To:Subject:From:Message-Id:Date; b=gfmfgu93hSEy8PKol5AQYXFcV4u0d7FjwsQoiZgsX3ZbqBcMnF/guGI9DeljwGP/WhghKrP9YkZ8C1yuLyYdp6YMYYzAaHkOuvsfojU+C92s533KT/XR/F9A5OXyO4wm7LGmqaE/lnv8NsF7rw5BKUMr8RkvdFi/JMQaDlWXtBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YshkO+fp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YshkO+fp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC00BC32786
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723735553;
	bh=MnGEg0GnjnB3q/2CX8BwXSJsbTnmX0ESgkC59lL2LqU=;
	h=To:Subject:From:Date:From;
	b=YshkO+fpAPNsJPnXDq5tXxPSZ7Ya0sSIsm9iSokxIe1hFFZevbsbNZwcW2G13AxwG
	 S7tsviL6vzkNmFObAHMbklmmA5nVqoUSFd89uc/9OYZ/BwA/97FmHpm401hyKB+LE+
	 1WXm8jmgcPbxeN0QFHaCPCa+z5vqb0gIP4FUft8vAi8aDLp3ieEdayxs/GZwp2f/q1
	 px0GaYptSm3r/MFGulhGAiDchPAatmkKrkj6ExGhs4vftyIQhUmheVRtGLmEL8UpyS
	 74TvSwq4rFgKBLmVKjQziorCMBzbbMAHWE74S4AfOiFSNBZiDdL+MA8HZZC8syGOtg
	 H1/m2o9O/pQpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD17C52D7C
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172373555369.948.5468502709467973677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8452b464323452ea093868e19f5286996f2b159a7b46b07e74076b570dda0d2f
Date: Thu, 15 Aug 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723735553
