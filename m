Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9A377642
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 05:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707197297; cv=none; b=BL2D0BcpW6O8H2OANuwqOaMzQpUW9YA6O8/Gtn+MczaVJncj55jeahPKh4dlS9oIUWJ1M9t86lC0gO5BBok3PSdpFjTHG9h3IuKcHsND6pk/XhS3n9sVPqcB1qFCtaU4jCIzFbFTYlh8vGrBVJ7aYbla5G6WRvKCRz8sEspR9Ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707197297; c=relaxed/simple;
	bh=jOAlEs4LFqNPhHuTraAzdWicMZWhPSYN8RwyGbQR06g=;
	h=To:Subject:From:Message-Id:Date; b=FXtE/IR2q+R5AM1FTtkRovmbYa7HnlF4GP+1n9NDT3FovzyabEkgzrPxMwch7HWGpVz368agJuhAeronjgBKC9t/VBlLuZ53gsJJzhvcisbaztfW59XF9JglOXopkgv9I0xPyGhRZzXjwnYAMjV8c6OLLisiPpr2OTAkuVKddSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hxp1kR3z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hxp1kR3z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83D2AC433C7
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 05:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707197296;
	bh=jOAlEs4LFqNPhHuTraAzdWicMZWhPSYN8RwyGbQR06g=;
	h=To:Subject:From:Date:From;
	b=Hxp1kR3zZ+ZiCm3gVqYjdmhgPrhJIVxFt9Ct7ItecRAtGjJykZflra3XKddrv1tIl
	 +NzpDYlFreSpkUJrfDcuKJP7bIwzyfaF4bgEQ3YSdTCJvooR3j4D9w3NqyFz+7k7ti
	 iQ6Ai4tDJBd+b8uGDZgfh5aNbymusBj2ZrEPlyj/vwQo/10IdHQliQZoNUJqkTKPfR
	 SIsg8/2YRgXbl5j7R3aqzb2qHV25msNny0OMORi96U99MDCcVlBVB+BIrbtZZL16b2
	 nZCr9JNS+LeHhSW2G/pN5jXNbrNuplI7gh1FdRAgZuelmaCJPGniz/KJsAki2a0rAA
	 T2NlhasctIaOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 621BCC4828D
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 05:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170719729639.19005.16798138429928643210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f9f6510f3dd3e8a3a5b0594dd70823c01da50dd9fdae8211e25ff7828c070a5
Date: Tue, 06 Feb 2024 05:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707197296
