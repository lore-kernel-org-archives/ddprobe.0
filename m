Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245C72AD04
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750610994; cv=none; b=KwNFHC1hcyTBpMaYPefCCVaoMBhElEH4arx0DV4gSi+eSRs1Sqn2+u+AO2ASFf18BzvfcpEuC0jU7eWWRqZr2kiF/FWOlAbMkxLcSagEneTJIQLWVsQSfCC1ROQXRRnVAXnU0GJ/cOvyTOtkPmFWzo+SUz0nEuTKhfqVqzE8zO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750610994; c=relaxed/simple;
	bh=MyyrBEGyrpn9DaiNTDNXkQ00pB5DksIplp01Geq/+wY=;
	h=To:Subject:From:Message-Id:Date; b=e3j1aNYEswHyISLRkWgOlDpiyMetHkSGDPQIJR03i3owUM3OeG84MpU45aHoy1HmT3xqV5eYOjo8siqGDY5PEy536My+qj1vZC7Rwtw/O5ofxl1CVHnhr9t94r47EJZ2kNKhGJt5maH64JplFNr9iVoP7IdL+A0S2uZEYlukeBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WBocFWql; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WBocFWql"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE96CC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750610993;
	bh=MyyrBEGyrpn9DaiNTDNXkQ00pB5DksIplp01Geq/+wY=;
	h=To:Subject:From:Date:From;
	b=WBocFWqlDs7IgggG6rPVWeJGNiAcX0xdmYhi22yz1wpLGT/os70426Jyqw+ciw1/N
	 0l/tX6LOQ1Bs/DkbP5dmlGW32xK4ED92f6aw6NgSdS5cny4fLArRx1p3JbUkVUtOn2
	 SFOavR9v+SgvUdS57Ktm6arltli1rdjwcpO6l3BjQEqQ4Si2k4tVn5ilf1rpyHgV9O
	 lA5srz1xBRhJbBgOFGu3KU90eIZN32BiJY9+j7HSoavnTIImANp7EtYSLiyhdgzBhD
	 BaYWwxZ3cAwxFpuqUzVFIvibBg5B3PYxufPoD7wUcw0tqJsoYTZZ8NnoXbl2lgge44
	 qMGwcvgksHm0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96269C7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175061099357.25387.2595815771978554625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 799c1c0d0349bb96bbd9083ac4d58e613fbdb39007b72ab52aec31cd7bf37581
Date: Sun, 22 Jun 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750610993
