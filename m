Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5269113777E
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787907634; cv=none; b=aS+KHDqkoMiMxbMsxKtec/+jK714pAF2KRu9t7FXAXz1xhdrWv4SnoFarNvZelXEMvsyQTwdMR1yOMdmtrbgPM4PwetlWfh8CXy6whiJMa9NrqQSRJ1fDFzt0mXoCFwR31gtY7NEBuKJCXR1uj5X0wlOZY8Wb7QkV/pAuqeOmz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787907634; c=relaxed/simple;
	bh=oKfi1hDxFcUhLlyuY6g4JjjjPl6MonqZmTAPCl0t4wU=;
	h=To:Subject:From:Message-Id:Date; b=m25nIp0K9xF+9IAcXNQQ8aEE08jOhO0lFLnuv52pFJIpjqAiscL8uWXf/8QpI7EEGslm257pfb2/TTswJasOGbq9kMDM3HjuueMcJ5CHr3i14JX7lY80QHZm8373vH9xZJMnenXHp4DMybUodGGuuGdkH77AW84vfGpCvg/0+Xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TvVrXvqJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TvVrXvqJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E427AC19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787907633;
	bh=oKfi1hDxFcUhLlyuY6g4JjjjPl6MonqZmTAPCl0t4wU=;
	h=To:Subject:From:Date:From;
	b=TvVrXvqJcAR+UBWQJKnyVKVFaE3amL9jl+1UT+LPdD2zqJDYzpty0r1zoZcFXOAr2
	 fsK37YSgHjk3jw9e9/KAttrVFW37DYnM0Ii7KoMiDSSdjQRS6AlZD3pAQNbjFK1xB2
	 u2jbbNuzrap5Jznm8ggANSH5X9tfIAM8xHjhaKY/3IvIYa/MJIQgHexoiwwR1xfIGZ
	 XzKE4pmu3vALYR8Fs4aSn4mJSqKRg/Suhz9peh47IWegLlfuWSQyFX5CW3W6UqvgCM
	 9+IYVy8RK5lLnVaWx4GbMkypnAdDNohQtR7ke34JEiX/G5fpnn3ZAgW3ckFeJyZNhy
	 I1TNUL9qrgU8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7F63C61DCD
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178790763374.4221.4077259404750066015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56eae981d253660133937f9aae988bcc2189aef0d06d4c0d874b28be5cb05516
Date: Fri, 28 Aug 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787907633
