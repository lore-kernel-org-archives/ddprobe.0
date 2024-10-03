Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 171BD78289
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727951754; cv=none; b=kDKhZ5GFJEkW/8ns7Aiq3xp6I5a3bq80D7FcGIHkt/CAuGJXwoiQd6O8EXCh5swG3P08+4d7q/QaBUADTzvP6KXSCwY/NGBm5T3VX6niMe/52jtz3xOtZNq4bUmVtKI6kXO2HogELM7mlizzQ9zlnfoy+pLvVbcPZHhq6zd16t4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727951754; c=relaxed/simple;
	bh=hS+Zfluot6xG6R6mA/Vmp0mGaZ2OS3UNSiJQdslfjzI=;
	h=To:Subject:From:Message-Id:Date; b=aZlY0E7vi78fD3eeQXPrs45hh3tBXu7FHX/8KdMYziWT1SaJl5yrdmDjgxKc3CLWZjefiilBOmvi5jIZnuuYcXimXxIs0IjhxvjlUuX+b87cxudS1VTwMbb3UDMSUOThAq28m/F6+h38FaD91dKtkAlAW2upxOFIEcdqZ8Tgqws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gNr4smuX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gNr4smuX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD0A1C4CEC5
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727951753;
	bh=hS+Zfluot6xG6R6mA/Vmp0mGaZ2OS3UNSiJQdslfjzI=;
	h=To:Subject:From:Date:From;
	b=gNr4smuXaX2SbAa0GHV7VPqk0WmnBmrUfiU2Txt+L3DipT694ivneMwmPU/T3BWLK
	 mCi+Eiat6ANm/+3M5XTogYdvFaWT13oR4z+d8OR/TLMOtnSTeBc9JktsDC6vq4TQml
	 eF4ImccGmmBqILyYDPLUIBvmKrrCKbqGGXcY982+DupO9zIVsrQpHgQAx7/oLQCVH8
	 ERqKN5fqERDPbfYAN1Nan+1TH1jg941Q9qOTBtvD8l7x36/FzVjTju+uiy7xPryCeU
	 u9N4Wpta8WBTAkyEBbZ44lrHi+Nbycf17M7StkzOocFTnN9+FXHJGhYV6T3PkXcgND
	 PZQ/QOq394LmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986D7CF8579
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172795175361.19805.3288185797012542810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42c85b70887425daf2e10474d786cf8ea108ed6494808191407a4a4022682cde
Date: Thu, 03 Oct 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727951753
