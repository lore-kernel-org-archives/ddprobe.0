Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1141E23D2B4
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 08:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770021234; cv=none; b=rwpCaQEtj1MDMX3jr9og/nkMUA1pQDag7ljDav0yAPYZAYi3+lWBb9iyPx3ggA2qBSEh4ORtn5uulxRf+hkT0aZ0au+Dq6DDZMUivkPpVhyMjx0ISFGufjeMN2holXkBHhaka2CtYilUyXLRBvrdKYYtNpVrQ7z7YvYQtWkf1Dg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770021234; c=relaxed/simple;
	bh=1/NArIQHMzKPb16PALkMOe/EXIUtgVPDNJYj9VB1lKk=;
	h=To:Subject:From:Message-Id:Date; b=IQRDBitwJn07Y9j7mwFI3R06KJvYUWMPN1fCzm5cKegoWb0tme2TyAfL/oMOSHjFCt/9NzA0Mx6kUFOnxWWiDfTLhEYdymrRubfg38RsRBJ0ObpsK/dnH7mFKn0w3zXdtV6H5IACRB0suzRwtwyVkDB0RhjfE/MUh6In3xTr7IE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nJb+I4/l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nJb+I4/l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD37C116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770021233;
	bh=1/NArIQHMzKPb16PALkMOe/EXIUtgVPDNJYj9VB1lKk=;
	h=To:Subject:From:Date:From;
	b=nJb+I4/ljJiJND2AufwBMoEQ+w595ikdhRYPAli26CWaXs6SChfigfTOk71Ly/0Fi
	 pNIy3UXtlDyQtArUbpKG7pvkxFXxCGlcis5rx7VUZGnB0CL5/bplZU1PmGAnwOfp5/
	 i0dGMcP7hvnm/rn3SWE0K6dSO0JsSLi6YInYWxe89OKmpNF1rsOdq3+oVcpcq4k9pS
	 12/2Y0ywu3bBZOrGAFumGMjEt5qC3lIGytSsooRLkwouVOgJXy6/B2TA3+qHjHWrKS
	 oZggvy86h3vBH2NmR7FTSwl4NqhcEWyU6JsOCm1gN/G4eHIa5EslZsqbrCjm30drK2
	 GTTOpE0VgoXcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9818BE73146
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177002123361.7729.8630312853697173311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed3be6189be3f4b21da32e7f67d1b9feab70095b1b24bf58d24dac4883c77672
Date: Mon, 02 Feb 2026 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770021233
