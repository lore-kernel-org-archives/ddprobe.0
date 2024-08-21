Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2429A74040
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724253354; cv=none; b=cHezdy2V6ownnxCUplAT+Lb0ETAlFa8thxJAVJ46nfKgp/1YcaJO/pwTxLXdbav6jfMSFA6ez3HWttXCqZJ1AhGK9JdGBylwJcyEh6K8HTnlrXqgY5GALL3UbIONujxr2tdwzknatij2d9zgZgRnxxUad6PoElxLdiCWgjJpLwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724253354; c=relaxed/simple;
	bh=2X//N1tYiLGXdbgPIPrvV8+5rZHJEOPzBCti6yQxp1I=;
	h=To:Subject:From:Message-Id:Date; b=cAa6qtCR2G3A+kX/NBEtJPLyhWpdDn/sXu6Wl6osxn+oeCADwnn6NkstzOxY6YRKSIUDlAXtnAGPq8JeyFmVljiLaMRm/1WPWitUFSNvg41jTkwA4Zvv3rwWm/3fa0MMpT431QNsOfEB1kjocP6bN6x6kPFUzVeVM0r126Jo3LU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rw6PmSuD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rw6PmSuD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A218AC32781
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724253353;
	bh=2X//N1tYiLGXdbgPIPrvV8+5rZHJEOPzBCti6yQxp1I=;
	h=To:Subject:From:Date:From;
	b=rw6PmSuDuvkaw7bnwk5c44k+L85+hodgSUJKPt9F6aSSnd/3EFQP1oKbglBXCReON
	 MoRgKB+gHkK+YSv+p/2xY1LsrovFtZ96jWf0vVhGDDO/D75y00M7azmLDqjY2hQUbX
	 InarX3gM/8fdaeQhhexcSzRQmpmdDqRblSZNn5gGB76hdYjsbXrgkvOR9Gh84NHnfp
	 XNDt4uvpu1m07Xqsi5K/rhRXtHz9I5HlvKeL/5L3LMV8Q/izTPcH7S/TSJZ6gVoDYf
	 6gSQfaYMt/RBJlCl8IW981/xSo2M1xCIcZjblKd8Au7qR+ORqeepo5IFkYofsrxN2a
	 UUdyOxaFAg4YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C24C52D6F
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172425335359.15821.3457310622814428394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba77a7977615a4b89a92f40e0ea52385e014a4a3fbddce95c9a531c8c4b3fe83
Date: Wed, 21 Aug 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724253353
