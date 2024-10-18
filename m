Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 171C6126C03
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729220154; cv=none; b=bQsI/5EmuILke/Nps0CjZ0z4KmeIHdGAVF/1mb3DVNFsiWNWI7Hn6O60348UOC9nNnx8qjKSuFvi2c620GEt2QPaGPLGb71CYR5tN16zcZ+J10kp1wPdrSDSQP7rjCnjFuufRaxyC74HIZjjSZUXmeQzvswylwPpynMRi0BOmXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729220154; c=relaxed/simple;
	bh=6/IQVXOPWgYTkakHZniSvH8vc5y9iNRNUWjYPt3rJlw=;
	h=To:Subject:From:Message-Id:Date; b=qCMeykV4oq8nq3hIZjyfUFtQCwoHQHuhluenX6g/SxAU0Y79x63arwyJiOuJDzgrWBPM1rZhEG+8BmVPJAvq+14GkazSZ2s5/Fg5IPe//WAgLNcAksW/jN7F+T+XGYUaRnc8MbHLA2Zw3rrOAHSAl0yZaPAw/BIdflmQPztjQeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iz8UYL37; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iz8UYL37"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A389AC4CECD
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729220153;
	bh=6/IQVXOPWgYTkakHZniSvH8vc5y9iNRNUWjYPt3rJlw=;
	h=To:Subject:From:Date:From;
	b=Iz8UYL37efcaxcXYBt7L4cUnXK4U8nkEBUYsYSLMjPZkkvuaMhyL66iPlP5fLKiXQ
	 CX2JZzgV9bCpu8iyUQt9YqAvCXXC42qLh4G+eF63m8SQACP3R1YJdf/v0cj3huIoAM
	 QuTjWc3hmViaMslhn3uomvyTLMdHNWSou+UiimxiV/D89s0vfQNooceWhlwcIXydZZ
	 Y3cJDGGtHUKVT/OoWrQPv/MXUBKXaEXsqUTiv1GtXb7trbWRLYa3hrZks0Arypp5sj
	 q0MOmlEk/5LEKE7N64sU+o5jSnqX0i/vK4tyh0k3xOLbr6LMS/ikhaHFUJL5ufzi1L
	 1VNUJMKpgerhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96281D3C544
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172922015359.5641.851214616890617848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e290ff23c8e23693df057782ce68c9363bcb134ef05e516450ee840625b992d3
Date: Fri, 18 Oct 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729220153
