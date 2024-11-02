Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FAB945016
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730543154; cv=none; b=clLvweKqaCcleXhlXODO+24xxw7TncYEVqGLlmexnQQIW0qc9IBeEjNfpxnRyqtAJwPPJK7L7WPHqFZ0/ZWz4Oo26vUrfBTS1RE27nl3rfo88a1OiEoAuzvs/BfYkUPtBxbEAednknA8o6jt4BvpyrekdK02FMRPwP1PSFtpaho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730543154; c=relaxed/simple;
	bh=Vhzh9oA2MqNhlT/UyCBSOy2kYUsbLLd2LxK7N2qcjRY=;
	h=To:Subject:From:Message-Id:Date; b=q3kq5g0x5asYubgvl3XsITRw9ATUfzNdQ1eK83s1f7c0jzTg0+LAe+AeBKIFfGubjgeL3rrCVlUi1Ee0Jlts5Sbut+5HPJsyU7inWBr8wpRB+e/PfmtdyKRAhoT21hgsCk4e7CHSdWxk8SYHd2WTCM8/wxBr340fTFiOP3+MbGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WKY56q9z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WKY56q9z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B702DC4CED2
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730543153;
	bh=Vhzh9oA2MqNhlT/UyCBSOy2kYUsbLLd2LxK7N2qcjRY=;
	h=To:Subject:From:Date:From;
	b=WKY56q9zDdZ/BO4OpUPl7mb0aZJGdnvUZTVDeVX04WHXKciRP3r/LTjoaesZ7yKSJ
	 WQT1XeGDZHvBOY5PrwmkpCJqMwDMzL1NULhSlxOU4S0/1WY1HdzW4j8OpkzoDncD9I
	 8qEfQlLscEBrak0CrXDgQmXGZWW3BP50A9cPEPqTTJkgtWNy4FQYy/P+gd2o3XXs9a
	 9Dmi2spP+XSGbWLaNT3HSb+sG1/CGS14tOx6krDa6wJsmbm8C+8NHOW0O9IziZAuix
	 C0HHxLEMLev1rFhBKtfbgw91r4hZ7cqIpjLsPNsQYYB5ejWYkG9f2Xeqrpqb1b9u/C
	 g70/E/FLFCJlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2109E677F5
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173054315362.18163.13868023733639683865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eeaf262c02f4aeca5782e55714cd9606164ccfc92dc935f6e561ba9377c7b00a
Date: Sat, 02 Nov 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730543153
